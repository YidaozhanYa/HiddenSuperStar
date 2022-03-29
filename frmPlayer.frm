VERSION 5.00
Begin VB.Form frmPlayer 
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   Caption         =   "�����Ϣ"
   ClientHeight    =   6435
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   12030
   BeginProperty Font 
      Name            =   "΢���ź� Light"
      Size            =   10.5
      Charset         =   134
      Weight          =   290
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmPlayer.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6435
   ScaleWidth      =   12030
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton cmdWorldId 
      Caption         =   "����ID"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   1140
      TabIndex        =   5
      Top             =   5760
      Width           =   855
   End
   Begin VB.CommandButton cmdCopyID 
      Caption         =   "����ID"
      BeginProperty Font 
         Name            =   "΢���ź� Light"
         Size            =   9
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   120
      TabIndex        =   4
      Top             =   5760
      Width           =   855
   End
   Begin VB.Line Line3 
      Tag             =   "H"
      X1              =   8640
      X2              =   8640
      Y1              =   120
      Y2              =   6240
   End
   Begin VB.Line Line2 
      Tag             =   "H"
      X1              =   5400
      X2              =   5400
      Y1              =   120
      Y2              =   6240
   End
   Begin VB.Line Line1 
      Tag             =   "H"
      X1              =   2160
      X2              =   2160
      Y1              =   120
      Y2              =   6240
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      Height          =   6135
      Left            =   8880
      TabIndex        =   3
      Top             =   120
      Width           =   3015
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      Height          =   6135
      Left            =   5640
      TabIndex        =   2
      Top             =   120
      Width           =   3015
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      Height          =   6135
      Left            =   2400
      TabIndex        =   1
      Top             =   120
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      Height          =   3255
      Left            =   120
      TabIndex        =   0
      Top             =   2880
      Width           =   1935
   End
   Begin VB.Image Image1 
      Height          =   2655
      Left            =   -360
      Stretch         =   -1  'True
      Top             =   120
      Width           =   2895
   End
End
Attribute VB_Name = "frmPlayer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public PlayerID As String, WorldID As String
Attribute WorldID.VB_VarUserMemId = 1073938432


Private Sub cmdCopyID_Click()
    Clipboard.SetText PrettyID(PlayerID)
    MsgBox PrettyID(PlayerID) & " ���Ƴɹ���"
End Sub
Private Sub cmdWorldID_Click()
    Clipboard.SetText WorldID
    MsgBox WorldID & " ���Ƴɹ���"
End Sub

Private Sub Form_Load()
    Me.Caption = "���ؤ��޵��� " & App.Major & "." & App.Minor & "." & App.Revision & " - �����Ϣ"
