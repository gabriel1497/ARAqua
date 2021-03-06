object FormCalculoResultado: TFormCalculoResultado
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'C'#225'lculos'
  ClientHeight = 451
  ClientWidth = 672
  Color = 15201254
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFundo: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 451
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 662
    ExplicitHeight = 441
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 670
      Height = 449
      ActivePage = TabSheetLixiviacao
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 660
      ExplicitHeight = 439
      object TabSheetLixiviacao: TTabSheet
        Caption = 'Lixivia'#231#227'o'
        ExplicitWidth = 652
        ExplicitHeight = 411
        object PanelTabLixiviacao: TPanel
          Left = 0
          Top = 0
          Width = 662
          Height = 421
          Align = alClient
          Color = 15463914
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 652
          ExplicitHeight = 411
          DesignSize = (
            662
            421)
          object GroupBoxLocal: TGroupBox
            Left = 43
            Top = 8
            Width = 281
            Height = 81
            Anchors = [akTop]
            Caption = 'Local'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            ExplicitLeft = 40
            object DBLookupComboLocal: TDBLookupComboBox
              Left = 19
              Top = 35
              Width = 171
              Height = 21
              DataField = 'localidade_id'
              DataSource = DataSourceResultado
              KeyField = 'id'
              ListField = 'descricao'
              ListSource = DataSourceLocalidade
              TabOrder = 0
            end
          end
          object GroupBoxSolo: TGroupBox
            Left = 37
            Top = 105
            Width = 281
            Height = 89
            Anchors = [akTop]
            Caption = 'Solo'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            ExplicitLeft = 34
            object DBLookupComboBoxSolo: TDBLookupComboBox
              Left = 24
              Top = 32
              Width = 171
              Height = 21
              DataField = 'solo_id'
              DataSource = DataSourceResultado
              KeyField = 'id'
              ListField = 'nome'
              ListSource = DataSourceSolo
              TabOrder = 0
            end
          end
          object GroupBoxAgrotoxico: TGroupBox
            Left = 37
            Top = 208
            Width = 281
            Height = 113
            Anchors = [akTop]
            Caption = 'Agrot'#243'xico'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
            ExplicitLeft = 34
            object Label3: TLabel
              Left = 215
              Top = 40
              Width = 57
              Height = 13
              Caption = 'Dose (g/ha)'
            end
            object CheckBoxInserirManual: TCheckBox
              Left = 24
              Top = 62
              Width = 145
              Height = 17
              Caption = 'Inserir dose manualmente'
              TabOrder = 0
              OnClick = CheckBoxInserirManualClick
            end
            object EditDoseManual: TEdit
              Left = 24
              Top = 85
              Width = 89
              Height = 21
              Enabled = False
              TabOrder = 1
            end
            object DBLookupComboAgro: TDBLookupComboBox
              Left = 24
              Top = 35
              Width = 171
              Height = 21
              DataField = 'agrotoxico_id'
              DataSource = DataSourceResultado
              KeyField = 'id'
              ListField = 'principioAtivo'
              ListSource = DataSourceAgro
              TabOrder = 2
            end
          end
          object GroupBox4: TGroupBox
            Left = 343
            Top = 8
            Width = 305
            Height = 313
            Anchors = [akTop]
            Caption = 'C'#225'lculos'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 3
            ExplicitLeft = 336
            object Panel1: TPanel
              Left = 24
              Top = 35
              Width = 241
              Height = 82
              BorderStyle = bsSingle
              TabOrder = 0
              object Label1: TLabel
                Left = 16
                Top = 14
                Width = 107
                Height = 16
                Caption = 'Recarga H'#237'drica:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 184
                Top = 36
                Width = 46
                Height = 13
                Caption = '(mm/ano)'
              end
              object DBEditRecargaHidrica: TDBEdit
                Left = 16
                Top = 32
                Width = 162
                Height = 21
                DataField = 'recargaHidrica'
                DataSource = DataSourceResultado
                Enabled = False
                TabOrder = 0
              end
            end
            object Panel4: TPanel
              Left = 24
              Top = 165
              Width = 241
              Height = 125
              BorderStyle = bsSingle
              TabOrder = 1
              object Label7: TLabel
                Left = 8
                Top = 13
                Width = 172
                Height = 16
                Caption = 'Concentra'#231#227'o Estimada na'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 8
                Top = 32
                Width = 125
                Height = 16
                Caption = #193'gua Subterr'#226'nea:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 183
                Top = 75
                Width = 48
                Height = 13
                Caption = '(ug i.a./L)'
              end
              object DBEditConcentracaoEstimada: TDBEdit
                Left = 16
                Top = 72
                Width = 161
                Height = 21
                DataField = 'concentracaoEstimada'
                DataSource = DataSourceResultado
                TabOrder = 0
              end
            end
          end
          object Panel5: TPanel
            Left = 73
            Top = 345
            Width = 498
            Height = 59
            Anchors = [akBottom]
            TabOrder = 4
            ExplicitLeft = 68
            ExplicitTop = 335
            object btnCalcular: TButton
              Left = 400
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Calcular'
              ImageIndex = 6
              Images = FormPrincipal.ImageList1
              TabOrder = 0
              OnClick = btnCalcularClick
            end
            object btnNovaConsulta: TButton
              Left = 142
              Top = 16
              Width = 110
              Height = 25
              Caption = 'Novo C'#225'lculo'
              Enabled = False
              ImageIndex = 0
              Images = FormPrincipal.ImageList1
              TabOrder = 1
              OnClick = btnNovaConsultaClick
            end
            object btnSalvar: TButton
              Left = 293
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Salvar'
              Enabled = False
              ImageIndex = 2
              Images = FormPrincipal.ImageList1
              TabOrder = 2
              OnClick = btnSalvarClick
            end
            object btnCancelar: TButton
              Left = 30
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Cancelar'
              ImageIndex = 1
              Images = FormPrincipal.ImageList1
              TabOrder = 3
              OnClick = btnCancelarClick
            end
          end
        end
      end
      object TabSheetCarreamento: TTabSheet
        Caption = 'Carreamento Superficial'
        Enabled = False
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PanelTabCarreamento: TPanel
          Left = 0
          Top = 0
          Width = 652
          Height = 411
          Align = alClient
          Color = 15463657
          ParentBackground = False
          TabOrder = 0
        end
      end
    end
  end
  object FDQueryResultado: TFDQuery
    BeforePost = FDQueryResultadoBeforePost
    AfterPost = FDQueryResultadoAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from resultado')
    Left = 616
    Top = 104
  end
  object DataSourceResultado: TDataSource
    DataSet = FDQueryResultado
    Left = 499
    Top = 1
  end
  object FDQuerySolo: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from solo')
    Left = 614
    Top = 47
  end
  object FDQueryLocalidade: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from localidade')
    Left = 630
    Top = 335
    object FDQueryLocalidadeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQueryLocalidadeprecipitacao: TSingleField
      FieldName = 'precipitacao'
      Origin = 'precipitacao'
      Required = True
    end
    object FDQueryLocalidadeevapotranspiracao: TSingleField
      FieldName = 'evapotranspiracao'
      Origin = 'evapotranspiracao'
      Required = True
    end
    object FDQueryLocalidadeirrigacao: TSingleField
      FieldName = 'irrigacao'
      Origin = 'irrigacao'
      Required = True
    end
    object FDQueryLocalidadeporosidadeAquifero: TSingleField
      FieldName = 'porosidadeAquifero'
      Origin = 'porosidadeAquifero'
      Required = True
    end
    object FDQueryLocalidadeprofundidadeAquifero: TIntegerField
      FieldName = 'profundidadeAquifero'
      Origin = 'profundidadeAquifero'
      Required = True
    end
    object FDQueryLocalidadedescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 100
    end
  end
  object FDQueryAgro: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from agrotoxico')
    Left = 582
    Top = 65535
  end
  object DataSourceSolo: TDataSource
    DataSet = FDQuerySolo
    Left = 644
    Top = 169
  end
  object DataSourceLocalidade: TDataSource
    DataSet = FDQueryLocalidade
    Left = 652
    Top = 225
  end
  object DataSourceAgro: TDataSource
    DataSet = FDQueryAgro
    Left = 643
    Top = 281
  end
end
