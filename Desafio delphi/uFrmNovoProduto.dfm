object frmNovoProduto: TfrmNovoProduto
  Left = 0
  Top = 0
  Caption = 'Novo Produto'
  ClientHeight = 517
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtID: TEdit
    Left = 32
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 0
    TextHint = 'ID '
  end
  object edtDescricao: TEdit
    Left = 288
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 1
    TextHint = 'Descri'#231#227'o'
  end
  object edtCategoria: TEdit
    Left = 32
    Top = 128
    Width = 185
    Height = 21
    TabOrder = 2
    TextHint = 'ID Categoria'
  end
  object btnSalvar: TButton
    Left = 32
    Top = 232
    Width = 113
    Height = 57
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object edtValor: TEdit
    Left = 288
    Top = 128
    Width = 185
    Height = 21
    TabOrder = 4
    TextHint = 'Valor'
  end
end
