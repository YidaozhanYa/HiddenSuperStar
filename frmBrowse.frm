VERSION 5.00
Object = "{7020C36F-09FC-41FE-B822-CDE6FBB321EB}#1.2#0"; "VBCCR17.OCX"
Object = "{A2A736C2-8DAC-4CDB-B1CB-3B077FBB14F9}#6.2#0"; "VB6Resizer2.ocx"
Begin VB.Form frmBrowse 
   BackColor       =   &H80000005&
   Caption         =   "���ص��޵��� - ������߹ؿ�"
   ClientHeight    =   7740
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   11640
   BeginProperty Font 
      Name            =   "Microsoft YaHei UI Light"
      Size            =   10.5
      Charset         =   134
      Weight          =   290
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmBrowse.frx":0000
   LinkTopic       =   "���ص��޵��� - ����ؿ�"
   ScaleHeight     =   7740
   ScaleWidth      =   11640
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton cmdDownloadNinji 
      Caption         =   "����!"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   10.5
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   8400
      TabIndex        =   12
      Tag             =   "TL"
      Top             =   7080
      Width           =   1455
   End
   Begin VB.CommandButton cmdRandomWorld 
      Caption         =   "�������"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   11
      Top             =   7080
      Width           =   855
   End
   Begin VB.CommandButton cmdCopyID 
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   9960
      TabIndex        =   10
      Tag             =   "TL"
      Top             =   7080
      Width           =   735
   End
   Begin VB.TextBox txtPlayer 
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   9
      Tag             =   "T"
      Text            =   "�������"
      Top             =   7080
      Width           =   3735
   End
   Begin VB.CommandButton cmdMakerInfo 
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   10800
      TabIndex        =   8
      Tag             =   "TL"
      Top             =   7080
      Width           =   735
   End
   Begin VBCCR17.ComboBoxW cbCount 
      Height          =   375
      Left            =   2760
      TabIndex        =   7
      Tag             =   "T"
      Top             =   7080
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Microsoft YaHei UI Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Text            =   "frmBrowse.frx":54AA
   End
   Begin VB.CheckBox chkPicture 
      BackColor       =   &H80000005&
      Caption         =   "��ʾͼƬ"
      Height          =   300
      Left            =   5160
      TabIndex        =   6
      Tag             =   "T"
      Top             =   7110
      Width           =   1215
   End
   Begin VB.CommandButton cmdDownload 
      Caption         =   "����!"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   10.5
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   8400
      TabIndex        =   5
      Tag             =   "TL"
      Top             =   7080
      Width           =   1455
   End
   Begin VB.CommandButton cmdRefresh 
      Caption         =   "ˢ��"
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4080
      TabIndex        =   3
      Tag             =   "T"
      Top             =   7080
      Width           =   975
   End
   Begin VBCCR17.ComboBoxW cbDiff 
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Tag             =   "T"
      Top             =   7080
      Width           =   2415
      _ExtentX        =   4260
      _ExtentY        =   661
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Microsoft YaHei UI Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Text            =   "frmBrowse.frx":54CC
      ExtendedUI      =   -1  'True
   End
   Begin VBCCR17.ListView lst 
      Height          =   6375
      Left            =   240
      TabIndex        =   1
      Tag             =   "HW"
      Top             =   600
      Width           =   7935
      _ExtentX        =   13996
      _ExtentY        =   11245
      SmallIcons      =   "imgLstIcons"
      View            =   3
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      LabelEdit       =   1
      AutoSelectFirstItem=   0   'False
   End
   Begin VBCCR17.TabStrip TabStrip1 
      Height          =   7455
      Left            =   120
      TabIndex        =   0
      Tag             =   "HW"
      Top             =   120
      Width           =   8175
      _ExtentX        =   14420
      _ExtentY        =   13150
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź� Light"
         Size            =   10.5
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   -2147483643
      InitTabs        =   "frmBrowse.frx":54F8
   End
   Begin VB6ResizerLib2.VB6Resizer VB6Resizer1 
      Left            =   720
      Top             =   7080
      _ExtentX        =   529
      _ExtentY        =   529
   End
   Begin VBCCR17.ImageList imgLstIcons 
      Left            =   8400
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      ImageWidth      =   16
      ImageHeight     =   16
      UseBackColor    =   -1  'True
      InitListImages  =   "frmBrowse.frx":5BEC
   End
   Begin VB.Label lblCourse 
      BackStyle       =   0  'Transparent
      Caption         =   "ѡ��ؿ��Բ鿴ϸ��"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   10.5
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4455
      Left            =   8400
      TabIndex        =   4
      Tag             =   "LH"
      Top             =   2520
      Width           =   3135
   End
   Begin VB.Image imgCourse 
      BorderStyle     =   1  'Fixed Single
      Height          =   1935
      Left            =   8400
      Stretch         =   -1  'True
      Tag             =   "L"
      ToolTipText     =   "����鿴��ͼ"
      Top             =   600
      Width           =   3135
   End
