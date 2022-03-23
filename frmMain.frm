VERSION 5.00
Object = "{7020C36F-09FC-41FE-B822-CDE6FBB321EB}#1.2#0"; "VBCCR17.OCX"
Object = "{A2A736C2-8DAC-4CDB-B1CB-3B077FBB14F9}#6.2#0"; "VB6Resizer2.ocx"
Begin VB.Form frmMain 
   BackColor       =   &H80000005&
   Caption         =   "���ص��޵��� - ���عؿ�"
   ClientHeight    =   7095
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   10320
   BeginProperty Font 
      Name            =   "Microsoft YaHei UI Light"
      Size            =   10.5
      Charset         =   134
      Weight          =   290
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7095
   ScaleWidth      =   10320
   StartUpPosition =   3  '����ȱʡ
   Begin VB6ResizerLib2.VB6Resizer VB6Resizer1 
      Left            =   7080
      Top             =   4560
      _ExtentX        =   529
      _ExtentY        =   529
   End
   Begin VB.CommandButton cmdSettings 
      Caption         =   "����"
      Height          =   495
      Left            =   9120
      TabIndex        =   6
      Tag             =   "TL"
      Top             =   5880
      Width           =   1095
   End
   Begin VB.CommandButton cmdShowPicture 
      Caption         =   "�鿴�ؿ�ͼƬ"
      Height          =   495
      Left            =   5760
      TabIndex        =   5
      Tag             =   "TL"
      Top             =   5880
      Width           =   1575
   End
   Begin VB.CommandButton cmdBrowse 
      Caption         =   "������߹ؿ�"
      Default         =   -1  'True
      Height          =   495
      Left            =   5760
      TabIndex        =   4
      Tag             =   "TL"
      Top             =   6480
      Width           =   1575
   End
   Begin VBCCR17.ListView lstLocal 
      Height          =   6855
      Left            =   120
      TabIndex        =   3
      Tag             =   "HW"
      Top             =   120
      Width           =   5535
      _ExtentX        =   9763
      _ExtentY        =   12091
      SmallIcons      =   "imgLstIcons"
      View            =   3
   End
   Begin VBCCR17.ImageList imgLstIcons 
      Left            =   4440
      Top             =   1560
      _ExtentX        =   1005
      _ExtentY        =   1005
      ImageWidth      =   16
      ImageHeight     =   16
      UseBackColor    =   -1  'True
      InitListImages  =   "frmMain.frx":54AA
   End
   Begin VB.CommandButton cmdAbout 
      Caption         =   "����"
      Height          =   495
      Left            =   9120
      TabIndex        =   2
      Tag             =   "TL"
      Top             =   6480
      Width           =   1095
   End
   Begin VB.CommandButton cmdChangeSave 
      Caption         =   "���Ĵ浵·��"
      Height          =   495
      Left            =   7440
      TabIndex        =   0
      Tag             =   "TL"
      Top             =   6480
      Width           =   1575
   End
   Begin VB.Label lblAboutCourse 
      BackStyle       =   0  'Transparent
      Caption         =   "��ѡ��һ���ؿ�"
      Height          =   5535
      Left            =   5760
      TabIndex        =   1
      Tag             =   "HL"
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public LoadCompletedM As Boolean
Private Sub cmdAbout_Click()
    frmAbout.Show
End Sub

Private Sub cmdBrowse_Click()
    frmBrowse.Show
End Sub

Private Sub cmdChangeSave_Click()
    SelectSavePath
End Sub


Private Sub cmdSettings_Click()
frmSettings.Show
End Sub

