unit uFrmDataHora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmDataHora = class(TForm)
    pnlImagemDataHora: TPanel;
    pnlMainDataHora: TPanel;
    lblDataHora: TLabel;
    lblConteudoDataHora: TLabel;
    imgRelogio: TImage;
    Timer1: TTimer;
    procedure btnFecharClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataHora: TfrmDataHora;

implementation

{$R *.dfm}

procedure TfrmDataHora.btnFecharClick(Sender: TObject);
begin
  frmDataHora.CloseModal;
end;

procedure TfrmDataHora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := false;
end;

procedure TfrmDataHora.FormShow(Sender: TObject);
begin
  Timer1.Enabled := true;
  lblConteudoDataHora.Caption := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
end;

procedure TfrmDataHora.Timer1Timer(Sender: TObject);
begin
  lblConteudoDataHora.Caption := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
end;

end.
