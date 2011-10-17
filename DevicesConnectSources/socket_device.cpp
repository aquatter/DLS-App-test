//---------------------------------------------------------------------------


#pragma hdrstop

#include "socket_device.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)

ServerSocketDevice::ServerSocketDevice()
{
	Init();
	socket = SOCKET_ERROR;
}

ServerSocketDevice::~ServerSocketDevice()
{
	Close();
	WSACleanup();
}

bool ServerSocketDevice::Init()
{
	WSADATA wsaData;
	WORD wVersionRequested;
	wVersionRequested = MAKEWORD( 2, 2 );
	int err = WSAStartup( wVersionRequested, &wsaData );

	return (!err);
}

bool ServerSocketDevice::Connect(sockaddr_in addr_in, int listenConnectionNum)
{
	Close();
	socket = ::socket(AF_INET,SOCK_STREAM,IPPROTO_TCP);
	if(bind(socket,(sockaddr*)&addr_in,sizeof(addr_in)) == SOCKET_ERROR)
	  return false;
	u_long mode = 1;
	if(ioctlsocket(socket,FIONBIO,&mode) == SOCKET_ERROR)
	  return false;
	if(listen(socket,listenConnectionNum) == SOCKET_ERROR)
	  return false;

	return true;
}

bool ServerSocketDevice::Connect(int port, int listenConnectionNum)
{
	sockaddr_in addr_in;
	addr_in.sin_family = AF_INET;
	addr_in.sin_port = htons(port);
	addr_in.sin_addr.S_un.S_addr = htonl (INADDR_ANY);//inet_addr(asIP.c_str());
	memset(addr_in.sin_zero,0,sizeof(addr_in.sin_zero));
	return Connect(addr_in,listenConnectionNum);
}

bool ServerSocketDevice::Accept(ClientInfo& clientInfo)
{
	int len = sizeof(clientInfo.addr_in);
	clientInfo.socket = accept(socket,(sockaddr*)&clientInfo.addr_in,&len);
	bool bSuccess = (clientInfo.socket != SOCKET_ERROR);
	if(bSuccess)
	  clients.push_back(clientInfo);
	return bSuccess;
}

bool ServerSocketDevice::Close()
{
	if(socket == -1)
      return true;
	shutdown(socket,SD_BOTH);
	return (closesocket(socket) != SOCKET_ERROR);
}

int ServerSocketDevice::ClientsCount()
{
	return clients.size();
}

ClientInfo ServerSocketDevice::GetClient(int index)
{
	return clients.at(index);
}

void ServerSocketDevice::DeleteClient(int index)
{
	clients.erase(&clients.at(index));
}

void ServerSocketDevice::Recv(const ClientInfo& client, char *buf, int numberOfBytesToRecv, int& numberOfBytesRecv)
{
	numberOfBytesRecv = recv(client.socket,buf,numberOfBytesToRecv,0);
}

void ServerSocketDevice::Send(const ClientInfo& client, char *buf,int numberOfBytesToSend,int& numberOfBytesSent)
{
	numberOfBytesSent = send(client.socket,buf,numberOfBytesToSend,0);
}


ClientSocketDevice::ClientSocketDevice()
{
    socket = SOCKET_ERROR;
	Init();
}

ClientSocketDevice::~ClientSocketDevice()
{
	Close();
	WSACleanup();
}

bool ClientSocketDevice::Init()
{
	WSADATA wsaData;
	WORD wVersionRequested;
	wVersionRequested = MAKEWORD( 2, 2 );
	int err = WSAStartup( wVersionRequested, &wsaData );

	return (!err);
}

bool ClientSocketDevice::Connect(sockaddr_in addr_in)
{
	Close();
	socket = ::socket(AF_INET,SOCK_STREAM,IPPROTO_TCP);
	if(connect(socket,(sockaddr*)&addr_in,sizeof(addr_in)) == SOCKET_ERROR)
	  return false;
	u_long mode = 1;
	if(ioctlsocket(socket,FIONBIO,&mode) == SOCKET_ERROR)
	  return false;

	return true;
}

bool ClientSocketDevice::Connect(AnsiString asIP, int port)
{
	sockaddr_in addr_in;
	addr_in.sin_family = AF_INET;
	addr_in.sin_port = htons(port);
	addr_in.sin_addr.S_un.S_addr = inet_addr(asIP.c_str());
	memset(addr_in.sin_zero,0,sizeof(addr_in.sin_zero));
	return Connect(addr_in);
}

bool ClientSocketDevice::Close()
{
	if(socket == SOCKET_ERROR)
      return true;
	shutdown(socket,SD_BOTH);
	return (closesocket(socket) != SOCKET_ERROR);
}

void ClientSocketDevice::Recv(char *buf, int numberOfBytesToRecv, int& numberOfBytesRecv)
{
	numberOfBytesRecv = recv(socket,buf,numberOfBytesToRecv,0);
}

void ClientSocketDevice::Send(char *buf,int numberOfBytesToSend,int& numberOfBytesSend)
{
    numberOfBytesSend = send(socket,buf,numberOfBytesToSend,0);
}

bool ClientSocketDevice::GetBufferQueue(int &num)
{
	u_long numberOfBytes;
	int numf = ioctlsocket(socket,FIONREAD,&numberOfBytes);
	num = numberOfBytes;
	return true;
}

