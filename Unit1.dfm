object Form1: TForm1
  Left = 782
  Top = 151
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 573
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 5
    Top = 5
    Width = 500
    Height = 548
    Pen.Style = psClear
  end
  object Button1: TButton
    Left = 512
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 512
    Top = 72
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'How many grains'
  end
  object ComboBox2: TComboBox
    Left = 512
    Top = 96
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'Neighborhood rule'
    OnChange = ComboBox2Change
  end
  object ComboBox3: TComboBox
    Left = 512
    Top = 144
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'Boundary conditions'
  end
  object ComboBox4: TComboBox
    Left = 512
    Top = 176
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'Inclusions'
    OnChange = ComboBox4Change
  end
  object ComboBox5: TComboBox
    Left = 512
    Top = 200
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Amount'
    Visible = False
  end
  object ComboBox6: TComboBox
    Left = 608
    Top = 200
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'Size'
    Visible = False
  end
  object ComboBox7: TComboBox
    Left = 608
    Top = 120
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'Probability'
    Visible = False
  end
  object ComboBox8: TComboBox
    Left = 512
    Top = 272
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Text = 'MC amount of grains'
  end
  object Button2: TButton
    Left = 512
    Top = 240
    Width = 89
    Height = 25
    Caption = 'Monte Carlo'
    TabOrder = 9
    OnClick = Button2Click
  end
  object ComboBox9: TComboBox
    Left = 512
    Top = 296
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Text = 'MC steps'
  end
  object Button3: TButton
    Left = 512
    Top = 336
    Width = 89
    Height = 25
    Caption = 'Recrystallization'
    TabOrder = 11
    OnClick = Button3Click
  end
  object ComboBox10: TComboBox
    Left = 512
    Top = 368
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Text = 'Energy dystribution'
    OnChange = ComboBox10Change
  end
  object ComboBox11: TComboBox
    Left = 512
    Top = 392
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Text = 'Bound energy'
    Visible = False
  end
  object ComboBox12: TComboBox
    Left = 608
    Top = 392
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Text = 'Grains energy'
    Visible = False
  end
  object ComboBox13: TComboBox
    Left = 608
    Top = 392
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Text = 'Energy'
    Visible = False
  end
  object ComboBox14: TComboBox
    Left = 512
    Top = 416
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Text = 'Nucleation module'
  end
  object ComboBox15: TComboBox
    Left = 512
    Top = 464
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 17
    Text = 'Amount of nucleations'
  end
  object ComboBox16: TComboBox
    Left = 512
    Top = 496
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 18
    Text = 'Recrystallization steps'
  end
  object Button4: TButton
    Left = 512
    Top = 528
    Width = 89
    Height = 25
    Caption = 'Energy'
    TabOrder = 19
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 608
    Top = 528
    Width = 89
    Height = 25
    Caption = 'Grains'
    TabOrder = 20
    OnClick = Button5Click
  end
  object ComboBox17: TComboBox
    Left = 512
    Top = 440
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 21
    Text = 'Nucleation dystrybution'
  end
  object Button6: TButton
    Left = 512
    Top = 40
    Width = 89
    Height = 23
    Caption = 'Save to file'
    TabOrder = 22
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 608
    Top = 40
    Width = 89
    Height = 23
    Caption = 'Load from file'
    TabOrder = 23
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 608
    Top = 240
    Width = 89
    Height = 25
    Caption = 'Borders'
    TabOrder = 24
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 608
    Top = 336
    Width = 89
    Height = 25
    Caption = 'Rand Border'
    TabOrder = 25
    OnClick = Button9Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 16
    Top = 16
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer2Timer
    Left = 56
    Top = 16
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer3Timer
    Left = 96
    Top = 16
  end
end
