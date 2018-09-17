unit UnitCadastroSolo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadastroSolo = class(TForm)
    panelFundoSolo: TPanel;
    GroupBoxSolo: TGroupBox;
    GroupBoxLixiviacao: TGroupBox;
    Panel1: TPanel;
    DBEditTipo: TDBEdit;
    Label1: TLabel;
    DBEditProfunCam1: TDBEdit;
    DBEditProfunCam2: TDBEdit;
    DBEditProfunCam3: TDBEdit;
    DBEditProfunCam4: TDBEdit;
    DBEditCapacCampo1: TDBEdit;
    DBEditCapacCampo3: TDBEdit;
    DBEditCapacCampo4: TDBEdit;
    DBEditDensidade1: TDBEdit;
    DBEditDensidade2: TDBEdit;
    DBEditDensidade3: TDBEdit;
    DBEditDensidade4: TDBEdit;
    DBEditCarbOrg1: TDBEdit;
    DBEditCarbOrg2: TDBEdit;
    DBEditCarbOrg3: TDBEdit;
    DBEditCarbOrg4: TDBEdit;
    DBEditCapacCampo2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btnCancelar: TButton;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    DataSourceSolo: TDataSource;
    DBNavigator1: TDBNavigator;
    btnNovo: TButton;
    FDQuerySolo: TFDQuery;
    FDQuerySoloid: TFDAutoIncField;
    FDQuerySolonome: TStringField;
    FDQuerySoloprofundidadeCamada1: TIntegerField;
    FDQuerySoloprofundidadeCamada2: TIntegerField;
    FDQuerySoloprofundidadeCamada3: TIntegerField;
    FDQuerySoloprofundidadeCamada4: TIntegerField;
    FDQuerySolocapacidadeCampo1: TSingleField;
    FDQuerySolocapacidadeCampo2: TSingleField;
    FDQuerySolocapacidadeCampo3: TSingleField;
    FDQuerySolocapacidadeCampo4: TSingleField;
    FDQuerySolodensidadeSolo1: TSingleField;
    FDQuerySolodensidadeSolo2: TSingleField;
    FDQuerySolodensidadeSolo3: TSingleField;
    FDQuerySolodensidadeSolo4: TSingleField;
    FDQuerySolocarbonoOrganico1: TSingleField;
    FDQuerySolocarbonoOrganico2: TSingleField;
    FDQuerySolocarbonoOrganico3: TSingleField;
    FDQuerySolocarbonoOrganico4: TSingleField;
    GroupBoxBusca: TGroupBox;
    EditBuscaSolo: TEdit;
    DBGridSolo: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FDQuerySoloBeforePost(DataSet: TDataSet);
    procedure FDQuerySoloAfterPost(DataSet: TDataSet);
    procedure EditBuscaSoloChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroSolo: TFormCadastroSolo;

implementation

{$R *.dfm}

uses UnitDataModule, UnitSolo;

procedure TFormCadastroSolo.btnCancelarClick(Sender: TObject);
begin
  FDQuerySolo.Cancel;
end;

procedure TFormCadastroSolo.btnEditarClick(Sender: TObject);
begin
  FDQuerySolo.Edit;
end;

procedure TFormCadastroSolo.btnExcluirClick(Sender: TObject);
begin
  FDQuerySolo.Delete;
end;

procedure TFormCadastroSolo.btnNovoClick(Sender: TObject);
begin
  FDQuerySolo.Insert;
end;

procedure TFormCadastroSolo.btnSalvarClick(Sender: TObject);
begin
  FDQuerySolo.Post;
end;

procedure TFormCadastroSolo.EditBuscaSoloChange(Sender: TObject);
begin
  with FDQuerySolo do
    begin
      Close;
      SQL.Text := 'select * from solo where nome like :nome';
      ParamByName('nome').Value := '%' + EditBuscaSolo.Text + '%';
      Open;
    end;
end;

procedure TFormCadastroSolo.FDQuerySoloAfterPost(DataSet: TDataSet);
begin
  Application.MessageBox('Solo salvo com sucesso!', 'Solo salvo');
