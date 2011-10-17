//---------------------------------------------------------------------------

#ifndef socket_deviceH
#define socket_deviceH
#include <Winsock2.h>
#include <vcl.h>
#include <vector>
#include "DevicesCommonHeader.h"

using namespace std;

//---------------------------------------------------------------------------

struct ClientInfo
{
   SOCKET socket;
   SOCKADDR_IN addr_in;
};

class ServerSocketDevice
{
	  SOCKET socket;
	  vector<ClientInfo> clients;
	  bool Init();
	  bool Connect(sockaddr_in addr_in,int listenConnectionNum);
	  bool Close();
	public:
	  ServerSocketDevice();
	  ~ServerSocketDevice();
	  bool Connect(int port, int listenConnectionNum);
	  bool Accept(ClientInfo& clientInfo);
	  int ClientsCount();
	  ClientInfo GetClient(int index);
	  void DeleteClient(int index);
	  void Recv(const ClientInfo& client, char *buf, int numberOfBytesToRecv, int& numberOfBytesRecv);
	  void Send(const ClientInfo& client, char *buf,int numberOfBytesToSend,int& numberOfBytesSend);
};

class ClientSocketDevice
{
   	  SOCKET socket;
	  bool Init();
	  bool Connect(sockaddr_in addr_in);
	  bool Close();
	public:
	  ClientSocketDevice();
	  ~ClientSocketDevice();
	  bool Connect(AnsiString asIP, int port);
	  void Recv(char *buf, int numberOfBytesToRecv, int& numberOfBytesRecv);
	  void Send(char *buf,int numberOfBytesToSend,int& numberOfBytesSend);
	  bool GetBufferQueue(int &num);
};


#endif