End
Attribute VB_Name = "frmBrowse"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public Difficulty As New Dictionary, DifficultyEx As Variant, oJson As Object, LoadCompleted As Boolean, PreviousTab As Integer
Attribute DifficultyEx.VB_VarUserMemId = 1073938432
Attribute oJson.VB_VarUserMemId = 1073938432
Attribute LoadCompleted.VB_VarUserMemId = 1073938432
Attribute PreviousTab.VB_VarUserMemId = 1073938432

Private Sub cbCount_Click()
    WriteIni "HiddenSuperStar", "CountPerPage", cbCount.text, App.Path & "\Config.ini"
End Sub

Private Sub chkPicture_Click()
    Select Case chkPicture.Value
    Case 1
        ShowPicture = True
        imgCourse.Visible = True
        lblCourse.Height = 4335
        lblCourse.Top = 2640
        WriteIni "HiddenSuperStar", "ShowPicture", "True", App.Path & "\Config.ini"
    Case 0
        ShowPicture = False
        imgCourse.Visible = False
        lblCourse.Height = 6495
        lblCourse.Top = 480
        WriteIni "HiddenSuperStar", "ShowPicture", "False", App.Path & "\Config.ini"
    End Select
End Sub

Private Sub cmdCopyID_Click()
    Clipboard.SetText PrettyID(lst.SelectedItem.Tag)
    MsgBox PrettyID(lst.SelectedItem.Tag) & " ���Ƴɹ�!"
End Sub

'���عؿ�
'FOLDED: Private Sub cmdDownload_Click ()

'���ع���ؿ�
'FOLDED: Private Sub cmdDownloadNinji_Click ()

Private Sub cmdMakerInfo_Click()
    Dim Course As Variant
    If frmBrowse.lst.SelectedItem.SubItems(2) = "�����ĵȴ�" Then Exit Sub
    For Each Course In oJson("courses")
        If Course("course_id") = lst.SelectedItem.Tag Then
            frmPlayer.PlayerInfo Course("uploader")
            Exit For
        End If
    Next Course
End Sub

