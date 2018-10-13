program ProjetoAraqua;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadastroUsuario in 'UnitCadastroUsuario.pas' {FormCadastroUsuario},
  UnitSolo in 'UnitSolo.pas',
  UnitAgrotoxico in 'UnitAgrotoxico.pas',
  UnitLocalidade in 'UnitLocalidade.pas',
  UnitCalculo in 'UnitCalculo.pas',
  UnitCadastroAgrot�xico in 'UnitCadastroAgrot�xico.pas' {FormAgrotoxico},
  UnitDataModule in 'UnitDataModule.pas' {DataModule1: TDataModule},
  UnitResultado in 'UnitResultado.pas',
  UnitCadastroSolo in 'UnitCadastroSolo.pas' {FormCadastroSolo},
  UnitCadastroLocalidade in 'UnitCadastroLocalidade.pas' {FormCadastroLocalidade},
  UnitCalculoResultado in 'UnitCalculoResultado.pas' {FormCalculoResultado},
  UnitUsuario in 'UnitUsuario.pas',
  UnitLogin in 'UnitLogin.pas' {FormLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.Run;
end.