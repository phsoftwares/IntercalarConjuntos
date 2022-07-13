object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 211
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object conjunto1: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'ABCDE*'
  end
  object conjunto2: TEdit
    Left = 176
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '123$'
  end
  object Button1: TButton
    Left = 96
    Top = 120
    Width = 113
    Height = 73
    Caption = 'Processar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object edtResultado: TEdit
    Left = 96
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