end;

procedure TFormCadastroSolo.FDQuerySoloBeforePost(DataSet: TDataSet);
var solo: TSolo;
begin
 solo := TSolo.Create;
 solo.Nome := DBEditTipo.Text;
 solo.ProfundidadeDeCamada1 := StrToInt(DBEditProfunCam1.Text);
 solo.ProfundidadeDeCamada2 := StrToInt(DBEditProfunCam2.Text);
 solo.ProfundidadeDeCamada3 := StrToInt(DBEditProfunCam3.Text);
 solo.ProfundidadeDeCamada4 := StrToInt(DBEditProfunCam4.Text);
 solo.CapacidadeDeCampo1 := StrToFloat(DBEditCapacCampo1.Text);
 solo.CapacidadeDeCampo2 := StrToFloat(DBEditCapacCampo2.Text);
 solo.CapacidadeDeCampo3 := StrToFloat(DBEditCapacCampo3.Text);
 solo.CapacidadeDeCampo4 := StrToFloat(DBEditCapacCampo4.Text);
 solo.DensidadeSolo1 := StrToFloat(DBEditDensidade1.Text);
 solo.DensidadeSolo2 := StrToFloat(DBEditDensidade2.Text);
 solo.DensidadeSolo3 := StrToFloat(DBEditDensidade3.Text);
 solo.DensidadeSolo4 := StrToFloat(DBEditDensidade4.Text);
 solo.CarbonoOrganico1 := StrToFloat(DBEditCarbOrg1.Text);
 solo.CarbonoOrganico2 := StrToFloat(DBEditCarbOrg2.Text);
 solo.CarbonoOrganico3 := StrToFloat(DBEditCarbOrg3.Text);
 solo.CarbonoOrganico4 := StrToFloat(DBEditCarbOrg4.Text);
 FDQuerySolo.FieldByName('nome').AsString := solo.Nome;
 FDQuerySolo.FieldByName('profundidadeCamada1').AsInteger := solo.ProfundidadeDeCamada1;
 FDQuerySolo.FieldByName('profundidadeCamada2').AsInteger := solo.ProfundidadeDeCamada2;
 FDQuerySolo.FieldByName('profundidadeCamada3').AsInteger := solo.ProfundidadeDeCamada3;
 FDQuerySolo.FieldByName('profundidadeCamada4').AsInteger := solo.ProfundidadeDeCamada4;
 FDQuerySolo.FieldByName('capacidadeCampo1').AsFloat := solo.CapacidadeDeCampo1;
 FDQuerySolo.FieldByName('capacidadeCampo2').AsFloat := solo.CapacidadeDeCampo2;
 FDQuerySolo.FieldByName('capacidadeCampo3').AsFloat := solo.CapacidadeDeCampo3;
 FDQuerySolo.FieldByName('capacidadeCampo4').AsFloat := solo.CapacidadeDeCampo4;
 FDQuerySolo.FieldByName('densidadeSolo1').AsFloat := solo.DensidadeSolo1;
 FDQuerySolo.FieldByName('densidadeSolo2').AsFloat := solo.DensidadeSolo2;
 FDQuerySolo.FieldByName('densidadeSolo3').AsFloat := solo.DensidadeSolo3;
 FDQuerySolo.FieldByName('densidadeSolo4').AsFloat := solo.DensidadeSolo4;
 FDQuerySolo.FieldByName('carbonoOrganico1').AsFloat := solo.CarbonoOrganico1;
 FDQuerySolo.FieldByName('carbonoOrganico2').AsFloat := solo.CarbonoOrganico2;
 FDQuerySolo.FieldByName('carbonoOrganico3').AsFloat := solo.CarbonoOrganico3;
 FDQuerySolo.FieldByName('carbonoOrganico4').AsFloat := solo.CarbonoOrganico4;
end;

procedure TFormCadastroSolo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormCadastroSolo := nil;
  Action := caFree;
end;

end.
