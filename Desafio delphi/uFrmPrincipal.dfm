object Catalogo: TCatalogo
  Left = 0
  Top = 0
  Width = 1107
  Height = 594
  Anchors = [akLeft, akTop, akRight, akBottom]
  AutoScroll = True
  Caption = 'Catalogo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TDBGrid
    Left = 0
    Top = 218
    Width = 1074
    Height = 400
    Align = alBottom
    DataSource = DM.DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CATEGORIA'
        Title.Caption = 'Categoria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Title.Caption = 'Pre'#231'o'
        Visible = True
      end>
  end
  object Navigator: TDBNavigator
    Left = 0
    Top = 0
    Width = 1074
    Height = 49
    DataSource = DM.DS
    Align = alTop
    TabOrder = 1
    BeforeAction = NavigatorBeforeAction
    ExplicitWidth = 835
  end
  object edtID: TDBEdit
    Left = 8
    Top = 197
    Width = 57
    Height = 21
    DataField = 'ID'
    DataSource = DM.DS
    TabOrder = 2
  end
  object edtDescricao: TDBEdit
    Left = 80
    Top = 197
    Width = 219
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DM.DS
    TabOrder = 3
  end
  object edtCategoria: TDBEdit
    Left = 320
    Top = 197
    Width = 153
    Height = 21
    DataField = 'ID_CATEGORIA'
    DataSource = DM.DS
    TabOrder = 4
  end
  object edtPreco: TDBEdit
    Left = 488
    Top = 197
    Width = 121
    Height = 21
    DataField = 'PRECO'
    DataSource = DM.DS
    TabOrder = 5
  end
  object Button1: TButton
    Left = 80
    Top = 152
    Width = 81
    Height = 25
    Align = alCustom
    Caption = 'Pesquisar'
    TabOrder = 6
    OnClick = Button1Click
  end
  object busca: TSearchBox
    Left = 80
    Top = 112
    Width = 529
    Height = 21
    TabOrder = 7
    TextHint = 'ID Categoria/Descri'#231#227'o'
  end
  object rBtnID: TRadioButton
    Left = 728
    Top = 114
    Width = 113
    Height = 17
    Caption = 'ID Categoria'
    TabOrder = 8
  end
  object rBtnDescricao: TRadioButton
    Left = 847
    Top = 114
    Width = 113
    Height = 17
    Caption = 'Descri'#231#227'o'
    TabOrder = 9
  end
  object rBtnFiltro: TRadioButton
    Left = 615
    Top = 114
    Width = 113
    Height = 17
    Caption = 'Sem filtro'
    TabOrder = 10
  end
  object Menu: TMainMenu
    Left = 8
    Top = 56
    object Adicionar: TMenuItem
      Caption = 'Adicionar'
      object menuProduto: TMenuItem
        Caption = 'Produto'
        OnClick = menuProdutoClick
      end
    end
  end
end