Private Sub cmdShowPicture_Click()
    ShellAndWait Chr(34) & App.Path & "\toost\bin\toost.exe" & Chr(34) & " -o " & Chr(34) & Environ("Temp") & "\HSSTemp\������.png" & Chr(34) & " -s " & Chr(34) & Environ("Temp") & "\HSSTemp\������.png" & Chr(34) & " -p " & Chr(34) & SavePath & "\" & lstLocal.SelectedItem.Tag & Chr(34)
    Shell "cmd /c start " & Chr(34) & Chr(34) & " " & Chr(34) & Environ("Temp") & "\HSSTemp\������.png" & Chr(34)
    Shell "cmd /c start " & Chr(34) & Chr(34) & " " & Chr(34) & Environ("Temp") & "\HSSTemp\������.png" & Chr(34)
End Sub

Private Sub Form_Activate()
On Error Resume Next
cmdBrowse.SetFocus
End Sub

Private Sub Form_Initialize()
    InitCommonControls
    '����
    'TGRCODE_API = "https://tgrcode.com"
    TGRCODE_API = GetIni("HiddenSuperStar", "ServerURL", App.Path & "\Config.ini")
    'ShellAndWait "cmd /c rd /s /q " & Chr(34) & Environ("Temp") & "\HSSTemp" & Chr(34)
    If Dir(Environ("Temp") & "\HSSTemp", vbDirectory) = "" Then MkDir Environ("Temp") & "\HSSTemp"
    '���������
    Dim CheckIntegrity As Boolean
    CheckIntegrity = False
    If CheckFileExists(App.Path & "\toost\bin\toost.exe") = False Then CheckIntegrity = True
    If CheckFileExists(App.Path & "\iconv.exe") = False Then CheckIntegrity = True
    If CheckFileExists(App.Path & "\iconv_wrapper.bat") = False Then CheckIntegrity = True
    If CheckFileExists(App.Path & "\Config.ini") = False And CheckFileExists(App.Path & "\Config.Defaults.ini") = False Then CheckIntegrity = True
    If CheckIntegrity Then MsgBox "���������ʧ�ܣ����������س���", vbCritical: End
    If CheckFileExists(App.Path & "\Config.ini") = False And CheckFileExists(App.Path & "\Config.Defaults.ini") = True Then Name App.Path & "\Config.Defaults.ini" As App.Path & "\Config.ini"

End Sub

Private Sub SelectSavePath()
    Dim SavePathTmp As String
    If SavePath = "None" Then
        Do Until SavePathTmp <> ""
            SavePathTmp = ChooseDir("ѡ��浵Ŀ¼", Me)
        Loop
    Else
        SavePathTmp = ChooseDir("ѡ��浵Ŀ¼", Me)
        If SavePathTmp = "" Then Exit Sub
    End If
    If CheckFileExists(SavePathTmp & "\save.dat") = False Then GoTo Err
    SavePath = SavePathTmp
    WriteIni "HiddenSuperStar", "SavePath", SavePath, App.Path & "\Config.ini"
    Exit Sub
Err:
    MsgBox "��ѡ����ȷ�Ĵ浵Ŀ¼��"
    If SavePath = "None" Then End
End Sub

Private Sub Form_Load()
    Me.Caption = "���ؤ��޵��� " & App.Major & "." & App.Minor & "." & App.Revision & " - ���عؿ�"
        SavePath = GetIni("HiddenSuperStar", "SavePath", App.Path & "\Config.ini")
    If SavePath = "None" Then
        MsgBox "��ӭʹ�� ���ؤ��޵��ǣ�" & vbCrLf & "���״�ʹ��֮ǰ������Ҫ��ѡ����ġ�����2���浵�ļ��С�" & vbCrLf & vbCrLf & _
               "�������ģ�������Ҽ�����2��������򿪴浵Ŀ¼������ô浵�ļ��е�·����"
        SelectSavePath
    End If
    If Dir(SavePath, vbDirectory) = "" Then
        MsgBox "��ӭʹ�� ���ؤ��޵��ǣ�" & vbCrLf & "���״�ʹ��֮ǰ������Ҫ��ѡ����ġ�����2���浵�ļ��С�" & vbCrLf & vbCrLf & _
               "�������ģ�������Ҽ�����2��������򿪴浵Ŀ¼������ô浵�ļ��е�·����"
        SavePath = "None"
        SelectSavePath
    End If
    LoadLocalLevels
