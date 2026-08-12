#define MyAppName "DFIN DSKEYS Manager"
#define MyAppVersion "4.1"
#define MyAppPublisher "dfin.uz"
#define MyAppURL "https://dfin.uz"
#define MyAppExeName "DFIN_DSKEYS_Manager.exe"
[Setup]
AppId={{E0D8B8A1-9FAE-4A69-9239-DF17D9CF93F1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
DefaultDirName={autopf}\DFIN DSKEYS Manager
DefaultGroupName=DFIN DSKEYS Manager
DisableProgramGroupPage=yes
OutputDir=installer
OutputBaseFilename=DFIN_DSKEYS_Manager_Setup_v4.1_FULL
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
UninstallDisplayIcon={app}\{#MyAppExeName}
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
[Files]
Source: "dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "vendor\python-3.12.10-amd64.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: "vendor\*.whl"; DestDir: "{app}\vendor"; Flags: ignoreversion
[Icons]
Name: "{autoprograms}\DFIN DSKEYS Manager"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\DFIN DSKEYS Manager"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"; Flags: unchecked
[Run]
Filename: "{tmp}\python-3.12.10-amd64.exe"; Parameters: "/quiet InstallAllUsers=1 PrependPath=1 Include_pip=1 Include_launcher=1 Include_test=0"; StatusMsg: "Installing bundled Python runtime..."; Flags: waituntilterminated
Filename: "{cmd}"; Parameters: "/C py -3.12 -m pip install --no-index --find-links &quot;{app}\vendor&quot; cryptography send2trash"; StatusMsg: "Installing bundled Python libraries..."; Flags: runhidden waituntilterminated
Filename: "{app}\{#MyAppExeName}"; Description: "Launch DFIN DSKEYS Manager"; Flags: nowait postinstall skipifsilent
