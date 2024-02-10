program Conceitos_Basicos;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  uFrmDataHora in 'uFrmDataHora.pas' {frmDataHora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmDataHora, frmDataHora);
  Application.Run;
end.
