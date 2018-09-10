unit UnitAbrirTelas;

interface

  type
    TAbrirTelas = class
      public

      private

      published
        procedure abrirCadastroUsuario(acesso: integer);
        procedure abrirCalculos();
        procedure abrirCadastroSolo(acesso: integer);
        procedure abrirCadastroAgrotoxico(acesso: integer);
        procedure abrirCadastroLocalidade(acesso: integer);

    end;
implementation

{ TAbrirTelas }

uses UnitCadastro;

procedure TAbrirTelas.abrirCadastroAgrotoxico(acesso: integer);
begin

end;

procedure TAbrirTelas.abrirCadastroLocalidade(acesso: integer);
begin

end;

procedure TAbrirTelas.abrirCadastroSolo(acesso: integer);
begin

end;

procedure TAbrirTelas.abrirCadastroUsuario(acesso: integer);
  begin
    if FormCadastroUsuario=NIL then
      begin
        FormCadastroUsuario := TFormCadastroUsuario.Create(FormCadastroUsuario);
        FormCadastroUsuario.Show;
      end;
  end;

procedure TAbrirTelas.abrirCalculos;
begin

end;

end.
