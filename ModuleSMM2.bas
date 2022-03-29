Attribute VB_Name = "ModuleSMM2"
Option Explicit
'HiddenSuperStar By YidaozhanYa
'API: https://tgrcode.com/mm2/docs/
'����


'����
Public SavePath As String, ShowPicture As Boolean, CountPerPage As String
Attribute ShowPicture.VB_VarUserMemId = 1073741824
Attribute CountPerPage.VB_VarUserMemId = 1073741824
'����
Public TGRCODE_API As String
Attribute TGRCODE_API.VB_VarUserMemId = 1073741827

'����
Public Function GetCourseMeta(CoursePath As String) As String()
On Error GoTo errHandler
    If CheckFileExists(CoursePath) = False Then Exit Function
    '0=�ؿ���
    '1=���
    '2=��Ϸ���
    '3=����
    '4=�汾
    '5=��¼
    '6=���� Ӣ��
    '7=����
    '8=ˮ��
    Dim CourseMeta(0 To 8) As String, arrJSON As Variant, strMD5 As String
    With New MD5Hash
        strMD5 = LCase(.HashBytes(StrConv(CoursePath, vbFromUnicode)))
    End With
    If CheckFileExists(EnvTempDir & "\HSSTemp\" & strMD5 & ".json") = False Then
        ShellAndWait """" & App.Path & "\toost\bin\toost.exe" & """ --overworldJson """ & EnvTempDir & "\HSSTemp\" & strMD5 & "_orig.json" & """ -p """ & CoursePath & """"
        ShellAndWait """" & App.Path & "\" & IconvWrapperFilename & ".bat"" " & strMD5
        Kill EnvTempDir & "\HSSTemp\" & strMD5 & "_orig.json"
    End If
    arrJSON = Split(Left(ReadTextFile(EnvTempDir & "\HSSTemp\" & strMD5 & ".json"), 1000), ",")
    CourseMeta(0) = GetFirstObject(arrJSON, "name", CoursePath)
    CourseMeta(1) = GetFirstObject(arrJSON, "description", CoursePath)
    CourseMeta(2) = GetFirstObject(arrJSON, "gamestyle", CoursePath)
    CourseMeta(3) = ConvertLevelTheme(GetFirstObject(arrJSON, "theme", CoursePath))
    CourseMeta(4) = GetFirstObject(arrJSON, "game_version", CoursePath)
    CourseMeta(5) = CStr(GetFirstObject(arrJSON, "clear_time", CoursePath))
    If Len(CourseMeta(5)) = 6 Then
        CourseMeta(5) = CInt(Left(CourseMeta(5), 3)) \ 60 & ":" & Right(Left(CourseMeta(5), 3), 2) & "." & Right(CourseMeta(5), 3)
    ElseIf Len(CourseMeta(5)) = 5 Then
        CourseMeta(5) = "0:" & Left(CourseMeta(5), 2) & "." & Right(CourseMeta(5), 3)
    ElseIf Len(CourseMeta(5)) = 7 Then
        CourseMeta(5) = CInt(Left(CourseMeta(5), 4)) \ 60 & ":" & Right(Left(CourseMeta(5), 4), 2) & "." & Right(CourseMeta(5), 3)
    ElseIf Len(CourseMeta(5)) = 4 Then
        CourseMeta(5) = "0:0" & Left(CourseMeta(5), 1) & "." & Right(CourseMeta(5), 3)
    End If
    If CourseMeta(5) = "-1" Then CourseMeta(5) = "��"
    CourseMeta(6) = GetFirstObject(arrJSON, "clear_condition", CoursePath)
    CourseMeta(7) = GetFirstObject(arrJSON, "autoscroll_type", CoursePath) & " " & GetFirstObject(arrJSON, "autoscroll_speed", CoursePath)
    CourseMeta(8) = GetFirstObject(arrJSON, "liquid_speed", CoursePath)
    GetCourseMeta = CourseMeta
    Exit Function
errHandler:
    If Err.Number = "53" Then
        MsgBox "�޷��� Temp �ļ�����д�����ݣ���ʹ�� HiddenSuperStarPortable.bat �����������ߡ�"
    Else
        MsgBox "����ʱ���� " & Err.Number & vbCrLf & Err.Description
    End If
    End
End Function

Public Function ConvertLevelTheme(InputStr As String) As String
    Select Case InputStr
    Case "Castle"
        ConvertLevelTheme = "�Ǳ�"
    Case "Airship"
        ConvertLevelTheme = "�ɴ�"
    Case "Ghost house"
        ConvertLevelTheme = "����"
    Case "Underground"
        ConvertLevelTheme = "����"
    Case "Sky"
        ConvertLevelTheme = "���"
    Case "Snow"
        ConvertLevelTheme = "ѩԭ"
    Case "Desert"
        ConvertLevelTheme = "ɳĮ"
    Case "Overworld"
        ConvertLevelTheme = "����"
    Case "Forest"
        ConvertLevelTheme = "ɭ��"
    Case "Underwater"
        ConvertLevelTheme = "ˮ��"
    Case Else
        ConvertLevelTheme = InputStr
    End Select
End Function
Public Function PrettyID(ID As String) As String
    PrettyID = Left(ID, 3) & "-" & Right(Left(ID, 6), 3) & "-" & Right(ID, 3)
End Function
Private Function GetFirstObject(JSONArray As Variant, ObjToGet As String, CoursePath As String) As String
On Error GoTo errHandler
    GetFirstObject = Replace(Split(Replace(Replace(Filter(JSONArray, Chr(34) & ObjToGet & Chr(34))(0), "{", ""), "}", ""), ":")(1), Chr(34), "")
    Debug.Print GetFirstObject
    Exit Function
errHandler:
    'Kill CoursePath
    MsgBox "�浵�ﺬ�����𻵻����Ĺؿ����� " & CoursePath & " ����ɾ����" & vbCrLf & "�����´򿪱�����", vbCritical
    End
End Function
Public Function PrettyTag(TagID As Integer) As String
    Select Case TagID
    Case 1
        PrettyTag = "��׼"
    Case 2
        PrettyTag = "����"
    Case 3
        PrettyTag = "��ʱ��ս"
    Case 4
        PrettyTag = "�Զ�����"
    Case 5
        PrettyTag = "�Զ�����ŷ"
    Case 6
        PrettyTag = "һ��ͨ��"
    Case 7
        PrettyTag = "���˶�ս"
    Case 8
        PrettyTag = "�������"
    Case 9
        PrettyTag = "����"
    Case 10
        PrettyTag = "����"
    Case 11
        PrettyTag = "����"
    Case 12
        PrettyTag = "���"
    Case 13
        PrettyTag = "BOSSս"
    Case 14
        PrettyTag = "����"
    Case 15
        PrettyTag = "�ֿ�"
    End Select
End Function
