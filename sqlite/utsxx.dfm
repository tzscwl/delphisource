inherited ftsxx: Tftsxx
  Caption = #22270#20070#20449#24687
  ClientHeight = 647
  ClientWidth = 1130
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 1146
  ExplicitHeight = 686
  PixelsPerInch = 96
  TextHeight = 13
  object cxgrd1: TcxGrid [0]
    Left = 0
    Top = 59
    Width = 1130
    Height = 588
    Align = alClient
    TabOrder = 4
    ExplicitTop = 87
    ExplicitHeight = 560
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = fdatam.ds_tsxx
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Styles.Background = cxStyle1
      Styles.Content = cxstyl1
      Styles.ContentEven = cxstyl1
      Styles.ContentOdd = cxStyle1
      object cxgrdbclmnGrid1DBTableView1isbn: TcxGridDBColumn
        Caption = #20070#21495
        DataBinding.FieldName = 'isbn'
        HeaderAlignmentHorz = taCenter
      end
      object cxgrdbclmnGrid1DBTableView1tm: TcxGridDBColumn
        Caption = #26465#30721
        DataBinding.FieldName = 'tm'
        HeaderAlignmentHorz = taCenter
        Width = 97
      end
      object cxgrdbclmnGrid1DBTableView1spbs: TcxGridDBColumn
        Caption = #21830#21697#26631#35782
        DataBinding.FieldName = 'spbs'
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxgrdbclmnGrid1DBTableView1sm: TcxGridDBColumn
        Caption = #20070#21517
        DataBinding.FieldName = 'sm'
        HeaderAlignmentHorz = taCenter
      end
      object cxgrdbclmnGrid1DBTableView1dj: TcxGridDBColumn
        Caption = #23450#20215
        DataBinding.FieldName = 'dj'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        HeaderAlignmentHorz = taCenter
      end
      object cxgrdbclmnGrid1DBTableView1cbsjc: TcxGridDBColumn
        Caption = #20986#29256#31038
        DataBinding.FieldName = 'cbsjc'
        HeaderAlignmentHorz = taCenter
      end
      object cxgrdbclmnGrid1DBTableView1ysny: TcxGridDBColumn
        Caption = #21360#21047#24180#26376
        DataBinding.FieldName = 'ysny'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 126
      end
      object cxgrdbclmnGrid1DBTableView1bc: TcxGridDBColumn
        Caption = #29256#27425
        DataBinding.FieldName = 'bc'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 29
      end
      object cxgrdbclmnGrid1DBTableView1yc: TcxGridDBColumn
        Caption = #21360#27425
        DataBinding.FieldName = 'yc'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 34
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
  inherited actlst1: TActionList
    Left = 760
    Top = 8
    object act_add: TAction
      Caption = #22686#21152#21697#31181
      OnExecute = act_addExecute
    end
    object act_edit: TAction
      Caption = #32534#36753#21697#31181
      OnExecute = act_editExecute
    end
    object act_delete: TAction
      Caption = #21024#38500#21697#31181
      OnExecute = act_deleteExecute
    end
    object act_select: TAction
      Caption = #21697#31181#26597#35810
      OnExecute = act_selectExecute
    end
    object act_export: TAction
      Caption = #23548#20986#22270#20070
      OnExecute = act_exportExecute
    end
    object act_close: TAction
      Caption = #20851#38381#31383#21475
      OnExecute = act_closeExecute
    end
  end
  inherited dxbrmngr1: TdxBarManager
    Left = 696
    Top = 8
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      59
      0)
    object dxbrmngr1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 841
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtn1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtn2'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtn3'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtn4'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtn5'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtn6'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxbrlrgbtn1: TdxBarLargeButton
      Action = act_add
      Category = 0
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000023744558745469746C65004164643B46696C653B41646446696C653B
        426172733B526962626F6E3B15DCAA0A000006C249444154785E9D976D8C5557
        15869FBDCFFD62F82E1F325AE2086540A9969A1004A93AD381926A44495B35A5
        15D14035C5B6D3D630752C23ADB606A3057ED818AA520C9A92566B9AD2385249
        43AA4D51B055A74029299D6140606698B997FB71CE5ECBE69EECE4C4DECB1057
        B2B3F6EC3BB9EBC9FBEEF3DE1CA3AAF832C6E0B7896EA85175CE1590B8D7AFE4
        CC14FF53DB76BEBC4F0DAD4641014431181445639A78A7A00A6A8837C0F0D0C8
        435DF7DEB8D9436CDEFA2745050536DDBD9C44D5075068FDF66D8BB954552A11
        A113A2D0510E238AC588675FECE1BA4FCCF9DEC6477E671EEDF8E266C03D7857
        1BA7074ABAED897D00970BA00044A2200A16544CF2339C802A08065143245A85
        6A597C158562D87977D71EF358D7CD9B8168C61539EE7FF8F77AD900380540C5
        7700AF352860030B081A589CB51884722504A065C91C9CC8774B1DBF368F3FB2
        BA0AB1A5F30B75EF85AD7741540D28E0E7A3E0F72A586BB1164C60100CE56205
        8020B0B42D9DFBEEFAE8036BEFF9C526200D58C05C168024AC504085B82BF142
        FCFF55218C0144299663809435A402CB0D2DF359DEB2A0E3D66FFDECC124C4E8
        7740C46F6200ACC7F2200958C51A83622897C32A4C2A30586B080265E50D1F43
        5CD41156B6F2D48EBBBAFC575C1AC02B8DEF026A41BD8D06C19398EA4A670326
        8ECFB17EE36E44FC23EA9161E215533B80870137AA029220507C09E22F227E30
        8808363034E432ACF9D227C95F2C51A984B848092321728E9431741F38061000
        8C0EE06FBFF75935116D1E4E630C0360C8A46205C68FCDE2E27C88732272554B
        9C13BC5CA303C4DE7B9971244A41930A60E2A434904907882AAA012E13907182
        8BA40A2078007CE4D70750E73D54C0C4DD2B4F1C4A780CEF0A06F5BE03813188
        3598C0924A1924C2035CBE05241E3975FE2849E2550215452D58030605A3E4AC
        2532423A304C9A90F59943D79EEB316A5094AE5BF6D50210E20E5893981277AD
        F1C80616060ABDBCF6F65EFA06FFC5B9FC0950983AAE892BA75C4D73F387F159
        D075F33E930F8FEA8FF6DC512F097D6A2A2AB1AEAA2028AA09101114B05639F8
        D6333CF597EF901BE35876ED2ADA3FBF9DF695DBAAFB4C26E4C885ED6CD8BAF8
        4E2003D871E966234EEA59E0154ECAECCDF0C37D0E843CFDD787109B6775CB7D
        348C495188DEE6D4C51708A5402ADBC04766373267E63ABA5F7DB6F3FE27D24B
        BA77BDB9EAF0FE53F91FDCB65F007D0F40E4C40FC725632FE184AA121878F1F5
        1DA4D38E958BBF493E3C417FE1087FD8DB435FFF08008D8D6359B16C26960C2B
        16B7D0FD4ABAB57253F4C37701DA81B0A6025E669708A2E44644C1C099A1E3F4
        F4EE67DDE73632587E8DA1D25104E59DBE11BABEB10B804D3B5613BA32A2452E
        86AFB268C13CDEEA3BB6FE2B1BAFF9D56F1EFDC721C0D5B0C07912307183643A
        1A8C441C3EBE978F5F751D153DC3B9620F22118A540133694B2A65112794A312
        AA82A094DD1BCC9F3537387776680DF03A20757E8CBCF789D989A00A50DEEC3F
        48EB071731503CC673CF9FE0747F09CF1A464210589C5376ED7C0705A64F4FB1
        A425873684A8D2060480790F8073EA7DC633E043C9ABA0C2F90BA7B1D961FE79
        FA154EF5E5E8B8FD97A88548C03970A27CFF8EDD0C0E9771387EFAE45A4E9E3F
        89D50CCE4923602F1D447E2EF8E1208A38C1A0D59C2F5686182C9EC5B92BC935
        6469C805A882A255806C2660C6940640633B5C0924220AB180A9056054D40F47
        057CF08A07D4F86C4C6A32C323255461E2D4908E6DB7E0797F72EF1E1468DF72
        93BF434C7E9FC389A39C8772895380D602C0A9A0AAA8F8BF158C807A4483A8D2
        34ED5A7A7B8F909A9AA679E120699B01E0CFCF8CE5C248857163AB52F3995579
        004257A1505186CE04140BE59700A96D8123EE9AB4C2E2894011352C9C7B233F
        7FBE9BA56D13387BB1D7C734224D544490AA5DCA40FE3FA805045C04278F86EE
        7C5FE14920AAF514A8A8438149E3D268F21EA0A8C660E252E43E308FAB67B6F2
        EFBF1D60DA5C70464060D2B40A9BB67F191426CF8810952A0828C7FE9E66F06C
        79E7CB4F9F3C0CB8DA4124FAC29D0FFC76856A22F9105083E20F846C36C5C26B
        DE05E8EF617824CFF4792364C728CD8B0648051940895C859192502EC2F14396
        73BDD14B079FEBEB04CADE827AEF8600864B9705D24043EB5767DD33614AF6BE
        F7CFD1DCF8A9110D930580C28061E034F41EB1E5FC6079CB81DD271F030A4008
        08B1AC97BF7C7D7643336F9C7BDC436480090B96372EF9F4ED4D3BDABE3EBB67
        D9FAD9BA6CDD6CBDFE6BB37A96DEDAB4637ECBF4A5C044201B83635AD67E88D8
        82FFA3C250D9D0F9639F531170F1F01FFB0F01ED40CA0F010408E3450438403F
        B5A649C529DE0246A97A16D57B95B7A3BCB22B89FA2F8110297DA755B8360000
        000049454E44AE426082}
      AutoGrayScale = False
    end
    object dxbrlrgbtn2: TdxBarLargeButton
      Action = act_edit
      Category = 0
      LargeGlyph.SourceDPI = 96
      LargeGlyph.SourceHeight = 32
      LargeGlyph.SourceWidth = 32
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000020744558745469746C6500456469743B426172733B526962626F6E3B
        5374616E646172643B3013C3DB0000079A49444154785E9D970B8C15571D87BF
        7366E6DE659FE8429147178AB08020B4F2541AC01A6A1FA2A9C286D4C4DA6A6C
        7DD44668EDC36509BBC44628182435B1910AC4B2B4E5514D6BD19A822C658B20
        B085EE4257D9D2C0020BBB7497BB77EF9D3B738EDC9399CC756F80C673EFC93D
        672699EFF77F9E3B426B8D10821B0C11CD609F3FAEF7100DA860926586C3EE4F
        5AFBE20104026D3EB0F4A1990290AB7ED750535C5C54A305A075F4D8681BAC15
        10920C0E5FA93D4B1E9C351FD0C1BCB600CFF3B967CE2D8066D2F86106BE72FD
        EEE5B36E1BB94CE0513EB090C2C21803E236B1984DFCEA2C883B81DC68E46E7F
        B3F99FF3000B5037149076BDAC62A67C6EB800AC9AB56FD54C9B52B1ECF66937
        B366C35EEE9A5B692CF611F85AE3FA0A3F9D893CA1341A01985F0AE3165AE9BC
        105D53809BF6B27009C8A79E7D63F9CC2F8CAA9E3DAD221097414A81E3481C5B
        625B16524A03CEF540B4D318B14A7D6201A26EE91DC6F225757FAE993DFDB3D5
        73668CC2B22446409F0B5A6059B611202D092A172D72132C5CA3220F881B0A00
        AC9FD66CAF9933736CF5BC2F8DC1B604961400F4A55D84CC0A1008CBB8368285
        C070A70D2FB8FEC93C2000F9C3A7B7D6CC9B3DBEFAAB73C71ACBA51048014240
        3A9D894CF0B56110307564362ABA6244E97E2110425CD303B272DCA8EA742AC5
        4F9EA90784012330B1BF6950A9C97C898CCA4C830A856461E40FDF8F049C7AFC
        07D7F780529AC1E5C554DD3703475AC41C896D5B14C41C0A8BE20C2888216C61
        AC12421AB2F9462E88DA8400A561F8674A012420473FF78291DAF2E877355AE7
        E780569A1143CBF014C46D1BC7B1B06C8963590829B16C810414021551D190DF
        9C34083415C34AD9FDEDFB9E2E8BC59ECC685D3B73E32B7513D66F5480CE13A0
        94A2B478009EAF711C1BDB249C0C6367325A198E0EB23E58F5EF888025356805
        FB77317CECA827473FF2635AD7ACAA79EB9BF7C8F93BFE520BF832171E7A201E
        73B01DDB582E6DCB80858105220C4CA07404D541E26B40F90A0B905AD3B86317
        433A4F32FAE11FD1B36B2723EEBD9302C7AEDEFE95B9CB0199EF01E5E3C4241E
        202D99175B2D0C25F441647A90675A688CD7F0D9F9C6612EF614F1C0CF57D3FD
        A7E74934B7109325944CFE3CC75EDAF60BA02E5F805626DEAE45008FEA4C230C
        2CBC84022DFFB7F1489115EA7370CF9B9CEE28E6FB0FCEE7C889B394A5CAA818
        319686E7D6D3D3E7D2914CAECACF01E33E1D58EE47ECC80791F561ED2900F055
        D672407B741CDACC84D8BFB8E39167D975E8345D1F279093BFCCD65F2EA3B027
        C9BF7B7A9EFB7557672DA0FA97A1F09532969819061711259A32AB901BB65A2C
        A9D0BECFC5439B284A1FA2E2AE15A44FAD6750F22664E95D6CDAF236E76313F0
        52EFAF6DE86A5B01B8809F1F025F117281101EF6FC001C643712A57D2C017819
        CE1FDC4471FA2023EFAE25D5F25BDCEE134C18328D35F51B39DD263879FCE8BA
        CEF3C76A43F8C3B1C2FC32F47D850E9E1F1EAA061A72C32512E57BD812B47F15
        FEEE468AFB0E70CBD7EA48B76D277DE918FEC069BCBFFD156E7715EF9C912F74
        7ED4BC124801DE8C81954A25CF9027C0E0028A6FEA2ED807D0F0BE52CA249CF2
        5CCE375E85F73632FA1B2BB9D2B48E4CE709C4A0E91CDFF62A8984A6E35377B2
        E7BDE7D70069C003F47167245E5C21F33CE02914845D0EAD4D290633074E169E
        E26CC3068ABAF73166C10AAE1C5A4BA6BD093DF0568EBEBA8DCB973DAC710B19
        30F57E027806D00F2CDDA8415176739CBC24544A199A461978FFE3562B8DC4C7
        F3D29C6B7891922BFB19B3B08EEE036BF02E35A387CEA2E9E51D2492E04C5CC4
        C46F3DC6969D4708E1801E57F411D3CBDB5930F822F94968E03AE8E52A8A7976
        AD41EA2CBC8FF67F6CA0A4FB1D2AABEAF878FF6AD2175AB06E9EC191FAD7B892
        D23893AA98B0F0312C3B4E6B5B67AE1DCC4E6EC629EFC273A3C348E45681CE6D
        B118AB8DF5161AD74D7266CFEF29BBBC8FCAC5B57436ACC6BDD08C533183835B
        5F27D10BB1C9554C5AF4332CBB002D2C233E97E3BB3E998C422BF23DE0850288
        CE54B3CA5AEEA7F8CFDFB650D07B9EF18B96D1B5FB57B81D2D38A3667060EB2E
        7A931A7BCA5578D555B81327A32C6242A2FAFD292D8DFBF8198D82BC1C206C44
        982F46BDF215427B5C687D8FEEA63DCC5FFF3AED7FFC3A6E7B33F698A934D6FF
        95449FC0B9B58A298B97E0140CC0D3E60F2B02617A45EE28295084864602029E
        CA0A004A8B62686DAA01D775C9A432741E6D60C4D479747C7084E4E963C4C7DE
        46E34BBB49A4213EB58AE9DF799C82C262100E314B22826A52D1BB0A009EEB9B
        96AFC917E0BAA9BEBD4FD46D9B23B44005593F747021C306C738D3F4214FAC5C
        CE95B646CE7D7A311FEE6BA5478F2031643C832A1750FFDA615ADBBA1012B416
        611EE1A67AF785DD0F80AC80E05EEEBBA1041CA02098329836503C69FADD0FCD
        9BFDC525CFDC3F9193EF36F2C1C1C374775CA2A5FDE2963F1C3BB70EE80E6A5D
        41747404D0149004DCA647CB15C0CB7F4F41BE07C8042AFB00114C07D04525E5
        F75AC5157CAFBA1ECE35A7C6C57BDF3ED995A87FF354E75E2011C0FDEBBC98FA
        80D6993012791E88AEF55BDBC0C0CAC9F32F745E3CDB9A492776241397B67B6E
        F21CD01B5897092DE71AE3E9F145E1BD7C01D71AC228430621290AC4B8403A8C
        69087E6A5CA1E6FF18FF05EE11264630DDE5080000000049454E44AE426082}
      AutoGrayScale = False
    end
    object dxbrlrgbtn3: TdxBarLargeButton
      Action = act_delete
      Category = 0
      LargeGlyph.SourceDPI = 96
      LargeGlyph.SourceHeight = 32
      LargeGlyph.SourceWidth = 32
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000005A744558745469746C650044656C6574653B44656C6574654974656D
        3B52656D6F76653B52656D6F76654974656D3B44656C6574654C6973743B4C69
        73743B52656D6F76654C6973743B4974656D3B4C6973743B436C6561723B4572
        61736558E2170B0000063A49444154785EA5977D8C5C5519C67FEFB933B34BBB
        5B4AABA2CBF603B55DDC044BD34053AC2DA54B102522FC6342B0460D8952356D
        D0D8AD85C52DA9F8077E906A24C1A0688C3140112A55496D515B42E9975DDBEE
        124ADDD6224DA5ECB6BBB33373EF3DAFCDEC3D797333E96E13DEE4CCB973CECD
        BCCFFB3ECF794E46541511210B79F2E97DDBC5C90A1454401414401541501460
        7C56D0EC3D5401181E1ED978FFBD2B7A010FE88F9FDCA5A84781B55FFE242134
        7BBF80850022222BBE78E742268B5A2D214E3D499C528D13C6C612CE0E8F51AE
        C40F7CFFA77F92EED59FEA05D2355FFA04FF3E79567FFFE23F698C00C0421400
        48530521C005015509D5E335DB124111525576ED1F64F53D4B288FC51B7A1EDD
        2ADFBBFFF65E20993B6B060F3FF6925E1280D04AD090DBE68C17055CE4004523
        47EAC69FABB51880258BE6927AFFDD759B9E9547D6DF5507B1E19BB778A00184
        231FE235702C781554050C13C6BDE29CC33941224111AA95188028722CBDFEC3
        2CBDE19AF56B7B7ED70314B35C32110556AA89C4727B321A6CD5431D8488A05E
        A9546B00149C203896DF389FC4FBEEEABAA7F8D923AB7A813888F3A21478C542
        03E3A048032D61D7892008D56A8C081422C139218A945B975F834FD3EE5AFC0B
        9E78F42B0F017A3100620030EE2D11A858870212C693179B22A6B534B1E6A167
        F06A471494954B3BF858E7BC6EE061209DF814786F2903EFB97AC38200E0BDC7
        45C265CD25EEBE733123E54A5D8C69A224A9274E52228163278600A2493560DC
        E7B487A8E6D6C8BE8B00084DC588685A33AD2D4D757F48E3B40E2049529C803F
        701240B2C1A41A189F35280F9F07691DC8F645A0548CF0AA1435222D45A475A3
        F21422F0786BDB641458EB0D846666840643CA3A9049C32C44C685E85CA88962
        24F884890198083D403E21DE8E628E06F061210051A3C789439DAF83F1FE123B
        E03D60EE8706A2AD2D68836F88ED193A54C189D445AA9748814BD33468002508
        C28E9D5A5E8C08D020CA069F00E78424F1043734C48D14E0530534F783C19E43
        A8E10215727A6DA04250E5D229D0BCD1E0118C73AC5AA305C54A470115C85F21
        A41E8B898F618A02EA151510D5863B40C3826540451BFD0435BAC4843EE16D98
        A69A3D99CA5531A567DA0873D04A7331A2A5A9C09492A3A539AA1F3DF582F78A
        13F8FCED0B004A59D1222217A12005C0FC1C1ABCDF2A1414682A3A2251CE6E7B
        81CAEE7F102DEFE27D37AFCCFC4210F548DF6B0C7CEDDE43EF8C557E7EE32F7F
        DD0B5401750D3EE0D35CB55807B284A67845413D45279C79E1398AC36FD3BEEA
        0EC6F6FE9D53DBB6518C948278FEF7F20E669E7E83B9F7DD73C547962DEEDEF5
        85BB7B42F12E54631A30DE34CC01906A366CDD232469C2B91D7FA5657E1BF1EB
        FBB9BA6B1163AFEEE4F8962D9CDEFE12FEC87E662EE9241ED8CBD4B656A64AF4
        D500A0404688199155A7002A4689045A04357E70CE11DDD4C5C06FB7F2D195D7
        513DD64FC76D8BE97BF6E50B09AFE4CA9B16523DBA1FF5D0F7F4165EDB37B011
        48731A68EC80E4941CD6D000CDE8A9254AFBA73FC31B952A879EF9039DB75C47
        B9FF109DB75D8F88503EB80755CF81AD7BD875F0CD753D6F0D3E0EC406C0DCC9
        C5890FC6818A20A8518085DD1550A929A5A2E3EACFDDC1917299035B9EE3DA9B
        3B39BFEF15C24B07B61FE6C583C77EB079E8CC134025EF8456269A5D0666BD98
        18D19C18F1196CB3630AA526DCCC99D486CF930E8F10627AFB6CA69F2E3B86CE
        B8898CC8070D4C9B526CB8965525E7FBE1238A8434AED27F81DFCA8E6DCC5B38
        8BD1A38741ACBC591D73E8AACDFB7629D5730FBEDEF7136014F006003C1057AA
        E5BF7D67D3F3CB2457BD42DE80C212C562C4AABB1671EA8FCF53DAFD17E62FF8
        1043FBF622C0C13D6F22C5120B16B63372B49FD9ED6DDC3072D5C607AAB1DF38
        D8FF2360CCFE1B82CB9CEA32A009884C1B0D21F967A66E9EDDF96AD76717B4C4
        A74EA05EF957DF7FF8F389777E082AB7CEFEC0DA6B3FDE06805C3E839D3B8F9F
        FBFAE0E139AA3A54C042811A9000A39326CE47F35BA3A34F1D7D65E0BE59EF2F
        3070E4BFEC7E7BA8E757C9E8E300534EBD7B4EBDF674747C9013C70739797EE4
        37406C7CBEB711BA77F9B75AAF7A6CD3F439EF7EA3D4BA1E9806B8B0B7BAF98A
        0D17F686D6B4B66D0666004E55EDFA7D2F6114D29CD158CD86076C6F7CD48031
        205555FE0FA965FE0B0A3A1DA80000000049454E44AE426082}
      AutoGrayScale = False
    end
    object dxbrlrgbtn4: TdxBarLargeButton
      Action = act_select
      Category = 0
      LargeGlyph.SourceDPI = 96
      LargeGlyph.SourceHeight = 32
      LargeGlyph.SourceWidth = 32
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000017744558745469746C650053656C656374416C6C3B5365
        6C6563743B9D11A241000005A749444154785EC5977B6C544518C5CFEC526978
        53BB351AFFF20FC5B628F2AA51282D261424582B0A48A191A010438C46A26D69
        210584146A0C107C0530056A09AF0AF828512CA04428DB2255040201C4A2B0BB
        2D14FA60DBDDF93E776EEF642FBBDD0DB5219EECCD9D3B93DCEF3767BEB3DB0A
        66C6FFA95EB0282B3BD7C46128B9AE79D4482424C41B93960FDC2E3720201C0E
        738DCD1B036EB75B8D4482C3A19E19A2735E3D783C6ED4FEBC5D8401E8B2D7D4
        8B3908515DB5194AA3D373820CE69AF3601994468ECB360A0830C8BCD7FEBC0D
        4AC3C74C87527C00064C608EE2003301C43856552AA085523D1008D3D6286BE5
        616B13B2163031C12ADB9D0000E3DE8989C0C4911D7029FBEF2182CBE5011005
        8041A2F35CB7406BED173F319BF668E967D6FD000136ED63DD8C6643E6BEF99C
        80A9DFAB778BA82970C43B102A2216ACCBB0F5A8D81CEBAA0A48804D0A0DD2AD
        18828947A4CED48DA30158C78BA009B40B4108736475020ADDFAAE7193E67243
        8347CF850374D6A2100748B0B5AAB5209B0EC0EA88BE1861E2684DA85FCC1C0A
        C00C010E01D040DA0986E5FC39381601C1D4D88CD7C06CCC453C02A390559259
        80F46C70978BDFCEB0E65C17E16831220394A2C7305424496FDEC2C928FAA8D2
        7062E9C2E76372E617E66DF9FC83558B8AF72EB7DB6CB90681E95AFD05A7D0AE
        398FD74069D6EB0528DBB8A2AB18B2A8FB6557780A4C7FAD3E2C5B38597F91C5
        D8847DF9AB7372ED2BF3328B001400A0D9F3163342D272F664A52D7B6E010714
        2986F723549274E0EF34AF70F5D7CA1DACCCCFECAB4C9A3C29BD4892B4EDD8FC
        61F17BCB7615D96CF6F72104DE9D3F5EE826FD32B06B6242440022E6A1295921
        3194825928004B0F08ACCC9B02007600B1CC8417A7A4C32FE5129252942C7979
        A9E9847C67DE4D68A5A4CFA49A9A5A0C7F6A9888FA63641549B06ECE20382377
        C51E10114A16BF348089C0048C1DF7B49A5BACA02BCAD71503687FD03150FEE3
        6E32C9C9A8218922C79010164361CDBDB6B3A4304B3BD087984120B4B4B5634C
        AA82E042E99762EF8E8F0D88871206C92BAE1BA4EDE7880026A15552B26E25CB
        D931162EDD0D2925D62C9B368865A70352129A5BBD7876EC68352E9024C537BB
        3E5310DE871F188C51A9D30006281280C7ED41A85617660A7421218476B01FB1
        04311B00CC0A4262F88827E1F57A1729272AF76C30201A1A5C10B0450660B038
        53FB2DBA2941C4AAB06A4280183E29D174B3158F272529A87C4924BEDFB7A9F8
        D2E9C3BD01F89303F35D02C4C5E91876174082C870C0B0B7A5B90DEDB7DBE185
        40E2D064F8FD324FFA7DFCE3775B560368DBB773BDDF8C1487A6801F1B3651C7
        F06E240C00C90680DFE7474BAB17AD6D5EC0FC616BBAD586A427922189F29908
        55FBCB4A00B42A27BA4C0198BBEF80613FE1E6AD16DCBEED834D0004C0113740
        6F05A3468F0493CC9792F8F00FE5AB94130064580A06DFFD31087D2749E8E8F0
        A12D1043BBDD86D8183B7A05AEB56B3E0DCC77003A472CD03BB6EFA2B489B3DB
        0FEDDF5ADC05000CDB52D266A8111A1B1B71E1D401A3D0C8D457CC14B2F17924
        310D174F1FBACF002082DF4F10361BC8E7C3B69D153C73D60C3164C8A3385475
        60D5F123FB369A3BF69B97170085A5A0B1A121F85B6FD6D2BA1E58D3131C5C13
        1AC080E8F0A26247C5D5068FE7E4DFF597272507CEBEC6593B15C07A00CD003A
        0090E5C27FFDD74CFFA1110360F08417DEB85690FF16D6ACDD70A5B6FA60766C
        9F7E7129CF8CFF6ACE9C6C949696A3EE44F5F4BA9A0395A60B04CBF66CE8B988
        89B06EFDA6FABA1347A6FE75E9D4E9737F1C735EFEF3F2C9EB8D8D484C4A44FF
        01F1390A56A72B2D23477BDB630052B64AE9BFF05BEDD1CC8BE77E3D0BA045C5
        ACB5B9A9ECE83127FA0FEC0F7BAF98746BB499ADDF843D0768F7B8EA33CE9F3D
        7E15804F5B7CFE4CF5F63EFD062EA83EEA74B7B4DCF80440BBB65DD7EF690F40
        37A1E924EBE2E6736F7599E30EB3F3A506D4FA1744E0C90011C5A7EA00000000
        49454E44AE426082}
      AutoGrayScale = False
    end
    object dxbrlrgbtn5: TdxBarLargeButton
      Action = act_export
      Category = 0
      LargeGlyph.SourceDPI = 96
      LargeGlyph.SourceHeight = 32
      LargeGlyph.SourceWidth = 32
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001F744558745469746C65004578706F72743B58736C743B4578706F72
        74546F58736C743B13D67B9B0000067049444154785EC5577B6C954516FFCD77
        1FBDA5484B415BA8A091006214159325A2C0F248844A24BBD94DFF10A3F21016
        B4CA4343F1C12D9AF090C49280DA82846C58962C7F98803CFEF0150931646948
        36A2595C0C6A500A02A6A5BDED9D99333BDFF9E67E13CAE5CA7FCEEDC9996FBE
        C939BFF33B67CE7C15D96C167E00F659B8A9D7454689770600593B56971E6BD7
        AE45B298D12DBB8E7D8C404C1326B20632101030FC63AF3CE3BF507821F2D7F9
        6BD79BD995F5EB2C0002607E0B48B248F402424C6B7CEA61941AF9BC82D40425
        35FAA4422EA770F14A0F3ABB72AFAF5EFFA1D8D0F4A7750074C8F0D7A7CF9B71
        A36BD0DCDC5C02801711C50928B23A94003014B15D78A7290A9A204046F0DECF
        8F9FC1CA0553D09D93AFBD94DD275AB27F0D41A87BC6D4C2D881222340B1A10D
        2B43913B2244F41BC4B4078900F60F49AB93410001425F5EB28169934663EAA4
        71AF2E69DABD16400A4020ECB8590062E20323220046B822708E61FCDC108220
        B00288846026FA72797E9DB0A0663E3AD6CA7D6BE62FDF1983F005EE4594AD7F
        F61361C47463224E63A68C8021CD2E051990D3FCE3BDC20AF1FBC923C7E18359
        CFA375CF316C6A9A0BA50D3419D6073FFE0F0E1C39BEFE1FEFFE2D4C872C9C10
        7F0A0CA697DF5107221D45E6924B442C30A13648104580FAAD0746E0E8D96F60
        4206FA248408D3221004C2326130F7B1F120AD9A647E0BFEB5E3C52CF3E77965
        005C68171A9A51B5FD255C5EF00E065B7D69610BAADB1A01D27879423D563D38
        9BA31FDABA0C1D0BB7E2B6D6A5F879D1360C7B7F291B4A952550794B068B57EF
        01913FA2E164F6F47B31F6EE314D00DE02A0AF3B056488ABDC700A8463C02AC7
        CAAA09B3716B6B23C8A8E89D0104C1EDE78D189049E399864770B5A717F9BC84
        5606521194D64872FD9DE7F2B8AE0899564DD870F2B08D7E0B36B41F62C3BED1
        186C3A71081D8B5AA26732D8DC7E10E7166FC3E6130701D7A0D2C9888161B756
        E2F6DA6AD4D554A1AEB62AD2C3AAA03571CD39F100A28C18BCF2C02C546F6FC4
        2B0FCE02AFB9E8C8CAC6131F3188F3967A1061C5847A4BFD12AC78E871D70AC1
        B94FA71248A713C8645228AF48A3C2CAC08A321602156DDD49C374FB13C0BE49
        59012E2CDA6A1D1FE6FC933178BBDD45CC4E85670A70EBACA3420C5C6C104825
        0548A13800403080C1DB1BD9E090B617580F6D5BC64E6165E3BFF7039A0ABD80
        A31746A0CE16A2F3CA8A043C7BDC7D029880B85911E91B3270247FAE63165B88
        8BAA1025B9C8C8390AACD20E881F3346DD0FF8CBC90DC3F340080866A3780AAE
        B98EED3C0160C0675F7EDB3975E22874F54876249C43137B16F1A2D204F20DCC
        374EA2989981E5291C3DFE2DE6CC1C3F1C4027803E6EF87614BD8C3E3DF63F84
        008CB348AC39061F1D01A43576EC3D8CEFBEFF193D977EC1C811C3A149434B0D
        49122A6FB5929052414989FABF34FE941938084AC9A3FB776F9C0140F6072042
        519A62E7BAFF25E6E987D41A67CE9EC39D3583F1D5850EAC689C07B79DB561ED
        797966E1CB1873D7089CFAEF99C9AE07C9A20C309DECDC3B43BFDC1A21B82768
        A59809AD35AF5FFC35078AEF0CA0E1CF4F7231EEDEF7776825F1C38F3F59ADE2
        8BB0280022EDC3103E0ACF40A15B6A28A5A034EB70899D5394227E4E26931854
        391435D515BC8788589704E00AC8E5DE49AC7C3172BE43002AD4928B51137890
        3B8AA97406A9F20C8C31CC121195644084A235BBB8B6B2792EFC3721D36FC531
        2095747B09863CEEB65DEFA1764805B3A1950669BA9914F8C2731862E720C39A
        F81C111B552AA275DED3CBA3F6CD451C6A1D3141C4C158710C680FA0D8E7B821
        E32B99FC5730F53B09A49901969AE175AE9739678542F420B83E58746906A063
        2385E7E8FEF5B5107536ADC3FC4B281D45F5CFED59941A731A962311A4B8164A
        D600695F483E15011CA2980B32C405C88D268A0A97BBFA00E36922C127860DCB
        BE3C900E3845C5013866C9689E540D4C59DDBFBF7BFBBDDD0990522C4A4A0FDA
        786BC6F81395CFE79148963173A500C87C6FEE8BE7D7EC9D127F86B37297147C
        8B9BFC87BAB80F486BFC8D03A739C7CA8AD670DA700A297CB67B284320A2A245
        68AC1080DE9D2DF39F0050062051EA7FC49D40CD1FEB9F6B978A98DE415595D0
        EC340221ADD605012095425F6FAE7051891B3200F0FE1C6F2A3D28D7D3D9FEFD
        D9FC43E95412C73E3B153997516B96562BA5F999EF1729D17DB5CB82E83EC9F6
        FB5FC7458E644971015402A8604AFD10C5E771397403B8628C917CF1FC9EE3FF
        26DBD20BE1EECF7F0000000049454E44AE426082}
      AutoGrayScale = False
    end
    object dxbrlrgbtn6: TdxBarLargeButton
      Action = act_close
      Category = 0
      LargeGlyph.SourceDPI = 96
      LargeGlyph.SourceHeight = 32
      LargeGlyph.SourceWidth = 32
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001D744558745469746C6500436C6F73653B457869743B426172733B52
        6962626F6E3B4603B9E80000067749444154785EC5975B8C955715C77FFB0C03
        33C3CC30F70B3894D62284526BB11A630CC6041F7C6C4C7CD0686234B16AD486
        165B07DBDADA02112592A8313ED4C4F8A0D6A4DE22314D0DB4182EA558532816
        2D22B470E6C2309773CE9CF9F65E6B393D7B67BE1C652693F0E097AC597BCF5E
        7BFEFFBDD67FAF6F3E6766FC3F1F0770F9E03E3018BAFF61B79CF89B347BFDA9
        C76CD3EEC77302970EEC61FDCE6197E685E4DD32C1DD32095B320134590A48C0
        A71F7DE823ED4D4D7B0BCEDD0386A56DC983190BBF27CE359F80FDF71E4BD105
        30C58B9E1E2B9586771CFCD19F8100D80AF2A7D0DEB8F2E7BD3B3EDCDFD4DF07
        66C93402A9C6B128A6423E5630C14440051305115403A8804433152A2313DBEC
        EF6FFE0CB805904420CF8006E95FD1A8CC9E394D7E4CB0053244AF8699629A08
        461F89A962D1D2389153452B152C843EA021619267009C7A8F56CA58F0398184
        8D691A5B1D09CC52161493E823B8448212308D6B966584CCE7A5AF2700E23D16
        32340BE4E84490E4731239789E811CDCC4C0847C2E48F048161625E0240B98F7
        98CF484F0E080BBAB01AB0E1EAB220A0D19B1AA4AC246DA02258E611BF0481AC
        5CAE9D5E7D96C7249957CB555E7DFE38D72E1719BC7D3D776C7F2F858602A812
        7CE0CC9153BCF9FA45BAD7F572D7F66DAC6C5A1949254226010D9EB9E952DD15
        2DE413A88E5F271B29A273199AF91A11F59EEA7489D3BF3F4CF5F6BBE97DE400
        93ED6B79F9D00BF86A153F57E5D4A11799EA1C62ED933FC06F7E3F27FE78B4B6
        C7BC47BD60B5BF13C826AE53199FACCB40A14E8462F8B12295F3E70853939144
        F09C3DFC126CFB10FD9FF80C1BDFBD89ADBB86C9D66DE2AF7F3A366FC7999B1F
        F77FEE2BDCBA752377DDBF93E60F7E94578FFE0D4DE5947285AC78856C6A0A09
        8B8BD0A92A1A02522933FBC6795C4B0B8D1D5D4C8F4CB0FDE01798758D74AE69
        056714767D8333FBF71244E9FBEC971918E8A2A7BB1DCCD8FEE0D7F8CD8EDF12
        A6A791D20C9A650BFA5065895BA0D408980866C0CC0C3253A27BB08B0B3FF921
        DBBEF908D54C5185EEDE0EEED835CCE454998E8E56BA3BDB30355A9B1A38F1E4
        77E85BD743363E1E819D81827A41040016C98045118A000E4B22DC706B2FFF7C
        E5255ED9B787F73C3C4CA92A007477B7D3356F0006B4AD6AE0D413DF62F2E563
        6CB9733DFEDA0446EA98383404546B902EDA0D4A60C1C7A6913722B2F131DEB9
        7980F3C75EE0E4E3199BBFBE1B289007818A727CEF134C1D7F912D77DF46363A
        927A972E5C5D1545456E2842072022484DFD310BF33E9209816A710424303131
        C3D8580904C85F0FA8417966164CA85CB9124BF9B6F9B7BDD4C61A04D1254BA0
        A9040ACE812AE662CFBF3452267BD73DB47FEA4B980331C320B1886719FAEA43
        9CDFFF6D2EBC76820D036D14483116332AF525A8F9FFD180F92C3277907E50BC
        EEF19BDF47DB27EFA36FA08BAE8ED598291DAB1B311A982C790CA5ABAB8D8D0F
        ECE68D034F71F9DC4986BA9A2338402A81AA2E710B4408998F6D137016395432
        E3CE9DBB28DB8A080E74B4347266FF1ECCA8F585899207A0B3AB9D0F3CFA1847
        EEFD182A010052EB560D4890A5FA00988F41CE81A9033356B736537DFE776CF8
        F4E7295703EDCD2B38F7BD7D4CFCE50866C659075B1E1C66BAE2696D5EC9BF9E
        7E9AB6B6164C322C7F8322216601E086B74044109F45D11891048E819E162E3D
        FB0C00B7DDFB71CE7EF7C75C3B7684A1C13560C6E5A38779CD8CADF77D917FFC
        F4192EFEFA97AC5FDB811F1F4D2F2B0043832C5A02B7A0816A2C010089443636
        CA3BFAFB29FEE1592EFCEA17B4B63633D8B39AF2BCDA01D6F6F5317AF228879E
        7B8E96E6466E59D7493636827AC1111B91295810546CA94EA804B15A20712B0E
        301364E42A7DBD3D340CAC21944A54E7C193C699BD7295DE9E6E06FBFA91D92A
        95AB45508F012AA49328228A982EAE0113C1BCA1AAB9789C8B3E134A6FBD05EA
        A23AB1DAD8A5D3558A455052DB755804A2FEFF08C144EAFB40CE06276AE88206
        1C140C97440409D80073092892A4000818699ED62001E330334414155DB4159B
        88C43AA944ACA41F88DED51D2A6581024E351E32464512A4B95A0EA00BD9B568
        39010344828C8C5D9FEB6F2A7854638CA9D5A71250E728600BEC345F8B802ECE
        AD6E9FA39C15F0AAA340A8D70028307771B6F2409055DF2FD0D403F9FDD5046C
        B9C7CCE52932F2960BD1CCF23514C321A6D7FE9DCDEE02AA40DE91926F005601
        4DB93670CBFC1473CBFC34F3097CF6465F469216B2A5406EC22CC7216F873705
        72F364F80FA3C7188E64BF0D450000000049454E44AE426082}
      AutoGrayScale = False
    end
  end
  object dlgSave1: TSaveDialog
    Filter = 'Excel2007'#20197#19978'|*.xlsx'
    Left = 920
    Top = 456
  end
  object cxstylrpstry1: TcxStyleRepository
    Left = 592
    Top = 24
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
end