End Sub
Public Sub PlayerInfo(Player As Variant)
'��ʾ�����Ϣ
    Dim stdpic As New stdPicEx2, SingleBadge As Variant
    Label1 = Player("name")
    LblAppend Label1, "ID: " & PrettyID(CStr(Player("code")))
    LblAppend Label1, "����: " & Player("country")
    LblAppend Label1, "�ϴ�������: " & Player("last_active_pretty")
    Label2 = "����Ĺؿ�: " & Player("courses_played")
    LblAppend Label2, "ͨ���Ĺؿ�: " & Player("courses_cleared")
    LblAppend Label2, "ͨ��������: " & Player("unique_super_world_clears")
    LblAppend Label2, "�ù�������: " & Player("courses_attempted")
    LblAppend Label2, "����������: " & Player("courses_deaths")
    LblAppend Label2, "�ײ�ؿ���: " & Player("first_clears")
    LblAppend Label2, "�����¼��: " & Player("world_records")
    LblAppend Label2, ""
    LblAppend Label2, "���ż�¼: " & Player("easy_highscore")
    LblAppend Label2, "��ͨ�ż�¼: " & Player("normal_highscore")
    LblAppend Label2, "�����ż�¼: " & Player("expert_highscore")
    LblAppend Label2, "�����ż�¼: " & Player("super_expert_highscore")
    LblAppend Label2, ""
    LblAppend Label2, "�ϴ��ؿ���: " & Player("uploaded_levels")
    LblAppend Label2, "�յ��ĵ���: " & Player("likes")
    LblAppend Label2, "��������: " & Player("maker_points")
    If Player("super_world_id") <> "" Then LblAppend Label2, "����ID: " & Player("super_world_id")
    Label3 = "��ս��λ: " & Player("versus_rank_name")
    LblAppend Label3, "��ս����: " & Player("versus_rating")
    LblAppend Label3, ""
    LblAppend Label3, "�ܳ���: " & Player("versus_plays")
    LblAppend Label3, "ʤ������: " & Player("versus_won")
    LblAppend Label3, "ʧ�ܳ���: " & Player("versus_lost")
    LblAppend Label3, "��ʤ����: " & Player("versus_win_streak")
    LblAppend Label3, "���ܳ���: " & Player("versus_lose_streak")
    LblAppend Label3, "���߳���: " & Player("versus_disconnected")
    LblAppend Label3, "��ɱ��: " & Player("versus_kills")
    LblAppend Label3, "����ɱ��: " & Player("versus_killed_by_others")
    LblAppend Label3, "��������: " & Player("region_name")
    LblAppend Label3, ""
    LblAppend Label3, "��������: " & Player("coop_plays")
    LblAppend Label3, "����ͨ����: " & Player("coop_clears")
    Label4 = "ȡ�õĽ���: "
    For Each SingleBadge In Player("badges")
        LblAppend Label4, PrettyBadge(CStr(SingleBadge("type_name"))) & " (" & Replace(Replace(Replace(CStr(SingleBadge("rank_name")), "Gold", "����"), "Silver", "����"), "Bronze", "ͭ��") & ")"
    Next SingleBadge
    If Label4.Caption = "ȡ�õĽ���: " Then Label4.Caption = "�����û�н���"
    PlayerID = CStr(Player("code"))
    WorldID = CStr(Player("super_world_id"))
    Me.Show
    DoEvents
    Call URLDownloadToFile(0, Player("mii_image"), EnvTempDir & "\HSSTemp\Mii.png", 0, 0)
    Image1.Picture = stdpic.LoadPictureEx(EnvTempDir & "\HSSTemp\Mii.png")

End Sub

Private Sub Form_Resize()
    On Error Resume Next
    Label1.Height = Me.Height - 3645
    Label2.Height = Me.Height - 765
    Label3.Height = Me.Height - 765
    Label2.Width = 3015 + (Me.Width - 11805) / 3
    Label3.Width = 3015 + (Me.Width - 11805) / 3
    Label4.Width = 3015 + (Me.Width - 11805) / 3
    Label3.Left = 5640 + ((Me.Width - 11805) / 3)
    Label4.Left = 8880 + ((Me.Width - 11805) / 3) * 2
    Line2.X1 = 5400 + ((Me.Width - 11805) / 3)
    Line2.X2 = 5400 + ((Me.Width - 11805) / 3)
    Line3.X1 = 8640 + ((Me.Width - 11805) / 3) * 2
    Line3.X2 = 8640 + ((Me.Width - 11805) / 3) * 2
    Line1.Y2 = Me.Height - 540
    Line2.Y2 = Me.Height - 540
    Line3.Y2 = Me.Height - 540
    cmdCopyID.Top = Me.Height - 1140
    cmdWorldId.Top = Me.Height - 1140
End Sub

Private Function PrettyBadge(Badge As String) As String
    PrettyBadge = Replace(Badge, "Super Expert", "����")
    PrettyBadge = Replace(PrettyBadge, "Expert", "����")
    PrettyBadge = Replace(PrettyBadge, "Easy", "��")
    PrettyBadge = Replace(PrettyBadge, "Normal", "��ͨ")
    PrettyBadge = Replace(PrettyBadge, "Endless Challenge", "����ŷ������ս")
    PrettyBadge = Replace(PrettyBadge, "Multiplayer Versus", "���˶�ս")
    PrettyBadge = Replace(PrettyBadge, "Number of Clears", "ͨ���ؿ�")
End Function