Private Sub Form_Load()
    On Error Resume Next
    LoadCompleted = False
    Me.Caption = "���ؤ��޵��� " & App.Major & "." & App.Minor & "." & App.Revision & " - ���߹ؿ�"
    lst.ZOrder
    cbDiff.Clear
    cbDiff.AddItem "��", 0
    cbDiff.AddItem "��ͨ", 1
    cbDiff.AddItem "����", 2
    cbDiff.AddItem "����", 3
    cbDiff.text = "��ͨ"
    cbCount.Clear
    cbCount.AddItem "10"
    cbCount.AddItem "15"
    cbCount.AddItem "20"
    cbCount.AddItem "25"
    cbCount.AddItem "30"
    cbCount.AddItem "40"
    cbCount.AddItem "50"
    cbCount.AddItem "60"
    cbCount.AddItem "80"
    cbCount.AddItem "100"
    CountPerPage = GetIni("HiddenSuperStar", "CountPerPage", App.Path & "\Config.ini")
    cbCount.text = CountPerPage
    Difficulty.Add "��", "e"
    Difficulty.Add "��ͨ", "n"
    Difficulty.Add "����", "ex"
    Difficulty.Add "����", "sex"
    ReDim DifficultyEx(0 To 4)
    DifficultyEx(0) = "��"
    DifficultyEx(1) = "��ͨ"
    DifficultyEx(2) = "����"
    DifficultyEx(3) = "����"
    chkPicture.ZOrder
    LoadCompleted = True
    Select Case GetIni("HiddenSuperStar", "ShowPicture", App.Path & "\Config.ini")
    Case "True"
        chkPicture.Value = 1
        ShowPicture = True
        imgCourse.Visible = True
        lblCourse.Height = 4335
        lblCourse.Top = 2640
    Case "False"
        chkPicture.Value = 0
        ShowPicture = False
        imgCourse.Visible = False
        lblCourse.Height = 6495
        lblCourse.Top = 480
    End Select
    frmBrowse.Show
    DoEvents
    LoadEndless
End Sub

Private Sub imgCourse_Click()
    Shell "cmd /c start " & Chr(34) & Chr(34) & " " & Chr(34) & "https://tgrcode.com/mm2/level_entire_thumbnail/" & lst.SelectedItem.Tag & Chr(34)
End Sub


Private Sub lst_Click()
    On Error GoTo ErrHandler
    Dim Course As Variant
    '���عؿ�ϸ��
    '��ȡ����ؿ�
    If TabStrip1.SelectedItem.Key = "ninji" Then
    Debug.Print "Ninji Mode!"
        For Each Course In oJson("courses")
            If CStr(Course("data_id")) = CStr(lst.SelectedItem.Tag) Then
                lblCourse = Course("name") & vbCrLf _
                          & Course("game_style_name") & " " & ConvertLevelTheme(CStr(Course("theme_name"))) & vbCrLf _
                          & "��ʼ: " & Course("uploaded") & vbCrLf _
                          & "����: " & Course("end_time") & vbCrLf _
                          & "���: " & Replace(Course("description"), "\n", "")
                Exit For
            End If
        Next Course
        DoEvents
    Else
        For Each Course In oJson("courses")
            If Course("course_id") = lst.SelectedItem.Tag Then
                lblCourse = Course("name") & vbCrLf _
                          & "ID: " & PrettyID(lst.SelectedItem.Tag) & vbCrLf _
                          & Course("game_style_name") & " " & ConvertLevelTheme(CStr(Course("theme_name"))) & vbCrLf _
                          & Course("uploaded_pretty") & vbCrLf _
                          & DifficultyEx(Course("difficulty")) & "  " & Course("clear_rate") & vbCrLf _
                          & Course("likes") & "��, " & Course("boos") & "ث" & vbCrLf _
                          & "��ǩ:" & PrettyTag(CInt(Course("tags")(1))) & ", " & PrettyTag(CInt(Course("tags")(2))) & vbCrLf _
                          & "���: " & Replace(Course("description"), "\n", "")
                Exit For
            End If
        Next Course
        DoEvents
        If ShowPicture Then
            imgCourse.Picture = LoadPicture("https://tgrcode.com/mm2/level_thumbnail/" & lst.SelectedItem.Tag)
        End If
    End If
    Exit Sub
ErrHandler:
    Exit Sub
End Sub

'��ǩ�ж���أ�������
'FOLDED: Private Sub TabStrip1_TabClick (ByVal TabItem As VBCCR17.TbsTab)
'FOLDED: Private Sub cmdRefresh_Click ()


'����
'FOLDED: Private Sub LoadPopular ()

'���
'FOLDED: Private Sub LoadPlayer ()

