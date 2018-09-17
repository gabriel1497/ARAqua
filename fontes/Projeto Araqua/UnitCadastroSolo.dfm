object FormCadastroSolo: TFormCadastroSolo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Solo'
  ClientHeight = 418
  ClientWidth = 822
  Color = 15332585
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object panelFundoSolo: TPanel
    Left = 0
    Top = 0
    Width = 822
    Height = 418
    Align = alClient
    Color = 14478812
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      822
      418)
    object GroupBoxSolo: TGroupBox
      Left = 293
      Top = 16
      Width = 233
      Height = 89
      Anchors = [akTop]
      Caption = ' Solo '
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 20
        Height = 13
        Caption = 'Tipo'
        Color = 14609884
        ParentColor = False
      end
      object DBEditTipo: TDBEdit
        Left = 24
        Top = 43
        Width = 121
        Height = 21
        DataField = 'nome'
        DataSource = DataSourceSolo
        TabOrder = 0
      end
    end
    object GroupBoxLixiviacao: TGroupBox
      Left = 294
      Top = 111
      Width = 501
      Height = 225
      Anchors = [akTop]
      Caption = ' Lixivia'#231#227'o '
      TabOrder = 1
      object Label4: TLabel
        Left = 9
        Top = 49
        Width = 48
        Height = 13
        Caption = 'Camada 1'
        Color = 14609884
        ParentColor = False
      end
      object Label5: TLabel
        Left = 9
        Top = 136
        Width = 48
        Height = 13
        Caption = 'Camada 3'
        Color = 14609884
        ParentColor = False
      end
      object Label6: TLabel
        Left = 9
        Top = 91
        Width = 51
        Height = 13
        Caption = ' Camada 2'
        Color = 14609884
        ParentColor = False
      end
      object Label7: TLabel
        Left = 9
        Top = 177
        Width = 48
        Height = 13
        Caption = 'Camada 4'
        Color = 14609884
        ParentColor = False
      end
      object Label8: TLabel
        Left = 40
        Top = 24
        Width = 88
        Height = 13
        Caption = 'Profundidade (cm)'
        Color = 14609884
        ParentColor = False
      end
      object Label9: TLabel
        Left = 142
        Top = 24
        Width = 132
        Height = 13
        Caption = 'Capacidade de campo (v/v)'
        Color = 14609884
        ParentColor = False
      end
      object Label10: TLabel
        Left = 280
        Top = 24
        Width = 90
        Height = 13
        Caption = 'Densidade (g/cm3)'
        Color = 14609884
        ParentColor = False
      end
      object Label11: TLabel
        Left = 384
        Top = 24
        Width = 114
        Height = 13
        Caption = 'Carbono Org'#226'nico (v/v)'
        Color = 14609884
        ParentColor = False
      end
      object DBEditProfunCam1: TDBEdit
        Left = 64
        Top = 43
        Width = 49
        Height = 21
        DataField = 'profundidadeCamada1'
        DataSource = DataSourceSolo
        TabOrder = 0
      end
      object DBEditProfunCam2: TDBEdit
        Left = 64
        Top = 88
        Width = 49
        Height = 21
        DataField = 'profundidadeCamada2'
        DataSource = DataSourceSolo
        TabOrder = 1
      end
      object DBEditProfunCam3: TDBEdit
        Left = 63
        Top = 133
        Width = 49
        Height = 21
        DataField = 'profundidadeCamada3'
        DataSource = DataSourceSolo
        TabOrder = 2
      end
      object DBEditProfunCam4: TDBEdit
        Left = 64
        Top = 174
        Width = 49
        Height = 21
        DataField = 'profundidadeCamada4'
        DataSource = DataSourceSolo
        TabOrder = 3
      end
      object DBEditCapacCampo1: TDBEdit
        Left = 176
        Top = 43
        Width = 57
        Height = 21
        DataField = 'capacidadeCampo1'
        DataSource = DataSourceSolo
        TabOrder = 4
      end
      object DBEditCapacCampo3: TDBEdit
        Left = 176
        Top = 133
        Width = 57
        Height = 21
        DataField = 'capacidadeCampo3'
        DataSource = DataSourceSolo
        TabOrder = 5
      end
      object DBEditCapacCampo4: TDBEdit
        Left = 176
        Top = 174
        Width = 57
        Height = 21
        DataField = 'capacidadeCampo4'
        DataSource = DataSourceSolo
        TabOrder = 6
      end
      object DBEditDensidade1: TDBEdit
        Left = 296
        Top = 43
        Width = 57
        Height = 21
        DataField = 'densidadeSolo1'
        DataSource = DataSourceSolo
        TabOrder = 7
      end
      object DBEditDensidade2: TDBEdit
        Left = 296
        Top = 88
        Width = 57
        Height = 21
        DataField = 'densidadeSolo2'
        DataSource = DataSourceSolo
        TabOrder = 8
      end
      object DBEditDensidade3: TDBEdit
        Left = 296
        Top = 133
        Width = 57
        Height = 21
        DataField = 'densidadeSolo3'
        DataSource = DataSourceSolo
        TabOrder = 9
      end
      object DBEditDensidade4: TDBEdit
        Left = 296
        Top = 174
        Width = 57
        Height = 21
        DataField = 'densidadeSolo4'
        DataSource = DataSourceSolo
        TabOrder = 10
      end
      object DBEditCarbOrg1: TDBEdit
        Left = 407
        Top = 43
        Width = 58
        Height = 21
        DataField = 'carbonoOrganico1'
        DataSource = DataSourceSolo
        TabOrder = 11
      end
      object DBEditCarbOrg2: TDBEdit
        Left = 407
        Top = 88
        Width = 58
        Height = 21
        DataField = 'carbonoOrganico2'
        DataSource = DataSourceSolo
        TabOrder = 12
      end
      object DBEditCarbOrg3: TDBEdit
        Left = 408
        Top = 133
        Width = 57
        Height = 21
        DataField = 'carbonoOrganico3'
        DataSource = DataSourceSolo
        TabOrder = 13
      end
      object DBEditCarbOrg4: TDBEdit
        Left = 408
        Top = 174
        Width = 57
        Height = 21
        DataField = 'carbonoOrganico4'
        DataSource = DataSourceSolo
        TabOrder = 14
      end
      object DBEditCapacCampo2: TDBEdit
        Left = 176
        Top = 88
        Width = 57
        Height = 21
        DataField = 'capacidadeCampo2'
        DataSource = DataSourceSolo
        TabOrder = 15
      end
    end
    object Panel1: TPanel
      Left = 155
      Top = 342
      Width = 475
      Height = 65
      Anchors = [akTop]
      TabOrder = 2
      object btnCancelar: TButton
        Left = 377
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = btnCancelarClick
      end
      object btnSalvar: TButton
        Left = 192
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 1
        OnClick = btnSalvarClick
      end
      object btnEditar: TButton
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
        OnClick = btnEditarClick
      end
      object btnExcluir: TButton
        Left = 281
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 3
        OnClick = btnExcluirClick
      end
      object DBNavigator1: TDBNavigator
        Left = 114
        Top = 39
        Width = 224
        Height = 25
        DataSource = DataSourceSolo
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 4
      end
      object btnNovo: TButton
        Left = 105
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 5
        OnClick = btnNovoClick
      end
    end
    object GroupBoxBusca: TGroupBox
      Left = 24
      Top = 16
      Width = 263
      Height = 320
      Anchors = [akTop]
      Caption = 'Busca de Solo'
      Color = 14609884
      ParentBackground = False
      ParentColor = False
      TabOrder = 3
      object EditBuscaSolo: TEdit
        Left = 16
        Top = 24
        Width = 225
        Height = 21
        TabOrder = 0
        OnChange = EditBuscaSoloChange
      end
      object DBGridSolo: TDBGrid
        Left = 16
        Top = 51
        Width = 225
        Height = 254
        DataSource = DataSourceSolo
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 178
            Visible = True
          end>
      end
    end
  end
  object DataSourceSolo: TDataSource
    DataSet = FDQuerySolo
    Left = 592
    Top = 24
  end
  object FDQuerySolo: TFDQuery
    BeforePost = FDQuerySoloBeforePost
    AfterPost = FDQuerySoloAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from solo')
    Left = 512
    Top = 32
    object FDQuerySoloid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuerySolonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 15
    end
    object FDQuerySoloprofundidadeCamada1: TIntegerField
      FieldName = 'profundidadeCamada1'
      Origin = 'profundidadeCamada1'
      Required = True
    end
    object FDQuerySoloprofundidadeCamada2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'profundidadeCamada2'
      Origin = 'profundidadeCamada2'
    end
    object FDQuerySoloprofundidadeCamada3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'profundidadeCamada3'
      Origin = 'profundidadeCamada3'
    end
    object FDQuerySoloprofundidadeCamada4: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'profundidadeCamada4'
      Origin = 'profundidadeCamada4'
    end
    object FDQuerySolocapacidadeCampo1: TSingleField
      FieldName = 'capacidadeCampo1'
      Origin = 'capacidadeCampo1'
      Required = True
    end
    object FDQuerySolocapacidadeCampo2: TSingleField
      FieldName = 'capacidadeCampo2'
      Origin = 'capacidadeCampo2'
      Required = True
    end
    object FDQuerySolocapacidadeCampo3: TSingleField
      FieldName = 'capacidadeCampo3'
      Origin = 'capacidadeCampo3'
      Required = True
    end
    object FDQuerySolocapacidadeCampo4: TSingleField
      FieldName = 'capacidadeCampo4'
      Origin = 'capacidadeCampo4'
      Required = True
    end
    object FDQuerySolodensidadeSolo1: TSingleField
      FieldName = 'densidadeSolo1'
      Origin = 'densidadeSolo1'
      Required = True
    end
    object FDQuerySolodensidadeSolo2: TSingleField
      FieldName = 'densidadeSolo2'
      Origin = 'densidadeSolo2'
      Required = True
    end
    object FDQuerySolodensidadeSolo3: TSingleField
      FieldName = 'densidadeSolo3'
      Origin = 'densidadeSolo3'
      Required = True
    end
    object FDQuerySolodensidadeSolo4: TSingleField
      FieldName = 'densidadeSolo4'
      Origin = 'densidadeSolo4'
      Required = True
    end
    object FDQuerySolocarbonoOrganico1: TSingleField
      FieldName = 'carbonoOrganico1'
      Origin = 'carbonoOrganico1'
      Required = True
    end
    object FDQuerySolocarbonoOrganico2: TSingleField
      FieldName = 'carbonoOrganico2'
      Origin = 'carbonoOrganico2'
      Required = True
    end
    object FDQuerySolocarbonoOrganico3: TSingleField
      FieldName = 'carbonoOrganico3'
      Origin = 'carbonoOrganico3'
      Required = True
    end
    object FDQuerySolocarbonoOrganico4: TSingleField
      FieldName = 'carbonoOrganico4'
      Origin = 'carbonoOrganico4'
      Required = True
    end
  end
end