End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub

Private Sub lstLocal_Click()
    lblAboutCourse.Caption = "�ؿ��ļ���" & lstLocal.SelectedItem.Tag
    Dim CourseMetadata() As String
    CourseMetadata = GetCourseMeta(SavePath & "\" & lstLocal.SelectedItem.Tag)
    LblAppend lblAboutCourse, CourseMetadata(0)
    LblAppend lblAboutCourse, "��Ϸ���: " & CourseMetadata(2)
    LblAppend lblAboutCourse, "������" & CourseMetadata(3)
    LblAppend lblAboutCourse, "ˮ��: " & Replace(CourseMetadata(8), "None", "��")
    LblAppend lblAboutCourse, "����: " & Replace(CourseMetadata(7), "None", "��")
    LblAppend lblAboutCourse, "��¼: " & CStr(CourseMetadata(5))
    LblAppend lblAboutCourse, "��Ϸ�汾: " & CourseMetadata(4)
    LblAppend lblAboutCourse, "��������: " & Replace(CourseMetadata(6), "None", "��")
    LblAppend lblAboutCourse, ""
    LblAppend lblAboutCourse, CourseMetadata(1)
End Sub


Private Sub txtCourseID_Change()
    txtCourseID.text = UCase(txtCourseID.text)
    txtCourseID.SelStart = Len(txtCourseID.text)

End Sub

'txtCourseID.ForeColor = RGB(100, 100, 100)
Private Sub txtCourseID_Click()
    If txtCourseID.text = "�ؿ�ID" Then txtCourseID.ForeColor = RGB(0, 0, 0): txtCourseID.text = ""
End Sub

Private Sub txtCourseID_KeyPress(KeyAscii As Integer)
    If Len(txtCourseID.text) = 11 And KeyAscii <> 8 Then KeyAscii = 0
    If Len(txtCourseID.text) = 3 Or Len(txtCourseID.text) = 7 Then
        If KeyAscii <> 8 Then txtCourseID.text = txtCourseID.text & "-"
    End If
End Sub

Public Sub LoadLocalLevels()
    Dim CourseList() As String, CourseMetadata() As String
    LoadCompletedM = False
    frmDummy.ProcessWindow
    DoEvents
    lstLocal.ListItems.Clear
    lstLocal.ColumnHeaders.Clear
    lstLocal.FullRowSelect = True
    lstLocal.GridLines = True
    lstLocal.ColumnHeaders.Add 1, "Icon", "", 400
    lstLocal.ColumnHeaders.Add 2, "GameStyle", "�汾", 1000
    lstLocal.ColumnHeaders.Add 3, "CourseName", "�ؿ�", 3500
    CourseList = GetFileList(SavePath, "course_data_0*.bcd")
    Dim CC As Integer, Course As Variant
    For Each Course In CourseList
        CC = lstLocal.ListItems.Count + 1
        CourseMetadata = GetCourseMeta(SavePath & "\" & Course)
        DoEvents
        lstLocal.ListItems.Add , , "", , CourseMetadata(2)
        lstLocal.ListItems(CC).SubItems(1) = CourseMetadata(2)
        lstLocal.ListItems(CC).SubItems(2) = CourseMetadata(0)
        With lstLocal.ListItems(CC)
            .ToolTipText = CourseMetadata(0)
            .Tag = Course
        End With
    Next Course
    lstLocal.ListItems(1).Selected = False
    frmDummy.Hide
    Unload frmDummy
    LoadCompletedM = True
End Sub

Private Sub VB6Resizer1_AfterResize()
    If LoadCompletedM Then lstLocal.ColumnHeaders(3).Width = 3500 + (frmMain.Width - 10440)
End Sub