'ID����
'FOLDED: Private Sub LoadID ()

'����
'FOLDED: Private Sub LoadNew ()

'��ҳ ���
'FOLDED: Private Sub LoadEndless ()

'��������
'FOLDED: Private Sub LoadWorld ()

'����
'FOLDED: Private Sub LoadNinji ()

Private Sub VB6Resizer1_AfterResize()
    On Error Resume Next
    If ShowPicture Then lblCourse.Top = 2640
    If LoadCompleted Then lst.ColumnHeaders(3).Width = 5500 + (frmBrowse.Width - 11760)
End Sub


























'�Ѿ��۵��Ĵ���:
Private Sub cmdDownload_Click()
    If lst.SelectedItem.SubItems(2) = "�����ĵȴ�" Then Exit Sub
    Select Case MsgBox("�⽫���� " & lst.SelectedItem.SubItems(2) & " ���� " & frmMain.lstLocal.SelectedItem.SubItems(2) & " ��" & vbCrLf & "ȷ����������ؿ���", vbYesNo, "���عؿ�")
    Case vbYes
        frmDummy.DownloadWindow
        DoEvents
        Call URLDownloadToFile(0, "https://tgrcode.com/mm2/level_data/" & lst.SelectedItem.Tag, SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag & "_progress", 0, 0)
        If CheckFileExists(SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag & "_progress") Then
            Kill SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag
            Sleep 20
            Name SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag & "_progress" As SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag
            With New MD5Hash
                Kill Environ("Temp") & "\HSSTemp\" & LCase(.HashBytes(StrConv(SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag, vbFromUnicode))) & ".json"
            End With
            frmDummy.Hide
            MsgBox "������ɣ�", vbInformation
            frmMain.LoadLocalLevels
        Else
            MsgBox "���ִ�����������������ӡ�", vbCritical
            End
        End If
    Case vbNo
        Exit Sub
    End Select
End Sub
Private Sub cmdDownloadNinji_Click()
    If lst.SelectedItem.SubItems(2) = "�����ĵȴ�" Then Exit Sub
    Select Case MsgBox("�⽫���� " & lst.SelectedItem.SubItems(2) & " ���� " & frmMain.lstLocal.SelectedItem.SubItems(2) & " ��" & vbCrLf & "ȷ����������ؿ���", vbYesNo, "���عؿ�")
    Case vbYes
        frmDummy.DownloadWindow
        DoEvents
        Call URLDownloadToFile(0, "https://tgrcode.com/mm2/level_data_dataid/" & lst.SelectedItem.Tag, SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag & "_progress", 0, 0)
        If CheckFileExists(SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag & "_progress") Then
            Kill SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag
            Sleep 20
            Name SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag & "_progress" As SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag
            With New MD5Hash
                Kill Environ("Temp") & "\HSSTemp\" & LCase(.HashBytes(StrConv(SavePath & "\" & frmMain.lstLocal.SelectedItem.Tag, vbFromUnicode))) & ".json"
            End With
            frmDummy.Hide
            MsgBox "������ɣ�", vbInformation
            frmMain.LoadLocalLevels
        Else
            MsgBox "���ִ�����������������ӡ�", vbCritical
            End
        End If
    Case vbNo
        Exit Sub
    End Select
