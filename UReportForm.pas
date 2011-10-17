unit UReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VirtualTrees;

type
  TReportForm = class(TForm)
    VirtualStringTree1: TVirtualStringTree;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportForm: TReportForm;

implementation

{$R *.dfm}

end.
