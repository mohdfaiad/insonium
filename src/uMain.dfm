object fMain: TfMain
  Left = 192
  Top = 114
  Width = 928
  Height = 480
  Caption = 'insonium'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mMenu: TMainMenu
    Left = 840
    Top = 8
    object iCadastro: TMenuItem
      Caption = '&Cadastro'
      object iProduto: TMenuItem
        Caption = '&Produto'
        OnClick = iProdutoClick
      end
      object iFornecedor: TMenuItem
        Caption = '&Fornecedor'
      end
    end
    object Operaes1: TMenuItem
      Caption = '&Opera'#231#245'es'
      object mVenda: TMenuItem
        Caption = '&Venda'
      end
      object iCompra: TMenuItem
        Caption = '&Compra'
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
    end
  end
  object ADOConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=inson' +
      'ium'
    LoginPrompt = False
    Left = 88
    Top = 32
  end
end