End Sub
Private Sub LoadNinji()
    Dim Course As Variant, CC As Integer
    '����
    Me.MousePointer = 11
    cbDiff.Visible = False
    txtPlayer.Visible = False
    cmdDownloadNinji.Visible = True
    cmdDownload.Visible = False
    cmdRandomWorld.Visible = False
    cmdRefresh.Visible = True
    cmdRefresh.Caption = "ˢ��"
    cbCount.Visible = False
    chkPicture.Visible = True
    cmdMakerInfo.Visible = False
    cmdCopyID.Visible = False
    lst.ColumnHeaders.Clear
    lst.ColumnHeaders.Add 1, "Icon", "", 400
    lst.ColumnHeaders.Add 2, "GameStyle", "�汾", 1000
    lst.ColumnHeaders.Add 3, "CourseName", "�ؿ�", 6000
    'With lst
    '.BorderStyle = 3
    '.Height = 6375    '6855
    '.Left = 240
    '.Top = 600
    '.Width = 7935
    'End With
    DoEvents
    '��ȡ
    lst.ListItems.Clear
    DoEvents
    lst.ListItems.Add , , " ", 0
    lst.ListItems(1).SubItems(1) = "������ ..."
    lst.ListItems(1).SubItems(2) = "�����ĵȴ�"
    DoEvents
    Set oJson = JSON.parse(xhrGet("https://tgrcode.com/mm2/ninji_info"))
    lst.ListItems.Clear
    For Each Course In oJson("courses")
        CC = lst.ListItems.Count + 1
        DoEvents
        lst.ListItems.Add , , "", , Course("game_style_name")
        lst.ListItems(CC).SubItems(1) = Course("game_style_name")
        lst.ListItems(CC).SubItems(2) = Course("name")
        With lst.ListItems(CC)
            .ToolTipText = Course("name")
            .Tag = CStr(Course("data_id"))
            Debug.Print .Tag
        End With
    Next Course
    Me.MousePointer = 0
End Sub
Private Sub LoadPopular()
    Dim Course As Variant, CC As Integer
    '����
    Me.MousePointer = 11
    cbDiff.Visible = True
    cmdRandomWorld.Visible = False
    txtPlayer.Visible = False
    cmdRefresh.Visible = True
    cmdDownload.Visible = True
    cmdDownloadNinji.Visible = False
    cmdRefresh.Caption = "ˢ��"
    cbCount.Visible = True
    chkPicture.Visible = True
    cmdMakerInfo.Visible = True
    cmdCopyID.Visible = True
    lst.ColumnHeaders.Clear
    lst.ColumnHeaders.Add 1, "Icon", "", 400
    lst.ColumnHeaders.Add 2, "GameStyle", "�汾", 1000
    lst.ColumnHeaders.Add 3, "CourseName", "�ؿ�", 6000
    'With lst
    '.BorderStyle = 3
    '.Height = 6375    '6855
    '.Left = 240
    '.Top = 600
    '.Width = 7935
    'End With
    DoEvents
    '��ȡ
    lst.ListItems.Clear
    DoEvents
    lst.ListItems.Add , , " ", 0
    lst.ListItems(1).SubItems(1) = "������ ..."
    lst.ListItems(1).SubItems(2) = "�����ĵȴ�"
    DoEvents
    Set oJson = JSON.parse(xhrGet("https://tgrcode.com/mm2/search_popular?count=" & CountPerPage & "&difficulty=" & Difficulty(cbDiff.text) & "&rejectRegions="))
    lst.ListItems.Clear
    For Each Course In oJson("courses")
        CC = lst.ListItems.Count + 1
        DoEvents
        lst.ListItems.Add , , "", , Course("game_style_name")
        lst.ListItems(CC).SubItems(1) = Course("game_style_name")
        lst.ListItems(CC).SubItems(2) = Course("name")
        With lst.ListItems(CC)
            .ToolTipText = Course("name")
            .Tag = Course("course_id")
        End With
    Next Course
    Me.MousePointer = 0
