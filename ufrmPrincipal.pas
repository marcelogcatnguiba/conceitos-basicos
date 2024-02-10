unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, System.UITypes, uFrmDataHora;

type
  TfrmPrincipal = class(TForm)
    pnlTitulo: TPanel;
    pgcPrincipal: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    gbCaracteres: TGroupBox;
    lbCaracteres: TLabel;
    edtCaracteres: TEdit;
    ImageList1: TImageList;
    pnlControlPage1: TPanel;
    listaDeOpcoes: TRadioGroup;
    btnSelecionarLinguagem: TButton;
    lbListaDeLinguagens: TLabel;
    opcoesSelecionadas: TListBox;
    btnLimparSelecao: TButton;
    pnlControlePagina2: TPanel;
    btnProximaPagina: TButton;
    btnProximaPagina2: TButton;
    btnAnteriorPagina2: TButton;
    mmObservacao: TMemo;
    lblObservacao: TLabel;
    pnlControlePagina3: TPanel;
    btnPaginaAnterior3: TButton;
    btnLimpar: TButton;
    btnSelecionarTudo: TButton;
    btnRelogio: TButton;
    procedure FormShow(Sender: TObject);
    procedure edtCaracteresEnter(Sender: TObject);
    procedure edtCaracteresExit(Sender: TObject);
    procedure btnSelecionarLinguagemClick(Sender: TObject);
    procedure btnLimparSelecaoClick(Sender: TObject);
    procedure ProximaPagina(Sender: TObject);
    procedure PaginaAnterior(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSelecionarTudoClick(Sender: TObject);
    procedure btnRelogioClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
    {$R *.dfm}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  pnlTitulo.Caption := 'Mudando o titulo ao mostrar';
  pnlTitulo.Color := $00B9FFFF;
  pgcPrincipal.ActivePageIndex := 0;
end;

// Mudar cor do edt para quando entrar e sair de focus
procedure TfrmPrincipal.edtCaracteresEnter(Sender: TObject);
begin
  edtCaracteres.Color := $00B9FFFF;
end;

procedure TfrmPrincipal.edtCaracteresExit(Sender: TObject);
begin
  edtCaracteres.Color := clWindow;
end;

//Controle de paginação
procedure TfrmPrincipal.ProximaPagina(Sender: TObject);
begin
  pgcPrincipal.ActivePageIndex := pgcPrincipal.ActivePageIndex + 1;
end;

procedure TfrmPrincipal.PaginaAnterior(Sender: TObject);
begin
  pgcPrincipal.ActivePageIndex := pgcPrincipal.ActivePageIndex - 1;
end;

// Selecionar linguagem Aba 2
procedure TfrmPrincipal.btnSelecionarLinguagemClick(Sender: TObject);
begin
  if listaDeOpcoes.itemIndex >= 0 then
  begin
    opcoesSelecionadas.Items.Add(listaDeOpcoes.Items[listaDeOpcoes.itemIndex]);
    listaDeOpcoes.ItemIndex := -1;
  end
  else
    MessageDlg('Selecione uma linguagem', mtInformation, [mbOk], 0);
end;

//Memo
procedure TfrmPrincipal.btnSelecionarTudoClick(Sender: TObject);
begin
  mmObservacao.SelectAll;
  mmObservacao.SetFocus;
end;

procedure TfrmPrincipal.btnLimparClick(Sender: TObject);
begin
  mmObservacao.Clear;
end;

procedure TfrmPrincipal.btnLimparSelecaoClick(Sender: TObject);
begin
  opcoesSelecionadas.Items.Clear;
end;

procedure TfrmPrincipal.btnRelogioClick(Sender: TObject);
begin
  frmDataHora.Show;
end;

end.
