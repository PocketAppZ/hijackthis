Attribute VB_Name = "modUtils"
Option Explicit

Private Type BROWSER_INFO
    Version As String
    'Path    As String  'future use
End Type

Public Type MY_BROWSERS
    Edge    As BROWSER_INFO
    IE      As BROWSER_INFO
    Firefox As BROWSER_INFO
    Opera   As BROWSER_INFO
    Chrome  As BROWSER_INFO
    Default As String
End Type

'Private Type RECT
'    Left    As Long
'    Top     As Long
'    Right   As Long
'    Bottom  As Long
'End Type
'
'Private Type POINTAPI
'    x As Long
'    y As Long
'End Type
'
'Private Type OPENFILENAME
'    lStructSize As Long
'    hWndOwner As Long
'    hInstance As Long
'    lpstrFilter As Long
'    lpstrCustomFilter As Long
'    nMaxCustFilter As Long
'    nFilterIndex As Long
'    lpstrFile As Long
'    nMaxFile As Long
'    lpstrFileTitle As Long
'    nMaxFileTitle As Long
'    lpstrInitialDir As Long
'    lpstrTitle As Long
'    flags As Long
'    nFileOffset As Integer
'    nFileExtension As Integer
'    lpstrDefExt As Long
'    lCustData As Long
'    lpfnHook As Long
'    lpTemplateName As Long
'    pvReserved As Long
'    dwReserved As Long
'    FlagsEx As Long
'End Type
'
'Private Type OSVERSIONINFOEX
'    dwOSVersionInfoSize As Long
'    dwMajorVersion As Long
'    dwMinorVersion As Long
'    dwBuildNumber As Long
'    dwPlatformId As Long
'    szCSDVersion(255) As Byte
'    wServicePackMajor As Integer
'    wServicePackMinor As Integer
'    wSuiteMask As Integer
'    wProductType As Byte
'    wReserved As Byte
'End Type
'
'Private Type SYSTEMTIME
'    wYear           As Integer
'    wMonth          As Integer
'    wDayOfWeek      As Integer
'    wDay            As Integer
'    wHour           As Integer
'    wMinute         As Integer
'    wSecond         As Integer
'    wMilliseconds   As Integer
'End Type
'
'Public Type UUID
'    Data1 As Long
'    Data2 As Integer
'    Data3 As Integer
'    Data4(0 To 7) As Byte
'End Type
'
'Private Declare Function SetWindowLong Lib "user32.dll" Alias "SetWindowLongW" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
'Private Declare Function CallWindowProc Lib "user32.dll" Alias "CallWindowProcW" (ByVal lpPrevWndFunc As Long, ByVal hWnd As Long, ByVal msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
'Private Declare Function GetCursorPos Lib "user32.dll" (lpPoint As POINTAPI) As Long
'Private Declare Function GetWindowRect Lib "user32.dll" (ByVal hWnd As Long, lpRect As RECT) As Long
'Private Declare Function PtInRect Lib "user32.dll" (lpRect As RECT, ByVal x As Long, ByVal y As Long) As Long
'Private Declare Sub SHChangeNotify Lib "shell32.dll" (ByVal wEventId As Long, ByVal uFlags As Long, ByVal dwItem1 As Long, ByVal dwItem2 As Long)
'Private Declare Function GetModuleHandle Lib "kernel32.dll" Alias "GetModuleHandleW" (ByVal lpModuleName As Long) As Long
'Private Declare Function GetModuleFileName Lib "kernel32.dll" Alias "GetModuleFileNameW" (ByVal hModule As Long, ByVal lpFileName As Long, ByVal nSize As Long) As Long
'Private Declare Function LoadLibraryEx Lib "kernel32.dll" Alias "LoadLibraryExW" (ByVal lpFileName As Long, ByVal hFile As Long, ByVal dwFlags As Long) As Long
'Private Declare Function FreeLibrary Lib "kernel32.dll" (ByVal hLibModule As Long) As Long
'Private Declare Function LoadString Lib "user32.dll" Alias "LoadStringW" (ByVal hInstance As Long, ByVal uID As Long, ByVal lpBuffer As Long, ByVal nBufferMax As Long) As Long
'Private Declare Function lstrlen Lib "kernel32.dll" Alias "lstrlenW" (ByVal lpString As Long) As Long
'Private Declare Function lstrcpy Lib "kernel32.dll" Alias "lstrcpyW" (ByVal lpStrDest As Long, ByVal lpStrSrc As Long) As Long
'Private Declare Function GetOpenFileName Lib "comdlg32.dll" Alias "GetOpenFileNameW" (pOpenfilename As OPENFILENAME) As Long
'Private Declare Function SystemTimeToVariantTime Lib "oleaut32.dll" (lpSystemTime As SYSTEMTIME, vtime As Date) As Long
'Private Declare Function VariantTimeToSystemTime Lib "oleaut32.dll" (ByVal vtime As Date, lpSystemTime As SYSTEMTIME) As Long
'Private Declare Function SystemTimeToTzSpecificLocalTime Lib "kernel32.dll" (ByVal lpTimeZone As Any, lpUniversalTime As SYSTEMTIME, lpLocalTime As SYSTEMTIME) As Long
'Private Declare Function FileTimeToSystemTime Lib "kernel32.dll" (ByVal lpFileTime As Long, lpSystemTime As SYSTEMTIME) As Long
''Private Declare Function FileTimeToLocalFileTime Lib "kernel32.dll" (lpFileTime As FILETIME, lpLocalFileTime As FILETIME) As Long
''Private Declare Function SystemTimeToFileTime Lib "kernel32.dll" (lpSystemTime As SYSTEMTIME, lpFileTime As FILETIME) As Long
''Private Declare Function GetTimeZoneInformation Lib "kernel32.dll" (ByVal lpTimeZoneInformation As Long) As Long
'Private Declare Function GetCurrentProcess Lib "kernel32.dll" () As Long
'Private Declare Function IsWow64Process Lib "kernel32.dll" (ByVal hProcess As Long, ByRef Wow64Process As Long) As Long
'Private Declare Function GetSystemMetrics Lib "user32.dll" (ByVal nIndex As Long) As Long
'Private Declare Function GetVersionEx Lib "kernel32.dll" Alias "GetVersionExW" (lpVersionInformation As OSVERSIONINFOEX) As Long
'Private Declare Function GetPrivateProfileString Lib "kernel32.dll" Alias "GetPrivateProfileStringW" (ByVal lpApplicationName As Long, ByVal lpKeyName As Long, ByVal lpDefault As Long, ByVal lpReturnedString As Long, ByVal nSize As Long, ByVal lpFileName As Long) As Long
'Private Declare Function MoveFile Lib "kernel32.dll" Alias "MoveFileW" (ByVal lpExistingFileName As Long, ByVal lpNewFileName As Long) As Long
'Private Declare Function GetFileAttributes Lib "kernel32.dll" Alias "GetFileAttributesW" (ByVal lpFileName As Long) As Long
'Private Declare Function SetFileAttributes Lib "kernel32.dll" Alias "SetFileAttributesW" (ByVal lpFileName As Long, ByVal dwFileAttributes As Long) As Long
'Private Declare Function DeleteObject Lib "gdi32.dll" (ByVal hObject As Long) As Long
'Private Declare Function GetPixel Lib "gdi32.dll" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long) As Long
'Private Declare Function SetWindowRgn Lib "user32.dll" (ByVal hWnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long
'Private Declare Function CreateRectRgn Lib "gdi32.dll" (ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
'Private Declare Function CombineRgn Lib "gdi32.dll" (ByVal hDestRgn As Long, ByVal hSrcRgn1 As Long, ByVal hSrcRgn2 As Long, ByVal nCombineMode As Long) As Long
'Private Declare Function CLSIDFromString Lib "ole32.dll" (ByVal lpszGuid As Long, pGuid As UUID) As Long
'Private Declare Function LoadLibrary Lib "kernel32.dll" Alias "LoadLibraryW" (ByVal lpFileName As Long) As Long
'
'
'Private Const LOAD_LIBRARY_AS_DATAFILE As Long = &H2   'Read Only      ( do not execute DllMain )
'
'Public Const GWL_WNDPROC    As Long = &HFFFFFFFC
'Public Const WM_MOUSEWHEEL  As Long = &H20A&
'
'Public Const SHCNE_DELETE       As Long = 4&
'Public Const SHCNF_PATH         As Long = 1&
'Public Const SHCNF_FLUSHNOWAIT  As Long = &H2000&
'Public Const SHCNE_CREATE       As Long = 2&
'Public Const SHCNE_RENAMEITEM   As Long = 1&
'Public Const SHCNE_ATTRIBUTES   As Long = &H800&
'
'Private Const FILE_ATTRIBUTE_READONLY   As Long = 1&
'Private Const ERROR_FILE_NOT_FOUND      As Long = 2&
'Private Const ERROR_ACCESS_DENIED       As Long = 5&
'
'Private Const RGN_OR            As Long = 2