End Sub
Private Sub LoadPlayer()
    Dim Course As Variant, CC As Integer, PlayerID As String, RetVal As String
    '����
    Me.MousePointer = 11
    cbDiff.Visible = False
    cmdRandomWorld.Visible = False
    cmdDownloadNinji.Visible = False
    cmdDownload.Visible = True
    cmdRefresh.Visible = True
    txtPlayer.Visible = True
    cmdRefresh.Caption = "�ٴ�����"
    cbCount.Visible = False
    chkPicture.Visible = True
    cmdMakerInfo.Visible = True
    cmdCopyID.Visible = True
    lst.ColumnHeaders.Clear
    lst.ColumnHeaders.Add 1, "Icon", "", 400
    lst.ColumnHeaders.Add 2, "GameStyle", "�汾", 1000
    lst.ColumnHeaders.Add 3, "CourseName", "�ؿ�", 6000
    'With lst
    '.BorderStyle = 3
    '.Height = 6375    '6855
    '.Left = 240
    '.Top = 600
    '.Width = 7935
    'End With
    DoEvents
    '����
    PlayerID = Replace(Replace(InputBox("���������ID����������ܾ��ɣ�", "����"), "-", ""), " ", "")
    If Len(PlayerID) <> 9 Then MsgBox "��������ȷ�����ID", vbCritical: frmBrowse.MousePointer = 0: Exit Sub
    '��ȡ
    lst.ListItems.Clear
    DoEvents
    lst.ListItems.Add , , " ", 0
    lst.ListItems(1).SubItems(1) = "������ ..."
    lst.ListItems(1).SubItems(2) = "�����ĵȴ�"
    DoEvents
    RetVal = xhrGet("https://tgrcode.com/mm2/get_posted/" & PlayerID)
    If RetVal = "Error" Then Exit Sub
    Set oJson = JSON.parse(RetVal)
    lst.ListItems.Clear
    For Each Course In oJson("courses")
        CC = lst.ListItems.Count + 1
        DoEvents
        lst.ListItems.Add , , "", , Course("game_style_name")
        lst.ListItems(CC).SubItems(1) = Course("game_style_name")
        lst.ListItems(CC).SubItems(2) = Course("name")
        With lst.ListItems(CC)
            .ToolTipText = Course("name")
            .Tag = Course("course_id")
        End With
    Next Course
    txtPlayer.text = oJson("courses")(1)("uploader")("name") & " " & PrettyID(PlayerID)
    txtPlayer.ZOrder
    Me.MousePointer = 0
End Sub
Private Sub LoadID()
    Dim Course As Object, CC As Integer, CourseID As String, RetVal As String
    '����
    Me.MousePointer = 11
    cbDiff.Visible = False
    cmdDownloadNinji.Visible = False
    cmdRefresh.Visible = True
    txtPlayer.Visible = False
    cmdDownload.Visible = True
    cmdRandomWorld.Visible = False
    cmdMakerInfo.Visible = True
    cmdCopyID.Visible = True
    cmdRefresh.Caption = "�ٴ�����"
    cbCount.Visible = False
    chkPicture.Visible = True
    lst.ColumnHeaders.Clear
    lst.ColumnHeaders.Add 1, "Icon", "", 400
    lst.ColumnHeaders.Add 2, "GameStyle", "�汾", 1000
    lst.ColumnHeaders.Add 3, "CourseName", "�ؿ�", 6000
    'With lst
    '.BorderStyle = 3
    '.Height = 6375    '6855
    '.Left = 240
    '.Top = 600
    '.Width = 7935
    'End With
    DoEvents
    lst.ListItems.Clear
    DoEvents
    '����
    CourseID = Replace(Replace(InputBox("������ؿ�ID����������ܾ��ɣ�", "����"), "-", ""), " ", "")
    If Len(CourseID) <> 9 Then MsgBox "��������ȷ�Ĺؿ�ID", vbCritical: frmBrowse.MousePointer = 0: Exit Sub
    '��ȡ
    lst.ListItems.Add , , " ", 0
    lst.ListItems(1).SubItems(1) = "������ ..."
    lst.ListItems(1).SubItems(2) = "�����ĵȴ�"
    DoEvents
    RetVal = xhrGet("https://tgrcode.com/mm2/level_info/" & CourseID)
    If RetVal = "Error" Then Exit Sub
    Set oJson = JSON.parse("{" & Chr(34) & "courses" & Chr(34) & ":[" & RetVal & "]}")
    Set Course = oJson("courses")(1)
    lst.ListItems.Clear
    DoEvents
    lst.ListItems.Add , , "", , Course("game_style_name")
    lst.ListItems(1).SubItems(1) = Course("game_style_name")
    lst.ListItems(1).SubItems(2) = Course("name")
    With lst.ListItems(1)
        .ToolTipText = Course("name")
        .Tag = Course("course_id")
    End With
    Me.MousePointer = 0
