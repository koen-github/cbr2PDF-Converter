; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CBR to PDF Converter"
#define MyAppVersion "8.11"
#define MyAppPublisher "cbr2pdf"
#define MyAppURL "https://sourceforge.net/projects/cbrtopdf/"
#define MyAppExeName "Cbr2PDF.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E1F60356-CC3C-4DCF-B57D-027C0A5AEF53}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
InfoBeforeFile=C:\Users\koen\Dropbox\cbr naar pdf converter\textbefore.txt
InfoAfterFile=C:\Users\koen\Dropbox\cbr naar pdf converter\textInstaller.txt
OutputDir=C:\Users\koen
OutputBaseFilename=CBR2PDF_setup_8.11
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\koen\Dropbox\cbr naar pdf converter\bin\Release\Cbr2PDF.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\koen\Dropbox\cbr naar pdf converter\bin\Release\ChilkatDotNet4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\koen\Dropbox\cbr naar pdf converter\bin\Release\PdfSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Registry]
Root: HKCR; Subkey: "SystemFileAssociations\.cbr\shell\CBR to PDF"; Flags: uninsdeletekey deletekey
Root: HKCR; Subkey: "SystemFileAssociations\.cbr\shell\CBR to PDF\command"; ValueType: string; ValueData: """{app}\Cbr2PDF.exe"" ""%1"""; Flags: uninsdeletekey deletekey
Root: HKCR; Subkey: "SystemFileAssociations\.cbz\shell\CBR to PDF"; Flags: uninsdeletekey deletekey
Root: HKCR; Subkey: "SystemFileAssociations\.cbz\shell\CBR to PDF\command"; ValueType: string; ValueData: """{app}\Cbr2PDF.exe"" ""%1"""; Flags: uninsdeletekey deletekey


[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