Private Declare Function SHParseDisplayName Lib "Shell32" (ByVal pszName As Long, ByVal IBindCtx As Long, ByRef ppidl As Long, sfgaoIn As Long, sfgaoOut As Long) As Long
Private Declare Function ILFree Lib "Shell32" (ByVal pidlFree As Long) As Long

Private Const ZipFldrCLSID      As String = "{E88DCCE0-B7B3-11d1-A9F0-00AA0060FA31}"
Private Const IID_IShellExtInit As String = "{000214E8-0000-0000-C000-000000000046}"

Public BROWSERS As MY_BROWSERS

Public hLibPcre2    As Long
Public oRegexp      As IRegExp

Private lpPrevWndProc As Long


Public Sub SubClassScroll(SwitchON As Boolean)
    If DisableSubclassing Then Exit Sub
    If SwitchON Then
        If lpPrevWndProc = 0 Then lpPrevWndProc = SetWindowLong(frmMain.hwnd, GWL_WNDPROC, AddressOf WndProc)
    Else
        If lpPrevWndProc Then SetWindowLong frmMain.hwnd, GWL_WNDPROC, lpPrevWndProc: lpPrevWndProc = 0
    End If
End Sub

Function IsMouseWithin(hwnd As Long) As Boolean
    Dim r As RECT
    Dim p As POINTAPI
    If GetWindowRect(hwnd, r) Then
        If GetCursorPos(p) Then
            IsMouseWithin = PtInRect(r, p.x, p.y)
        End If
    End If
End Function