End Sub
Private Sub LoadNew()
    Dim Course As Variant, CC As Integer
    '����
    Me.MousePointer = 11
    cbDiff.Visible = False
    txtPlayer.Visible = False
    cmdDownloadNinji.Visible = False
    cmdDownload.Visible = True
    cmdRandomWorld.Visible = False
    cmdRefresh.Visible = True
    cmdRefresh.Caption = "ˢ��"
    cbCount.Visible = True
    chkPicture.Visible = True
    cmdMakerInfo.Visible = True
    cmdCopyID.Visible = True
    lst.ColumnHeaders.Clear
    lst.ColumnHeaders.Add 1, "Icon", "", 400
    lst.ColumnHeaders.Add 2, "GameStyle", "�汾", 1000
    lst.ColumnHeaders.Add 3, "CourseName", "�ؿ�", 6000
    'With lst
    '.BorderStyle = 3
    '.Height = 6375    '6855
    '.Left = 240
    '.Top = 600
    '.Width = 7935
    'End With
    DoEvents
    '��ȡ
    lst.ListItems.Clear
    DoEvents
    lst.ListItems.Add , , " ", 0
    lst.ListItems(1).SubItems(1) = "������ ..."
    lst.ListItems(1).SubItems(2) = "�����ĵȴ�"
    DoEvents
    Set oJson = JSON.parse(xhrGet("https://tgrcode.com/mm2/search_new?count=" & CountPerPage))
    lst.ListItems.Clear
    For Each Course In oJson("courses")
        CC = lst.ListItems.Count + 1
        DoEvents
        lst.ListItems.Add , , "", , Course("game_style_name")
        lst.ListItems(CC).SubItems(1) = Course("game_style_name")
        lst.ListItems(CC).SubItems(2) = Course("name")
        With lst.ListItems(CC)
            .ToolTipText = Course("name")
            .Tag = Course("course_id")
        End With
    Next Course
    Me.MousePointer = 0
End Sub
Private Sub LoadEndless()
    Dim Course As Variant, CC As Integer
    '����
    Me.MousePointer = 11
    cbDiff.Visible = True
    cmdRandomWorld.Visible = False
    txtPlayer.Visible = False
    cmdDownloadNinji.Visible = False
    cmdRefresh.Visible = True
    cmdDownload.Visible = True
    cmdRefresh.Caption = "ˢ��"
    cbCount.Visible = True
    chkPicture.Visible = True
    cmdMakerInfo.Visible = True
    cmdCopyID.Visible = True
    lst.ColumnHeaders.Clear
    lst.ColumnHeaders.Add 1, "Icon", "", 400
    lst.ColumnHeaders.Add 2, "GameStyle", "�汾", 1000
    lst.ColumnHeaders.Add 3, "CourseName", "�ؿ�", 6000
    'With lst
    '.BorderStyle = 3
    '.Height = 6375    '6855
    '.Left = 240
    '.Top = 600
    '.Width = 7935
    'End With
    DoEvents
    '��ȡ
    lst.ListItems.Clear
    DoEvents
    lst.ListItems.Add , , " ", 0
    lst.ListItems(1).SubItems(1) = "������ ..."
    lst.ListItems(1).SubItems(2) = "�����ĵȴ�"
    DoEvents
    Set oJson = JSON.parse(xhrGet("https://tgrcode.com/mm2/search_endless_mode?count=" & CountPerPage & "&difficulty=" & Difficulty(cbDiff.text)))
    lst.ListItems.Clear
    For Each Course In oJson("courses")
        CC = lst.ListItems.Count + 1
        DoEvents
        lst.ListItems.Add , , "", , Course("game_style_name")
        lst.ListItems(CC).SubItems(1) = Course("game_style_name")
        lst.ListItems(CC).SubItems(2) = Course("name")
        With lst.ListItems(CC)
            .ToolTipText = Course("name")
            .Tag = Course("course_id")
        End With
    Next Course
    Me.MousePointer = 0
