object FormCalculoResultado: TFormCalculoResultado
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'C'#225'lculos'
  ClientHeight = 448
  ClientWidth = 618
  Color = 15201254
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFundo: TPanel
    Left = 0
    Top = 0
    Width = 618
    Height = 448
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 616
      Height = 446
      ActivePage = TabSheetLixiviacao
      Align = alClient
      TabOrder = 0
      object TabSheetLixiviacao: TTabSheet
        Caption = 'Lixivia'#231#227'o'
        object PanelTabLixiviacao: TPanel
          Left = 0
          Top = 0
          Width = 608
          Height = 418
          Align = alClient
          Color = 15463914
          ParentBackground = False
          TabOrder = 0
          DesignSize = (
            608
            418)
          object GroupBoxLocal: TGroupBox
            Left = 28
            Top = 8
            Width = 281
            Height = 81
            Anchors = [akTop]
            Caption = 'Local'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
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
            Left = 23
            Top = 105
            Width = 281
            Height = 89
            Caption = 'Solo'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
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
            Left = 23
            Top = 208
            Width = 281
            Height = 113
            Caption = 'Agrot'#243'xico'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
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
            end
            object EditDoseManual: TEdit
              Left = 24
              Top = 85
              Width = 89
              Height = 21
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
            Left = 326
            Top = 8
            Width = 259
            Height = 313
            Caption = 'C'#225'lculos'
            Color = 15529450
            ParentBackground = False
            ParentColor = False
            TabOrder = 3
            object Panel1: TPanel
              Left = 24
              Top = 35
              Width = 209
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
                Left = 144
                Top = 36
                Width = 46
                Height = 13
                Caption = '(mm/ano)'
              end
              object DBEditRecargaHidrica: TDBEdit
                Left = 16
                Top = 32
                Width = 122
                Height = 21
                DataField = 'recargaHidrica'
                DataSource = DataSourceResultado
                TabOrder = 0
              end
            end
            object Panel4: TPanel
              Left = 24
              Top = 165
              Width = 209
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
                Left = 143
                Top = 75
                Width = 48
                Height = 13
                Caption = '(ug i.a./L)'
              end
              object DBEditConcentracaoEstimada: TDBEdit
                Left = 16
                Top = 72
                Width = 121
                Height = 21
                DataField = 'concentracaoEstimada'
                DataSource = DataSourceResultado
                TabOrder = 0
              end
            end
          end
          object Panel5: TPanel
            Left = 57
            Top = 326
            Width = 498
            Height = 83
            Anchors = [akBottom]
            TabOrder = 4
            object btnCalcular: TButton
              Left = 408
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Calcular'
              TabOrder = 0
              OnClick = btnCalcularClick
            end
            object btnLimpar: TButton
              Left = 181
              Top = 16
              Width = 110
              Height = 25
              Caption = 'Nova Consulta'
              TabOrder = 1
              OnClick = btnLimparClick
            end
            object btnSalvar: TButton
              Left = 313
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Salvar'
              TabOrder = 2
              OnClick = btnSalvarClick
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
          Width = 608
          Height = 418
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
    Left = 576
    Top = 96
  end
  object DataSourceResultado: TDataSource
    DataSet = FDQueryResultado
    Left = 499
    Top = 25
  end
  object FDQuerySolo: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from solo')
    Left = 574
    Top = 39
  end
  object FDQueryLocalidade: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from localidade')
    Left = 566
    Top = 367
  end
  object FDQueryAgro: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from agrotoxico')
    Left = 574
    Top = 151
  end
  object DataSourceSolo: TDataSource
    DataSet = FDQuerySolo
    Left = 572
    Top = 209
  end
  object DataSourceLocalidade: TDataSource
    DataSet = FDQueryLocalidade
    Left = 572
    Top = 265
  end
  object DataSourceAgro: TDataSource
    DataSet = FDQueryAgro
    Left = 563
    Top = 321
  end
end