Private Function WndProc(ByVal hwnd As Long, ByVal uMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
    On Error Resume Next
    Select Case uMsg
    Case WM_MOUSEWHEEL
        If Not IsMouseWithin(frmMain.hwnd) Then Exit Function ' mouse is outside the form
        Dim MouseKeys&, Rotation&, NewValue%
        MouseKeys = wParam And &HFFFF&
        Rotation = wParam / &HFFFF& 'direction
        With frmMain.vscMiscTools
            NewValue = .Value - .LargeChange * IIf(Rotation > 0, 1, -1)
            If NewValue < .Min Then NewValue = .Min
            If NewValue > .Max Then NewValue = .Max
            .Value = NewValue   'change scroll value
        End With
    Case Else
        WndProc = CallWindowProc(lpPrevWndProc, hwnd, uMsg, wParam, lParam)
    End Select
End Function

' affected by wow64
Public Function OpenFileDialog(Optional sTitle As String, Optional InitDir As String, Optional hwnd As Long) As String
    On Error GoTo ErrorHandler
    Const OFN_DONTADDTORECENT As Long = &H2000000
    Const OFN_ENABLESIZING As Long = &H800000
    Const OFN_FORCESHOWHIDDEN As Long = &H10000000
    Const OFN_HIDEREADONLY As Long = 4&
    Const OFN_NODEREFERENCELINKS As Long = &H100000
    Const OFN_NOVALIDATE As Long = &H100&
    
    Dim ofn As OPENFILENAME
    Dim out As String
    Dim Filter As String
    
    ofn.nMaxFile = MAX_PATH_W
    out = String$(MAX_PATH_W, vbNullChar)
    'Filter = IIf(isTextFile, "��������� �����" & vbNullChar & "*.txt" & vbNullChar, _
    '    "����������� �����" & vbNullChar & "*.exe;*.dll" & vbNullChar)
    Filter = "All Files" & vbNullChar & "*.*" & vbNullChar
    With ofn
        .hWndOwner = IIf(hwnd = 0, frmMain.hwnd, hwnd)
        .lpstrTitle = StrPtr(sTitle)
        .lpstrFile = StrPtr(out)
        .lStructSize = Len(ofn)
        .lpstrFilter = StrPtr(Filter)
        .lpstrInitialDir = StrPtr(InitDir)
        .Flags = OFN_DONTADDTORECENT Or OFN_ENABLESIZING Or OFN_FORCESHOWHIDDEN Or OFN_HIDEREADONLY Or OFN_NODEREFERENCELINKS Or OFN_NOVALIDATE
    End With
    If GetOpenFileName(ofn) Then OpenFileDialog = TrimNull(out)
    Exit Function
ErrorHandler:
    ErrorMsg Err, "OpenFileDialog"
    If inIDE Then Stop: Resume Next
End Function

Public Function GetStringFromBinary(Optional ByVal sFile As String, Optional ByVal nid As Long, Optional ByVal FileAndIDHybrid As String) As String
    On Error GoTo ErrorHandler:
    AppendErrorLogCustom "GetStringFromBinary - Begin", "File: " & sFile, "id: " & nid, "FileAndIDHybrid: " & FileAndIDHybrid
    
    Dim hModule As Long
    Dim nSize As Long
    Dim sBuf As String
    Dim pos As Long
    Dim Redirect As Boolean, bOldStatus As Boolean
    Dim sResVar As String
    Dim sInitialVar As String
    Dim bIsInf As Boolean
    
    'Get string resource from binary file
    'Source can be defined either by Filename and ID, or by hibryd (registry like) string, e.g. @%SystemRoot%\System32\my.dll,-102
    'ID with minus will be converted by module
    
    sInitialVar = FileAndIDHybrid
    
    If 0 <> Len(FileAndIDHybrid) Then
    
        If Left$(FileAndIDHybrid, 1) = "@" Then FileAndIDHybrid = Mid$(FileAndIDHybrid, 2)
        If InStr(FileAndIDHybrid, "%") <> 0 Then
            If InStr(1, FileAndIDHybrid, ".inf", 1) = 0 Then
                FileAndIDHybrid = EnvironW(FileAndIDHybrid)
            End If
        End If
        pos = InStrRev(FileAndIDHybrid, ",")
        If 0 <> pos Then
            sFile = Left$(FileAndIDHybrid, pos - 1)
            sBuf = Mid$(FileAndIDHybrid, pos + 1)
            
            If StrComp(GetExtensionName(sFile), ".inf", 1) = 0 Then
                bIsInf = True
                sResVar = Trim$(sBuf)
                If Left$(sResVar, 1) = "%" And Right$(sResVar, 1) = "%" Then
                    sResVar = Mid$(sResVar, 2, Len(sResVar) - 2)
                End If
            ElseIf IsNumeric(sBuf) And 0 <> Len(sBuf) Then
                nid = Val(sBuf)
            Else
                Exit Function
            End If
        End If
    End If
    
    If 0 = Len(sFile) Then Exit Function
    
    sFile = EnvironW(sFile)
    
    If Not FileExists(sFile) Then
        sFile = FindOnPath(sFile, , IIf(bIsInf, BuildPath(sWinDir, "inf"), ""))
        If 0 = Len(sFile) Then Exit Function
    End If
    
    sBuf = String$(160, 0)
    
    Redirect = ToggleWow64FSRedirection(False, sFile, bOldStatus)
    
    If bIsInf Then
        nSize = GetPrivateProfileString(StrPtr("Strings"), StrPtr(sResVar), StrPtr(sInitialVar), StrPtr(sBuf), Len(sBuf), StrPtr(sFile))
        If nSize <> 0 Then
            sBuf = UnQuote(Left$(sBuf, nSize))
        End If
        GetStringFromBinary = sBuf
    Else
        hModule = LoadLibraryEx(StrPtr(sFile), 0&, LOAD_LIBRARY_AS_DATAFILE)

        If hModule Then
            nSize = LoadString(hModule, Abs(nid), StrPtr(sBuf), LenB(sBuf))
            If nSize > 0 Then
                GetStringFromBinary = TrimNull(Left$(sBuf, nSize))
            End If
            FreeLibrary hModule
        End If
    End If
    
    If Redirect Then Call ToggleWow64FSRedirection(bOldStatus)
    
    AppendErrorLogCustom "GetStringFromBinary - End"
    Exit Function
ErrorHandler:
    ErrorMsg Err, "GetStringFromBinary", sFile
    If Redirect Then Call ToggleWow64FSRedirection(bOldStatus)
    If inIDE Then Stop: Resume Next
End Function

Public Sub GetBrowsersInfo()
    AppendErrorLogCustom "GetBrowsersInfo - Begin"
    Static IsInit As Boolean
    If IsInit Then Exit Sub
    IsInit = True
    
    Dim Cmd As String
    Dim FriendlyName As String
    Dim Path As String
    Dim Arguments As String
    Cmd = GetDefaultApp("http", FriendlyName)
    SplitIntoPathAndArgs Cmd, Path, Arguments
    
    With BROWSERS
        .Edge.Version = GetEdgeVersion()
        .IE.Version = GetMSIEVersion()
        .Chrome.Version = GetChromeVersion()
        .Firefox.Version = GetFirefoxVersion()
        .Opera.Version = GetOperaVersion()
        .Default = Cmd & IIf(Path = "(AppID)", " " & FriendlyName, IIf(Len(FriendlyName) <> 0, " (" & FriendlyName & ")", vbNullString))
    End With
    AppendErrorLogCustom "GetBrowsersInfo - End"
End Sub

Public Function GetEdgeVersion() As String
    AppendErrorLogCustom "GetEdgeVersion - Begin"
    Dim EdgePath$
    EdgePath = sWinDir & "\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\MicrosoftEdge.exe"
    If FileExists(EdgePath) Then GetEdgeVersion = GetFilePropVersion(EdgePath)
    AppendErrorLogCustom "GetEdgeVersion - End"
End Function

Public Function GetChromeVersion() As String
    AppendErrorLogCustom "GetChromeVersion - Begin"
    Dim sVer$, sPath$
    sVer = Reg.GetString(HKEY_LOCAL_MACHINE, "Software\Google\Update\Clients\{8A69D345-D564-463c-AFF1-A69D9E530F96}", "pv")
    'not found try current user - win7(x86)
    If Len(sVer) = 0 Then
        sVer = Reg.GetString(HKEY_CURRENT_USER, "Software\Google\Update\Clients\{8A69D345-D564-463c-AFF1-A69D9E530F96}", "pv")
    End If
    If Len(sVer) = 0 Then 'Wow6432Node
        sVer = Reg.GetString(HKEY_LOCAL_MACHINE, "Software\Google\Update\Clients\{8A69D345-D564-463c-AFF1-A69D9E530F96}", "pv", True)
    End If
    If Len(sVer) = 0 Then
        sPath = Reg.GetString(HKEY_LOCAL_MACHINE, "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe", vbNullString)
        If sPath <> "" Then
            sVer = GetFilePropVersion(sPath)
        End If
    End If
    If Len(sVer) = 0 Then
        sVer = Reg.GetString(HKEY_CURRENT_USER, "SOFTWARE\Google\Chrome\BLBeacon", "version")
    End If
    GetChromeVersion = sVer
    AppendErrorLogCustom "GetChromeVersion - End"
End Function

Public Function GetFirefoxVersion() As String
    AppendErrorLogCustom "GetFirefoxVersion - Begin"
    Dim sVer$, sPath$
    
    sPath = Reg.GetString(HKEY_LOCAL_MACHINE, "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\firefox.exe", vbNullString)
    If Len(sPath) <> 0 Then
        sVer = GetFilePropVersion(sPath)
        If Len(sVer) = 0 Then sVer = Reg.GetString(HKEY_LOCAL_MACHINE, "Software\Mozilla\Mozilla Firefox", "CurrentVersion")
    End If
    
    GetFirefoxVersion = sVer
    AppendErrorLogCustom "GetFirefoxVersion - End"
End Function

'---------------------------------------------------------------------------------------
' Procedure : GetOperaVersion
' Purpose   : Gets the version of the installed Opera browser
' Return    : The version or an empty string if it cannot be found
'---------------------------------------------------------------------------------------
' Revision History:
' Date       Author        Purpose
' ---------  ------------  -------------------------------------------------------------
' 02Jul2013  Claire Streb  Original
' 24.03.15   Alex Dragokas Reworked/Simplified
'
Public Function GetOperaVersion() As String
    AppendErrorLogCustom "GetOperaVersion - Begin"
    Dim sOperaPath$
    sOperaPath = Reg.GetString(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion\App Paths\Opera.exe", vbNullString)

    If Len(sOperaPath) <> 0 Then
        sOperaPath = UnQuote(sOperaPath)
        If FileExists(sOperaPath) Then GetOperaVersion = GetFilePropVersion(sOperaPath)
    End If
    AppendErrorLogCustom "GetOperaVersion - End"
End Function

Public Function GetMSIEVersion() As String
    On Error GoTo ErrorHandler:
    AppendErrorLogCustom "GetMSIEVersion - Begin"
    
    Dim sMSIEPath$, sMSIEVersion$, sMSIEHotfixes$, HotFixVer$, i&
       
    If 0 = Len(sMSIEVersion) Then
        sMSIEPath = Reg.GetString(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion\App Paths\IEXPLORE.EXE", vbNullString)
        If sMSIEPath <> vbNullString Then
            sMSIEPath = Trim$(sMSIEPath)
            If FileExists(sMSIEPath) Then
                sMSIEVersion = GetFilePropVersion(sMSIEPath)
            End If
        End If
    End If
       
    If 0 = Len(sMSIEVersion) Then
        sMSIEVersion = Reg.GetString(HKEY_LOCAL_MACHINE, "Software\Microsoft\Internet Explorer", "svcVersion")
        If 0 = Len(sMSIEVersion) Then
            sMSIEVersion = Reg.GetString(HKEY_LOCAL_MACHINE, "Software\Microsoft\Internet Explorer", "version")
        End If
    End If
    
    sMSIEHotfixes = Reg.GetString(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion\Internet Settings", "MinorVersion")
    
    If Len(sMSIEHotfixes) <> 0 And sMSIEHotfixes <> "0" Then
        For i = 5 To 1 Step -1
            If InStr(1, sMSIEHotfixes, "SP" & i, vbTextCompare) > 0 Then
                HotFixVer = "SP" & i
                Exit For
            End If
        Next
    End If
    
    If Len(sMSIEVersion) <> 0 Then
        GetMSIEVersion = sMSIEVersion & IIf(Len(HotFixVer) <> 0, " " & HotFixVer, vbNullString)
    Else
        GetMSIEVersion = "Unknown" '"Unable to get Internet Explorer version!"
    End If
    
    AppendErrorLogCustom "GetMSIEVersion - End"
    Exit Function
ErrorHandler:
    ErrorMsg Err, "GetMSIEVersion"
    If inIDE Then Stop: Resume Next
End Function

Public Function IsSignPresent(FileName As String) As Boolean
    ' &H3C -> PE_Header offset
    ' PE_Header offset + &H18 = Optional_PE_Header
    ' PE_Header offset + &H78 = Data_Directories offset
    ' Data_Directories offset + &H20 = SecurityDir -> Address (dword), Size (dword) for digital signature.
    
    On Error GoTo ErrorHandler:
    AppendErrorLogCustom "IsSignPresent - Begin", "File: " & FileName
    
    Const IMAGE_FILE_MACHINE_I386   As Long = &H14C&
    Const IMAGE_FILE_MACHINE_IA64   As Long = &H200&
    Const IMAGE_FILE_MACHINE_AMD64  As Long = &H8664&
    
    Dim ff              As Integer
    Dim PE_offset       As Long
    Dim SignAddress     As Long
    Dim DataDir_offset  As Long
    Dim DirSecur_offset As Long
    Dim Machine(1)      As Byte
    Dim FSize           As Long
    Dim Redirect As Boolean, bOldStatus As Boolean
  
    Redirect = ToggleWow64FSRedirection(False, FileName, bOldStatus)
  
    ff = FreeFile()
    Open FileName For Binary Access Read Shared As #ff
    FSize = LOF(ff)
    
    If FSize >= &H3C& + 6& Then
        Get #ff, &H3C + 1&, PE_offset
        Get #ff, PE_offset + 4& + 1&, Machine(0)
        
        Select Case Machine(0) + CLng(Machine(1)) * 256&
            Case IMAGE_FILE_MACHINE_I386
                DataDir_offset = PE_offset + &H78&
            Case IMAGE_FILE_MACHINE_AMD64, IMAGE_FILE_MACHINE_IA64
                DataDir_offset = PE_offset + &H88&
            Case Else   'unknown architecture, not PE EXE or damaged image
                Close #ff
                Exit Function
        End Select
        
        DirSecur_offset = DataDir_offset + &H20
        
        If FSize >= DirSecur_offset + 4& Then Get #ff, DirSecur_offset + 1&, SignAddress
    End If
    
    Close #ff
    If Redirect Then Call ToggleWow64FSRedirection(bOldStatus)
    
    IsSignPresent = (SignAddress <> 0)
    
    AppendErrorLogCustom "IsSignPresent - End"
    Exit Function
ErrorHandler:
    ErrorMsg Err, "modUtils_IsSignPresent", "File:", FileName
    If Redirect Then Call ToggleWow64FSRedirection(bOldStatus)
    If inIDE Then Stop: Resume Next
End Function

' ������ ��������� �������� ����� (� �������������� NTFS ����������)
Public Function DeleteFileForce(File As String, Optional bForceMicrosoft As Boolean) As Long
    On Error GoTo ErrorHandler:
    AppendErrorLogCustom "DeleteFileForce - Begin", "File: " & File
    
    Const FILE_ATTRIBUTE_NORMAL     As Long = &H80&
    Const FILE_ATTRIBUTE_READONLY   As Long = 1&
    
    Dim lr          As Long
    Dim Attrib      As Long
    Dim isDeleted   As Boolean
    Dim Redirect As Boolean, bOldStatus As Boolean

    If Not bForceMicrosoft Then
        If IsMicrosoftFile(File) Then Exit Function
    End If

    Redirect = ToggleWow64FSRedirection(False, File, bOldStatus)

    Attrib = GetFileAttributes(StrPtr(File))

    If Attrib And FILE_ATTRIBUTE_READONLY Then
        SetFileAttributes StrPtr(File), Attrib And Not FILE_ATTRIBUTE_READONLY
    End If
    
    lr = DeleteFileW(StrPtr(File))  'not 0 - success
    If lr = 0 Then
        Debug.Print "Error " & Err.LastDllError & " when deleting file: " & File
    End If

    ' -> � ������ �������, ������� ��������� ���� NTFS + ����� ��������� �� ��������� ������ "��������������"
    ' ���� � ��������� ���������� ������ ��� ��������� � �����

    isDeleted = Not FileExists(File)
    
    If Not isDeleted Then
        TryUnlock File
        SetFileAttributes StrPtr(File), FILE_ATTRIBUTE_NORMAL
        
        Call DeleteFileW(StrPtr(File))
        'lr = Err.LastDllError
        
        isDeleted = Not FileExists(File)
    End If
    
    If isDeleted Then SHChangeNotify SHCNE_DELETE, SHCNF_PATH Or SHCNF_FLUSHNOWAIT, StrPtr(File), ByVal 0&

    DeleteFileForce = isDeleted 'lr

    If Redirect Then Call ToggleWow64FSRedirection(bOldStatus)
    
    AppendErrorLogCustom "DeleteFileForce - End"
    Exit Function
ErrorHandler:
    ErrorMsg Err, "DeleteFileEx", "File:", File
    If Redirect Then Call ToggleWow64FSRedirection(bOldStatus)
    If inIDE Then Stop: Resume Next
End Function

Sub TryUnlock(ByVal File As String)  '��������� ���� NTFS + ����� ��������� �� ��������� ������ "��������������"
    On Error GoTo ErrorHandler:
    AppendErrorLogCustom "TryUnlock - Begin", "File: " & File
    
    Dim TakeOwn As String
    Dim Icacls As String
    Dim DosName As String
    Dim bIsFolder As Boolean
    
    DosName = GetDOSFilename(File)
    If Len(DosName) <> 0 Then File = DosName
    
    If Not OSver.IsWindowsVistaOrGreater Then Exit Sub
    
    bIsFolder = FolderExists(File)
    
    If OSver.Bitness = "x64" And FolderExists(sWinDir & "\sysnative") Then
        TakeOwn = EnvironW("%SystemRoot%") & "\Sysnative\takeown.exe"
        Icacls = EnvironW("%SystemRoot%") & "\Sysnative\icacls.exe"
    Else
        TakeOwn = EnvironW("%SystemRoot%") & "\System32\takeown.exe"
        Icacls = EnvironW("%SystemRoot%") & "\System32\icacls.exe"
    End If
    
    If FileExists(TakeOwn) Then
      If bIsFolder Then
        Proc.ProcessRun TakeOwn, "/F " & """" & File & """" & " /r /d y", , 0
        If ERROR_SUCCESS <> Proc.WaitForTerminate(, , , 30000) Then
            Proc.ProcessClose , , True
        End If
      Else
        Proc.ProcessRun TakeOwn, "/F " & """" & File & """", , 0
        If ERROR_SUCCESS <> Proc.WaitForTerminate(, , , 5000) Then
            Proc.ProcessClose , , True
        End If
      End If
    End If
    
    If FileExists(Icacls) Then
      If bIsFolder Then
        If 0 <> Len(OSver.SID_CurrentProcess) Then
            Proc.ProcessRun Icacls, """" & File & """" & " /grant:r *" & OSver.SID_CurrentProcess & ":F /T /C /L", , 0
        Else
            Proc.ProcessRun Icacls, """" & File & """" & " /grant:r """ & envCurUser & """:F /T /C /L", , 0
        End If
        If ERROR_SUCCESS <> Proc.WaitForTerminate(, , , 30000) Then
            Proc.ProcessClose , , True
        End If
      Else
        Proc.ProcessRun Icacls, """" & File & """" & " /grant:r *S-1-1-0:F /L", , 0
        If ERROR_SUCCESS <> Proc.WaitForTerminate(, , , 5000) Then
            Proc.ProcessClose , , True
        End If
        
        Proc.ProcessRun Icacls, """" & File & """" & " /grant:r *S-1-5-32-544:F /L", , 0
        If ERROR_SUCCESS <> Proc.WaitForTerminate(, , , 5000) Then
            Proc.ProcessClose , , True
        End If
    
        If 0 <> Len(OSver.SID_CurrentProcess) Then
            Proc.ProcessRun Icacls, """" & File & """" & " /grant:r *" & OSver.SID_CurrentProcess & ":F /L", , 0
        Else
            Proc.ProcessRun Icacls, """" & File & """" & " /grant:r """ & envCurUser & """:F /L", , 0
        End If
        If ERROR_SUCCESS <> Proc.WaitForTerminate(, , , 5000) Then
            Proc.ProcessClose , , True
        End If
      End If
    End If
    
    AppendErrorLogCustom "TryUnlock - End"
    Exit Sub
ErrorHandler:
    ErrorMsg Err, "TryUnlock", "File:", File
    If inIDE Then Stop: Resume Next
End Sub

Public Function AppPath(Optional bGetFullPath As Boolean) As String
    On Error GoTo ErrorHandler

    Static ProcPathFull  As String
    Static ProcPathShort As String
    Dim ProcPath As String
    Dim cnt      As Long
    Dim hProc    As Long
    Dim pos      As Long
    
    'Cache
    If bGetFullPath Then
        If Len(ProcPathFull) <> 0 Then
            AppPath = ProcPathFull
            Exit Function
        End If
    Else
        If Len(ProcPathShort) <> 0 Then
            AppPath = ProcPathShort
            Exit Function
        End If
    End If
    
    If App.LogMode = 0 Then
        If bGetFullPath Then
            AppPath = GetDOSFilename(App.Path, bReverse:=True) & "\" & GetValueFromVBP(BuildPath(App.Path, App.EXEName & ".vbp"), "ExeName32")
            ProcPathFull = AppPath
        Else
            AppPath = GetDOSFilename(App.Path, bReverse:=True)
            ProcPathShort = AppPath
        End If
        Exit Function
    End If

    hProc = GetModuleHandle(0&)
    If hProc < 0 Then hProc = 0

    ProcPath = String$(MAX_PATH, vbNullChar)
    cnt = GetModuleFileName(hProc, StrPtr(ProcPath), Len(ProcPath)) 'hproc can be 0 (mean - current process)
    
    If cnt = MAX_PATH Then 'Path > MAX_PATH -> realloc
        ProcPath = Space$(MAX_PATH_W)
        cnt = GetModuleFileName(hProc, StrPtr(ProcPath), Len(ProcPath))
    End If
    
    If cnt = 0 Then                          'clear path
        ProcPath = App.Path
    Else
        ProcPath = Left$(ProcPath, cnt)
        If StrComp("\SystemRoot\", Left$(ProcPath, 12), 1) = 0 Then ProcPath = sWinDir & Mid$(ProcPath, 12)
        If "\??\" = Left$(ProcPath, 4) Then ProcPath = Mid$(ProcPath, 5)
        
        If Not bGetFullPath Then
            ' trim to path
            pos = InStrRev(ProcPath, "\")
            If pos <> 0 Then ProcPath = Left$(ProcPath, pos - 1)
        End If
    End If
    
    ProcPath = GetDOSFilename(ProcPath, bReverse:=True)     '8.3 -> to Full
    
    AppPath = ProcPath
    
    If bGetFullPath Then
        ProcPathFull = ProcPath
    Else
        ProcPathShort = ProcPath
    End If
    Exit Function
ErrorHandler:
    ErrorMsg Err, "Parser.AppPath", "ProcPath:", ProcPath
    If inIDE Then Stop: Resume Next
End Function

Public Function AppExeName(Optional WithExtension As Boolean) As String
    On Error GoTo ErrorHandler

    Static ProcPathShort As String
    Static ProcPathFull  As String
    Dim ProcPath As String
    Dim cnt      As Long
    Dim hProc    As Long
    Dim pos      As Long

    'Cache
    If WithExtension Then
        If Len(ProcPathFull) <> 0 Then
            AppExeName = ProcPathFull
            Exit Function
        End If
    Else
        If Len(ProcPathShort) <> 0 Then
            AppExeName = ProcPathShort
            Exit Function
        End If
    End If

    If inIDE Then
        AppExeName = App.EXEName & IIf(WithExtension, ".exe", "")
        Exit Function
    End If

    hProc = GetModuleHandle(0&)
    If hProc < 0 Then hProc = 0

    ProcPath = String$(MAX_PATH, vbNullChar)
    cnt = GetModuleFileName(hProc, StrPtr(ProcPath), Len(ProcPath)) 'hproc can be 0 (mean - current process)
    
    If cnt = MAX_PATH Then 'Path > MAX_PATH -> realloc
        ProcPath = Space$(MAX_PATH_W)
        cnt = GetModuleFileName(hProc, StrPtr(ProcPath), Len(ProcPath))
    End If
    
    If cnt = 0 Then                          'clear path
        ProcPath = App.EXEName & IIf(WithExtension, ".exe", "")
    Else
        ProcPath = Left$(ProcPath, cnt)
        
        pos = InStrRev(ProcPath, "\")
        If pos <> 0 Then ProcPath = Mid$(ProcPath, pos + 1)
        
        If Not WithExtension Then
            ProcPath = GetFileName(ProcPath)
        End If
    End If
    
    AppExeName = ProcPath
    
    If WithExtension Then
        ProcPathFull = ProcPath
    Else
        ProcPathShort = ProcPath
    End If
    
    Exit Function
ErrorHandler:
    ErrorMsg Err, "Parser.AppExeName", "ProcPath:", ProcPath
    If inIDE Then Stop: Resume Next
End Function


Public Function ParseCommandLine(Line As String, argc As Long, argv() As String) As Boolean
  On Error GoTo ErrorHandler
  Dim Lex$(), nL&, nA&, Unit$, St$
  St = Line
  If Len(St) > 0 Then ParseCommandLine = True
  Lex = Split(St) '��������� �� �������� �� ������� ��� ������� ������
  ReDim argv(0 To UBound(Lex) + 1) As String '���������� �������� ������ �� ����������� ���������� ����� ����������
  argv(0) = AppPath(True)
  If Len(St) <> 0 Then
    Do While nL <= UBound(Lex)
      Unit = Lex(nL) '���������� ������� ������� ��� ������ ������ ���������
      If Len(Unit) <> 0 Then '������ �� ������� �������� ����� �����������
        '���� � ������� ������� ������� ��� �������� �� �����, �� �������� ������� "������������"
        If (Len(Lex(nL)) - Len(Replace$(Lex(nL), """", ""))) Mod 2 = 1 Then
          Do
            nL = nL + 1
            If nL > UBound(Lex) Then Exit Do '���� �� ��������� ����������� �������, � ������ ������ ���
            Unit = Unit & " " & Lex(nL) '��������� �������� ��������
          ' �������� ������ ����������� 1 ��� �������� ������ ������� ������� �� ����� ������������ � ��� ������ ��������� (����� ����� �������)
          Loop Until (Len(Lex(nL)) - Len(Replace$(Lex(nL), """", ""))) Mod 2 = 1
        End If
        Unit = Replace$(Unit, """", "") '������� �������
        nA = nA + 1 '������� ���-�� �������� ����������
        argv(nA) = Unit
      End If
      nL = nL + 1 '������� ������� �������
    Loop
  End If
  ReDim Preserve argv(0 To nA) ' ������� ������ �� ��������� ����� ����������
  argc = nA
  Exit Function
ErrorHandler:
  ErrorMsg Err, "Parser.ParseCommandLine", "CmdLine:", Line
  If inIDE Then Stop: Resume Next
End Function

'Delete File with unlock access rights on failure. Return non 0 on success.
Public Function DeleteFileWEx(lpSTR As Long, Optional ForceDeleteMicrosoft As Boolean, Optional DisallowRemoveOnReboot As Boolean) As Long
    On Error GoTo ErrorHandler:
    AppendErrorLogCustom "DeleteFileWEx - Begin"

    Dim iAttr As Long, lr As Long, sExt As String, sNewName As String
    Dim Redirect As Boolean, bOldStatus As Boolean

    Dim FileName$
    FileName = String$(lstrlen(lpSTR), vbNullChar)
    If Len(FileName) <> 0 Then
        lstrcpy StrPtr(FileName), lpSTR
    Else
        Exit Function
    End If
    
    sExt = GetExtensionName(FileName)
    
    If Not ForceDeleteMicrosoft Then
        If Not StrInParamArray(sExt, ".txt", ".log", ".tmp") Then
            If IsMicrosoftFile(FileName) Then Exit Function
        End If
    End If
    
    Redirect = ToggleWow64FSRedirection(False, FileName, bOldStatus)
    
    iAttr = GetFileAttributes(lpSTR)
    If (iAttr And 2048) Then iAttr = iAttr - 2048
    
    If iAttr And FILE_ATTRIBUTE_READONLY Then SetFileAttributes lpSTR, iAttr And Not FILE_ATTRIBUTE_READONLY
    lr = DeleteFileW(lpSTR)
    
    If lr <> 0 Then 'success
        DeleteFileWEx = lr
        GoTo Finalize
    End If
    
    If Err.LastDllError = ERROR_FILE_NOT_FOUND Then
        DeleteFileWEx = 1
        GoTo Finalize
    End If
    
    If Err.LastDllError = ERROR_ACCESS_DENIED Then
        TryUnlock FileName
        If iAttr And FILE_ATTRIBUTE_READONLY Then SetFileAttributes lpSTR, iAttr And Not FILE_ATTRIBUTE_READONLY
        lr = DeleteFileW(lpSTR)
    End If
    
    If lr = 0 Then 'if process still run, try rename file
        sNewName = GetEmptyName(FileName & ".bak")
        
        If 0 = MoveFile(StrPtr(FileName), StrPtr(sNewName)) Then
            If Not DisallowRemoveOnReboot Then
                DeleteFileOnReboot FileName, bNoReboot:=True
                bRebootRequired = True
            End If
        End If
    End If
    
Finalize:
    If Redirect Then Call ToggleWow64FSRedirection(bOldStatus)
    
    AppendErrorLogCustom "DeleteFileWEx - End"
    Exit Function
ErrorHandler:
    ErrorMsg Err, "Parser.DeleteFileWEx", "File:", FileName
    If inIDE Then Stop: Resume Next
End Function

Public Function ConvertUnixTimeToLocalDate(Seconds As Long) As Date
    On Error GoTo ErrorHandler
    'Dim ftime               As FILETIME
    'Dim TimeZoneInfo(171)   As Byte
    Dim sTime               As SYSTEMTIME
    Dim DateTime            As Date
    
    DateTime = DateAdd("s", Seconds, #1/1/1970#)    ' time_t -> Date
    VariantTimeToSystemTime DateTime, sTime         ' Date -> SYSTEMTIME
    
    'SystemTimeToFileTime stime, ftime               ' SYSTEMTIME -> FILETIME
    'FileTimeToLocalFileTime ftime, ftime            ' ��������� �������� �������� ������� ������������ ���������� � �������
    'FileTimeToSystemTime varptr(ftime), stime               ' FILETIME -> SYSTEMTIME
    
    'alternate:
    'GetTimeZoneInformation VarPtr(TimeZoneInfo(0))
    'SystemTimeToTzSpecificLocalTime VarPtr(TimeZoneInfo(0)), stime, stime
    
    SystemTimeToTzSpecificLocalTime 0&, sTime, sTime    'tz can be 0, if tz is current
    
    SystemTimeToVariantTime sTime, DateTime         ' SYSTEMTIME -> Date
    ConvertUnixTimeToLocalDate = DateTime
    Exit Function
ErrorHandler:
    ErrorMsg Err, "modUtils.ConvertUnixTimeToLocalDate", "sec:", Seconds
    If inIDE Then Stop: Resume Next
End Function

Public Function ConvertFileTimeToLocalDate(lpFileTime As Long) As Date
    On Error GoTo ErrorHandler
    
    Dim DateTime            As Date
    Dim sTime               As SYSTEMTIME
    Dim ft                  As FILETIME
    
    memcpy ft, ByVal lpFileTime, Len(ft)
    
    FileTimeToSystemTime ft, sTime        ' FILETIME -> SYSTEMTIME
    SystemTimeToTzSpecificLocalTime 0&, sTime, sTime    ' tz can be 0, if tz is current
    SystemTimeToVariantTime sTime, DateTime             ' SYSTEMTIME -> vtDate
    
    ConvertFileTimeToLocalDate = DateTime
    
    Exit Function
ErrorHandler:
    ErrorMsg Err, "modUtils.ConvertFileTimeToLocalDate", "lpFileTime:", lpFileTime
    If inIDE Then Stop: Resume Next
End Function

Private Function BuildPath$(sPath$, sFile$)
    BuildPath = sPath & IIf(Right$(sPath, 1) = "\", vbNullString, "\") & sFile
End Function

Public Function GetWindowsVersion() As String    'Init by Form_load.
                                                 
    AppendErrorLogCustom "modUtils.GetWindowsVersion - Begin"
    
    On Error GoTo ErrorHandler:
    
    Static IsInit As Boolean
    Static sWinVer As String
    
    If IsInit Then
        GetWindowsVersion = sWinVer
        Exit Function
    Else
        IsInit = True
    End If
    
    'already in form_initialize (frmEULA)
    'Set OSver = New clsOSInfo
    
    bIsWin64 = (OSver.Bitness = "x64")
    bIsWOW64 = bIsWin64 ' mean VB6 app-s are always x32 bit.
    bIsWin32 = Not bIsWin64
    
    sWinSysDir = Environ$("SystemRoot") & "\System32"

    'enable redirector
    If bIsWin64 Then ToggleWow64FSRedirection True

    If OSver.MajorMinor >= 5.1 And OSver.MajorMinor <= 5.2 Then bIsWinXP = True
    If OSver.MajorMinor = 5 Then bIsWin2k = True

    With OSver
        bIsWinVistaAndNewer = .Major >= 6
        bIsWin7AndNewer = .MajorMinor >= 6.1
        
        Select Case .PlatformID
            Case 0: GetWindowsVersion = "Detected: Windows 3.x running Win32s": Exit Function
            Case 1: bIsWin9x = True: bIsWinNT = False
            Case 2: bIsWinNT = True: bIsWin9x = False
        End Select
        
        If bIsWin9x Then
            If .Major = 4 Then
                If .Minor = 90 Then 'Windows Millennium Edition
                    bIsWinME = True
                End If
            End If
        End If

        sWinVer = OSver.OSName & " " & OSver.Edition & " SP" & OSver.SPVer & " " & _
            "(Windows " & OSver.Platform & " " & .Major & "." & .Minor & "." & .Build & "." & .Revision & ")"

    End With
    
    GetWindowsVersion = sWinVer

    AppendErrorLogCustom "modUtils.GetWindowsVersion - End"
    Exit Function
ErrorHandler:
    ErrorMsg Err, "GetWindowsVersion"
    If inIDE Then Stop: Resume Next
End Function

Public Sub PictureBoxRgn(ByRef hObject As Object, ByVal lMaskColor As Long)
    On Error GoTo ErrorHandler:

    Dim hRgn As Long, hOutRgn As Long
    Dim i As Long, j As Long
    Dim lHeight As Long, lWidth As Long
    
    hOutRgn = CreateRectRgn(0, 0, 0, 0)
    lWidth = hObject.Width / Screen.TwipsPerPixelX
    lHeight = hObject.Height / Screen.TwipsPerPixelY

    For i = 0 To lWidth - 1
        For j = 0 To lHeight - 1
            If GetPixel(hObject.hdc, i, j) <> lMaskColor Then
                hRgn = CreateRectRgn(i, j, i + 1, j + 1)
                Call CombineRgn(hOutRgn, hOutRgn, hRgn, RGN_OR)
                Call DeleteObject(hRgn)
            End If
        Next j
    Next i
    
    Call SetWindowRgn(hObject.hwnd, hOutRgn, True)
    Call DeleteObject(hOutRgn)
    Exit Sub
ErrorHandler:
    ErrorMsg Err, "GetWindowsVersion"
    If inIDE Then Stop: Resume Next
End Sub

Function GetDefaultApp(Protocol As String, Optional out_FriendlyName As String) As String
    On Error GoTo ErrorHandler
    
    Const ASSOCF_INIT_FIXED_PROGID  As Long = 2048
    Const ASSOCF_IS_PROTOCOL        As Long = 4096
    Const ASSOCF_INIT_FOR_FILE      As Long = 8192
    Const ASSOCF_INIT_BYEXENAME     As Long = 2
    Const ASSOCF_INIT_NOREMAPCLSID  As Long = 1
    Const ASSOCF_NOFIXUPS           As Long = &H100
    Const ASSOCF_INIT_IGNOREUNKNOWN As Long = &H400&
    Const ASSOCF_OPEN_BYEXENAME     As Long = 2&
    Const ASSOCF_INIT_DEFAULTTOSTAR As Long = 4&
    
    Const ASSOCSTR_EXECUTABLE       As Long = 2&
    Const ASSOCSTR_FRIENDLYAPPNAME  As Long = 4&
    Const ASSOCSTR_COMMAND          As Long = 1&
    
    Dim HRes    As Long
    Dim buf     As String
    Dim Size    As Long
    Dim buf2    As String
    
    buf = String$(MAX_PATH, vbNullChar)
    Size = MAX_PATH
    
    HRes = AssocQueryString(ASSOCF_INIT_DEFAULTTOSTAR Or ASSOCF_NOFIXUPS, _
        ASSOCSTR_COMMAND, StrPtr(Protocol), 0&, StrPtr(buf), Size)         'StrPtr("Open"),

    If HRes = 0 And Size <> 0 Then
        buf = Left$(buf, Size - 1)
        buf2 = String$(MAX_PATH_W, vbNullChar)
        Size = GetLongPathName(StrPtr(buf), StrPtr(buf2), Len(buf2))
        If Size <> 0 Then
            GetDefaultApp = Left$(buf2, Size)
        Else
            GetDefaultApp = buf
        End If
    Else
        If HRes = -2147023741 Then      'AL_USER
            GetDefaultApp = "(AppID)"
        Else
            GetDefaultApp = "?"
            'Err.Raise 76
        End If
    End If
    
    buf = String$(MAX_PATH, vbNullChar)
    Size = MAX_PATH
    
    HRes = AssocQueryString(ASSOCF_INIT_DEFAULTTOSTAR Or ASSOCF_NOFIXUPS, _
        ASSOCSTR_FRIENDLYAPPNAME, StrPtr(Protocol), 0&, StrPtr(buf), Size)
    
    If HRes = 0 And Size <> 0 Then
        buf = Left$(buf, Size - 1)
        out_FriendlyName = buf
    End If
    
    If 0 = Len(out_FriendlyName) And "(AppID)" = GetDefaultApp Or "?" = GetDefaultApp Then
        GetDefaultApp = "Program is not associated"
    End If
    
    Exit Function
ErrorHandler:
    ErrorMsg Err, "GetDefaultApp"
    If inIDE Then Stop: Resume Next
End Function

Public Function GetSystemUpTime() As Date
    On Error GoTo ErrorHandler:
    
    Dim cMS As Currency
    Dim dDate As Date
    
    dDate = #12:00:00 AM#
    
    If IsProcedureAvail("GetTickCount64", "kernel32.dll") Then
        cMS = GetTickCount64()
        Dbg "GetTickCount64: " & cMS
        dDate = DateAdd("s", cMS * 10, dDate)
        Dbg "dDate: " & dDate
    Else
        dDate = DateAdd("s", GetTickCount() / 1000, dDate)
        Dbg "GetTickCount: " & GetTickCount()
        Dbg "dDate: " & dDate
    End If
    GetSystemUpTime = dDate
    
    Exit Function
ErrorHandler:
    ErrorMsg Err, "GetSystemUpTime"
    If inIDE Then Stop: Resume Next
End Function

Public Function ScanAfterReboot() As Boolean
    On Error GoTo ErrorHandler:
    
    Dim dReboot     As Date
    Dim dNow        As Date
    Dim dZero       As Date
    Dim dUptime     As Date
    Dim dLastScan   As Date
    
    dZero = #12:00:00 AM#
    dUptime = GetSystemUpTime()
    dNow = Now()
    dReboot = dNow - dUptime
    dLastScan = CDate(RegReadHJT("DateLastScan", "0"))
    
    If dLastScan = dZero Then
        ScanAfterReboot = True
    ElseIf dLastScan < dReboot Then
        ScanAfterReboot = True
    End If
    
    RegSaveHJT "DateLastScan", CStr(dNow)
    
    Exit Function
ErrorHandler:
    ErrorMsg Err, "cmdSaveDef_Click"
    If inIDE Then Stop: Resume Next
End Function

Public Function TrimSeconds(dDate As Date) As String
    If dDate > #11:59:59 PM# Then
        TrimSeconds = CStr(dDate)
        Dbg "TrimSeconds: " & TrimSeconds
    Else
        TrimSeconds = FormatDateTime(dDate, vbShortTime)
        Dbg "FormatDateTime: " & TrimSeconds
    End If
End Function

Public Sub SleepNoLock(ByVal nMSec As Long)
    Const nChunk As Long = 100&
    Dim nMSecCur As Long
    Do Until nMSecCur >= nMSec
        Sleep nChunk
        nMSecCur = nMSecCur + nChunk
        DoEvents
    Loop
End Sub

Public Sub GetFileByCLSID(sCLSID As String, out_sFile As String, Optional out_sTitle As String, Optional bRedirected As Boolean, Optional bShared As Boolean)
    On Error GoTo ErrorHandler:
    
    'Note: if 'bShared' = true, function will query for both WOW states,
    'but firstly it will query for redir. state defined in 'bRedirected' argument.
    
    Dim sBuf As String
    
    out_sTitle = Reg.GetString(HKEY_CLASSES_ROOT, "CLSID\" & sCLSID, vbNullString, bRedirected)
    If bShared And 0 = Len(out_sTitle) Then
        out_sTitle = Reg.GetString(HKEY_CLASSES_ROOT, "CLSID\" & sCLSID, vbNullString, Not bRedirected)
    End If
    If 0 = Len(out_sTitle) Then out_sTitle = "(no name)"
    
    If Left$(out_sTitle, 1) = "@" Then
        sBuf = GetStringFromBinary(, , out_sTitle)
        If 0 <> Len(sBuf) Then out_sTitle = sBuf
    End If
    
    out_sFile = Reg.GetString(HKEY_CLASSES_ROOT, "CLSID\" & sCLSID & "\InProcServer32", vbNullString, bRedirected)
    If bShared And 0 = Len(out_sFile) Then
        out_sFile = Reg.GetString(HKEY_CLASSES_ROOT, "CLSID\" & sCLSID & "\InProcServer32", vbNullString, Not bRedirected)
    End If
    
    'out_sFile = "(no file)"
    
    If 0 <> Len(out_sFile) Then
        out_sFile = UnQuote(EnvironW(out_sFile))
        '8.3 -> Full
        If FileExists(out_sFile) Then
            out_sFile = GetLongPath(out_sFile)
        End If
    End If
    
    Exit Sub
ErrorHandler:
    ErrorMsg Err, "GetFileByCLSID", sCLSID, out_sFile, out_sTitle, bRedirected
    If inIDE Then Stop: Resume Next
End Sub

'// Expand env. variable, unquote, normalize 8.3 path, search file on %PATH$ and append postfix "(no file)" or "(file missing)" if need.
Public Function FormatFileMissing(ByVal sFile As String) As String

    sFile = UnQuote(EnvironW(sFile))
    
    If Len(sFile) = 0 Then
        FormatFileMissing = "(no file)"
    Else
        '8.3 -> Full
        sFile = GetLongPath(sFile)
        
        If Right$(sFile, 1) = "\" Then
            If FolderExists(sFile) Then
                FormatFileMissing = sFile
            Else
                FormatFileMissing = sFile & " (folder missing)"
            End If
            Exit Function
        End If
        
        If FileExists(sFile) Then
            FormatFileMissing = sFile
        Else
            If InStr(sFile, "\") <> 0 Then
                FormatFileMissing = sFile & " (file missing)"
                
            Else 'relative path?
        
                sFile = FindOnPath(sFile, True)
                
                If FileExists(sFile) Then
                    FormatFileMissing = sFile
                Else
                    FormatFileMissing = sFile & " (file missing)"
                End If
            End If
        End If
    End If
End Function

'// concat string File + Arg, considering that "(no file)" or "(file missing)" postfixes in 'Filename' should go the last in the resulting string
Public Function ConcatFileArg(sFile As String, sArg As String) As String
    If sFile = "(no file)" Then
        ConcatFileArg = IIf(Len(sArg) <> 0, sArg & " ", "") & sFile
    ElseIf StrEndWith(sFile, " (file missing)") Then
        ConcatFileArg = Left$(sFile, Len(sFile) - Len(" (file missing)")) & " " & sArg & " (file missing)"
    ElseIf StrEndWith(sFile, " (folder missing)") Then
        ConcatFileArg = Left$(sFile, Len(sFile) - Len(" (folder missing)")) & " " & sArg & " (folder missing)"
    Else
        ConcatFileArg = sFile & IIf(Len(sArg) <> 0, " " & sArg, "")
    End If
End Function

Function UnpackZIP(Archive As String, DestFolder As String) As Boolean
    On Error GoTo ErrorHandler
    Dim clsid   As UUID
    Dim iidSh   As UUID
    Dim shExt   As IShellExtInit
    Dim pf      As IPersistFolder2
    Dim pIDL    As Long
    Dim cb      As Long
    
    CLSIDFromString StrPtr(ZipFldrCLSID), clsid
    CLSIDFromString StrPtr(IID_IShellExtInit), iidSh
    
    If CoCreateInstance(clsid, 0&, CLSCTX_INPROC_SERVER, iidSh, shExt) <> S_OK Then Exit Function
    
    Set pf = shExt
    SHParseDisplayName StrPtr(Archive), 0&, pIDL, 0&, 0&
    pf.Initialize pIDL
    ILFree pIDL
 
    Dim srg     As IStorage
    Dim stm     As IStream
    Dim enm     As IEnumSTATSTG
    Dim itm     As STATSTG
    Dim nam     As String
    Dim buf()   As Byte
    Dim fnum    As Integer
    
    Set srg = pf
    Set enm = srg.EnumElements
    
    ReDim buf(&HFFFF&)
    
    enm.Reset
    Do While enm.Next(1&, itm) = S_OK
        cb = lstrlen(itm.pwcsName)
        nam = Space(cb)
        
        lstrcpyn StrPtr(nam), itm.pwcsName, cb + 1
        CoTaskMemFree itm.pwcsName
        
        If itm.type <> STGTY_STORAGE Then
            fnum = FreeFile()
            Open BuildPath(DestFolder, nam) For Binary Access Write As fnum
            
            Set stm = srg.OpenStream(nam, 0&, STGM_READ, 0&)
            
            Do
                cb = stm.Read(buf(0), UBound(buf) + 1)
                If cb = 0 Then Exit Do
                If cb <= UBound(buf) Then ReDim Preserve buf(cb - 1)
                Put #fnum, , buf()
            Loop
            Close fnum
        End If
    Loop
    UnpackZIP = FileExists(BuildPath(DestFolder, nam))
    Exit Function
ErrorHandler:
    ErrorMsg Err, "UnpackZIP", Archive, DestFolder
    If inIDE Then Stop: Resume Next
End Function

Function UnpackZIPtoArray(Archive As String, out_Buf() As Byte) As Boolean
    On Error GoTo ErrorHandler
    
    Const Chunk As Long = &HFFFF&
    
    Dim clsid   As UUID
    Dim iidSh   As UUID
    Dim shExt   As IShellExtInit
    Dim pf      As IPersistFolder2
    Dim pIDL    As Long
    Dim cb      As Long
    
    CLSIDFromString StrPtr(ZipFldrCLSID), clsid
    CLSIDFromString StrPtr(IID_IShellExtInit), iidSh
    
    If CoCreateInstance(clsid, 0&, CLSCTX_INPROC_SERVER, iidSh, shExt) <> S_OK Then Exit Function
    
    Set pf = shExt
    SHParseDisplayName StrPtr(Archive), 0&, pIDL, 0&, 0&
    pf.Initialize pIDL
    ILFree pIDL
 
    Dim srg     As IStorage
    Dim stm     As IStream
    Dim enm     As IEnumSTATSTG
    Dim itm     As STATSTG
    Dim nam     As String
    Dim pos     As Long
    
    Set srg = pf
    Set enm = srg.EnumElements
    
    enm.Reset
    Do While enm.Next(1&, itm) = S_OK
        cb = lstrlen(itm.pwcsName)
        nam = Space(cb)
        
        lstrcpyn StrPtr(nam), itm.pwcsName, cb + 1
        CoTaskMemFree itm.pwcsName
        
        If itm.type <> STGTY_STORAGE Then
            
            Set stm = srg.OpenStream(nam, 0&, STGM_READ, 0&)
            pos = -1
            Do
                ReDim Preserve out_Buf(pos + Chunk)
                cb = stm.Read(out_Buf(pos + 1), Chunk)
                If cb < Chunk Then
                    If pos + cb <> -1 Then
                        ReDim Preserve out_Buf(pos + cb)
                        UnpackZIPtoArray = True
                    Else
                        Erase out_Buf
                    End If
                    Exit Do
                End If
                pos = pos + Chunk
            Loop
        End If
    Loop
    
    Exit Function
ErrorHandler:
    ErrorMsg Err, "UnpackZIP", Archive
    If inIDE Then Stop: Resume Next
End Function

Public Sub CreateUninstallKey(bCreate As Boolean, Optional EXE_Location As String = "") ' if false -> delete registry entries
    On Error GoTo ErrorHandler:
    AppendErrorLogCustom "CreateUninstallKey - Begin"
    Dim Setup_Key$:   Setup_Key = "Software\Microsoft\Windows\CurrentVersion\Uninstall\HiJackThis Fork"
    
    If bCreate Then
        If EXE_Location = "" Then EXE_Location = AppPath(True)
        
        Reg.CreateKey HKEY_LOCAL_MACHINE, Setup_Key
        Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "DisplayName", "HiJackThis Fork " & AppVerString
        Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "UninstallString", """" & EXE_Location & """ /uninstall"
        Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "DisplayIcon", EXE_Location & ",0"
        Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "DisplayVersion", AppVerString
        Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "Publisher", "Polshyn Stanislav"
        'Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "URLInfoAbout", "http://www.spywareinfo.com/~merijn/"
        'Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "URLInfoAbout", "https://sourceforge.net/projects/hjt/"
        Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "URLInfoAbout", "https://github.com/dragokas/hijackthis"
        Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "HelpLink", "https://github.com/dragokas/hijackthis/wiki/HJT:-Tutorial"
        Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "InstallLocation", GetParentDir(EXE_Location)
        Reg.SetDwordVal HKEY_LOCAL_MACHINE, Setup_Key, "NoModify", 1
        Reg.SetDwordVal HKEY_LOCAL_MACHINE, Setup_Key, "NoRepair", 1
        Reg.SetDwordVal HKEY_LOCAL_MACHINE, Setup_Key, "EstimatedSize", FileLenW(EXE_Location) \ 1024 'KB
        Reg.SetDwordVal HKEY_LOCAL_MACHINE, Setup_Key, "Language", IIf(g_CurrentLang = "Russian", &H419&, &H409&)
        Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "InstallDate", Format$(Date, "yyyymmdd", vbMonday)
        Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "Contact", "admin@dragokas.com"
        Reg.SetStringVal HKEY_LOCAL_MACHINE, Setup_Key, "Comments", "Creates a report of non-standard parameters of registry " & _
            "and file system for selectively removal of items related to the activities of malware and security risks"
    Else
        Reg.DelKey HKEY_LOCAL_MACHINE, Setup_Key
        Reg.DelKey HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion\Uninstall\HiJackThis"
        Reg.DelKey HKEY_CURRENT_USER, "Software\Microsoft\Installer\Products\8A9C1670A3F861244B7A7BFAFB422AA4"
    End If
    AppendErrorLogCustom "CreateUninstallKey - End"
    Exit Sub
ErrorHandler:
    ErrorMsg Err, "CreateUninstallKey", bCreate
    If inIDE Then Stop: Resume Next
End Sub

Public Sub RegSaveHJT(sName$, sData$)
    On Error GoTo ErrorHandler:
    If sName Like "Ignore#*" Then
        Dim aData() As Byte
        'aData = StrConv(sData, vbFromUnicode)
        aData = sData
        Reg.SetBinaryVal HKEY_LOCAL_MACHINE, "Software\TrendMicro\HiJackThisFork", sName, aData
    Else
        Reg.SetStringVal HKEY_LOCAL_MACHINE, "Software\TrendMicro\HiJackThisFork", sName, sData
    End If
    Exit Sub
ErrorHandler:
    ErrorMsg Err, "RegSaveHJT", sName & "," & sData
    If inIDE Then Stop: Resume Next
End Sub

Public Function RegReadHJT(sName$, Optional sDefault$, Optional bUseOldKey As Boolean) As String
    On Error GoTo ErrorHandler:
    Dim sKeyHJT As String
    If bUseOldKey Then
        sKeyHJT = "Software\TrendMicro\HiJackThis"
    Else
        sKeyHJT = "Software\TrendMicro\HiJackThisFork"
    End If
    If sName Like "Ignore#*" Then
        Dim aData() As Byte
        'RegReadHJT = Reg.GetBinaryToString(HKEY_LOCAL_MACHINE, sKeyHJT, sName)
        aData = Reg.GetBinary(HKEY_LOCAL_MACHINE, sKeyHJT, sName)
        If IsArrDimmed(aData) Then
            RegReadHJT = aData
        End If
    Else
        RegReadHJT = Reg.GetString(HKEY_LOCAL_MACHINE, sKeyHJT, sName)
    End If
    If Len(RegReadHJT) = 0 Then RegReadHJT = sDefault
    Exit Function
ErrorHandler:
    ErrorMsg Err, "RegReadHJT", sName & "," & sDefault
    If inIDE Then Stop: Resume Next
End Function

Public Sub RegDelHJT(sName$)
    Reg.DelVal HKEY_LOCAL_MACHINE, "Software\TrendMicro\HiJackThisFork", sName
End Sub

Public Function GetFontHeight(Fnt As Font) As Long
    Dim FntPrev As Font
    Set FntPrev = frmMain.Font
    Set frmMain.Font = Fnt
    GetFontHeight = frmMain.TextHeight("A")
    Set frmMain.Font = FntPrev
End Function

