VERSION 5.00
Begin VB.Form frmAbout 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "���ڱ�����"
   ClientHeight    =   3150
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5610
   BeginProperty Font 
      Name            =   "Microsoft YaHei UI Light"
      Size            =   10.5
      Charset         =   0
      Weight          =   290
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmAbout.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3150
   ScaleWidth      =   5610
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      Height          =   3735
      Left            =   1200
      TabIndex        =   0
      Top             =   120
      Width           =   5175
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   120
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Image1.Picture = Me.Icon
    Label1.Caption = "���� ���ؤ��޵��� " & App.Major & "." & App.Minor & "." & App.Revision
    LblAppend Label1, ""
    LblAppend Label1, "TheGreatRambler ���� 2 API ��ͼ�λ�ǰ�ˣ�"
    LblAppend Label1, "Ϊ NS ģ����ר�����䡣"
    LblAppend Label1, "Ϊ���������ٶȿ���ʹ���������绷����"
    LblAppend Label1, "* �˰汾Ϊ���԰棬���ȶ��棡"
    LblAppend Label1, ""
    LblAppend Label1, "2022 ��һ��ն��"
    LblAppend Label1, "API By TheGreatRambler"
End Sub