End Sub
Private Sub LoadWorld()
    Dim Course As Variant, CC As Integer, WorldID As String, RetVal As String
    '����
    Me.MousePointer = 11
    cbDiff.Visible = False
    cmdDownloadNinji.Visible = False
    cmdDownload.Visible = True
    cmdRandomWorld.Visible = True
    cmdRefresh.Visible = True
    txtPlayer.Visible = True
    cmdRefresh.Caption = "�ٴ�����"
    cbCount.Visible = False
    chkPicture.Visible = True
    cmdMakerInfo.Visible = True
    cmdCopyID.Visible = True
    lst.ColumnHeaders.Clear
    lst.ColumnHeaders.Add 1, "Icon", "", 400
    lst.ColumnHeaders.Add 2, "GameStyle", "�汾", 1000
    lst.ColumnHeaders.Add 3, "CourseName", "�ؿ�", 6000
    'With lst
    '.BorderStyle = 3
    '.Height = 6375    '6855
    '.Left = 240
    '.Top = 600
    '.Width = 7935
    'End With
    DoEvents
    '����
    WorldID = ""
    WorldID = InputBox("����������ID��" & vbCrLf & "����ID�������ID�������������ĳ����ҵ����磬��ȥ�����������ȥ��ȡ����ID��", "����")
    If WorldID = "" Then Me.MousePointer = 0: Exit Sub
    '��ȡ
    lst.ListItems.Clear
    DoEvents
    lst.ListItems.Add , , " ", 0
    lst.ListItems(1).SubItems(1) = "������ ..."
    lst.ListItems(1).SubItems(2) = "�����ĵȴ�"
    DoEvents
    RetVal = xhrGet("https://tgrcode.com/mm2/super_world/" & WorldID)
    If RetVal = "Error" Then Exit Sub
    Set oJson = JSON.parse(RetVal)
    lst.ListItems.Clear
    For Each Course In oJson("courses")
        CC = lst.ListItems.Count + 1
        DoEvents
        lst.ListItems.Add , , "", , Course("game_style_name")
        lst.ListItems(CC).SubItems(1) = Course("game_style_name")
        lst.ListItems(CC).SubItems(2) = Course("name")
        With lst.ListItems(CC)
            .ToolTipText = Course("name")
            .Tag = Course("course_id")
        End With
    Next Course
    txtPlayer.text = "Super " & oJson("courses")(1)("uploader")("name") & " World " & WorldID
    txtPlayer.ZOrder
    Me.MousePointer = 0
End Sub
Private Sub cmdRefresh_Click()
'ˢ��
    Select Case TabStrip1.SelectedItem.Key
    Case "popular"
        LoadPopular
    Case "new"
        LoadNew
    Case "endless"
        LoadEndless
    Case "id"
        LoadID
    Case "player"
        LoadPlayer
    Case "world"
        LoadWorld
    Case "ninji"
        LoadNinji
    End Select
End Sub
Private Sub TabStrip1_TabClick(ByVal TabItem As VBCCR17.TbsTab)
    PreviousTab = TabItem.Index
    Select Case TabItem.Key
    Case "popular"
        LoadPopular
    Case "new"
        LoadNew
    Case "endless"
        LoadEndless
    Case "id"
        LoadID
    Case "player"
        LoadPlayer
    Case "world"
        LoadWorld
    Case "ninji"
        LoadNinji
    End Select
End Sub
'�۵������ڴ˽���:






