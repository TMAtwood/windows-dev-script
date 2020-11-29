# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco feature enable -n allowGlobalConfirmation

# Enable remote desktop and WSL
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
Enable-RemoteDesktop

# Initiate Hyper-V
choco install Microsoft-Hyper-V-All -source windowsFeatures

# Initiate Windows Subsystem for Linux
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

#Install applications
choco install chocolatey
choco install boxstarter

choco install openjdk --version 11.0.2.1
choco install openjdk --version 15.0.1

choco upgrade openjdk

choco install 7zip.install
choco install adobe-creative-cloud
choco install adobereader
choco install aws-iam-authenticator
choco install awscli
choco install awslambdapscore
choco install awstools.powershell
choco install azcopy
choco install azure-cli
choco install azure-functions-core-tools
choco install ccleaner
choco install chocolatey-core.extension
choco install conemu
choco install cuda
choco install curl
choco install dacfx-18
choco install datagrip
choco install dependencywalker
choco install docker-desktop
choco install dotnetcore-3.1-sdk
choco install dotnet-5.0-sdk
choco install eclipse
choco install eksctl
choco install evernote
choco install f.lux
choco install fciv
choco install fiddler
choco install filezilla
choco install firacode
choco install firefox
choco install git
choco install git-lfs
choco install golang
choco install googlechrome
choco install gradle
choco install graphviz
choco install grammarly
choco install grammarly-chrome
choco install graphviz
choco install handbrake
choco install ilspy
choco install intellijidea-ultimate
choco install jq
choco install k9s
choco install kindle
choco install kubernetes-cli
choco install kubernetes-helm
choco install kubeval
choco install lastpass
choco install lastpass-for-applications
choco install letsencrypt-win-simple
choco install linqpad5
choco install logparser.lizardgui
choco install malwarebytes
choco install microsoftazurestorageexplorer
choco install minikube
choco install nano
choco install netfx-4.7.2-devpack
choco install nmap
choco install nodejs
choco install notepadplusplus
choco install nuget.commandline
choco install nugetpackageexplorer
choco install nvm
choco install obs-studio
choco install office365proplus
choco install opencover.portable
choco install openssl
choco install openvpn
choco install packer
choco install paket
choco install pester
choco install pgadmin4
choco install poshgit
choco install postman
choco install python3
choco install r.project
choco install r.studio
choco install reportgenerator.portable
choco install resharper-platform
choco install slack
choco install sql-server-management-studio
choco install sysinternals
choco install teamviewer
choco install terraform
choco install tortoisegit
choco install unzip
choco install vault
choco install vscode
choco install xmlexplorer
choco install winscp
choco install winsshterm
choco install wireshark
choco install yarn
choco install zap
choco install zoom

# Visual Studio and related components
choco install visualstudio-installer
choco install visualstudio2019professional
choco install visualstudio2019buildtools
choco install visualstudio2019teamexplorer
choco install visualstudio2019testagent
choco install visualstudio2019testcontroller
choco install visualstudio-2019-remotetools

choco install visualstudio2019-workload-azure
choco install visualstudio2019-workload-azurebuildtools
choco install visualstudio2019-workload-data
choco install visualstudio2019-workload-databuildtools
choco install visualstudio2019-workload-datascience
choco install visualstudio2019-workload-manageddesktop
choco install visualstudio2019-workload-manageddesktopbuildtools
choco install visualstudio2019-workload-managedgame
choco install visualstudio2019-workload-nativecrossplat
choco install visualstudio2019-workload-netcorebuildtools
choco install visualstudio2019-workload-netcoretools
choco install visualstudio2019-workload-netcrossplat
choco install visualstudio2019-workload-netweb
choco install visualstudio2019-workload-node
choco install visualstudio2019-workload-office
choco install visualstudio2019-workload-officebuildtools
choco install visualstudio2019-workload-python
choco install visualstudio2019-workload-universal
choco install visualstudio2019-workload-visualstudioextension
choco install visualstudio2019-workload-webbuildtools

# Create environment variables
[environment]::SetEnvironmentVariable("CodeCoverage","C:\Program Files (x86)\Microsoft Visual Studio\2019\TestAgent\Team Tools\Dynamic Code Coverage Tools","Machine")
[environment]::SetEnvironmentVariable("JAVA_HOME","C:\Program Files\Java\jdk-15.0.1\","Machine")
[environment]::SetEnvironmentVariable("MSBUILD_HOME","C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\MSBuild\15.0\Bin","Machine")
[environment]::SetEnvironmentVariable("OpenCover","C:\ProgramData\chocolatey\lib\opencover.portable\tools","Machine")
[environment]::SetEnvironmentVariable("ReportGenerator","C:\ProgramData\chocolatey\lib\reportgenerator.portable\tools","Machine")
[environment]::SetEnvironmentVariable("SSHAGENT_HOME","C:\WINDOWS\system32\OpenSSH","Machine")
[environment]::SetEnvironmentVariable("VSTest","C:\Program Files (x86)\Microsoft Visual Studio\2019\TestAgent\Common7\IDE\CommonExtensions\Microsoft\TestWindow","Machine")

$oldpath = [environment]::GetEnvironmentVariable("PATH", "Machine")
$newpath = $oldpath + ";%CodeCoverage%;%JAVA_HOME%;%MSBUILD_HOME%;%OpenCover%;%ReportGenerator%;%VSTest%"
[environment]::SetEnvironmentVariable("PATH", "$newpath", "Machine")

# Install AWS ECS Tools
dotnet tool install -g Amazon.ECS.Tools

# Install AWS Lambda Tools 
dotnet tool install -g Amazon.Lambda.Tools

# Install Coverlet
dotnet tool install -g coverlet

# Install DepGuard
dotnet tool install -g depguard

# Install FAKE CLI
dotnet tool install -g fake-cli
dotnet new -i "fake-template::*"

# Install F# Lint
dotnet tool install -g dotnet-fsharplint

# Install GitVersion
dotnet tool install -g GitVersion.Tool

# Install Paket
dotnet tool install -g paket

# Install Nuget Package Search
dotnet tool install -g dotnet-search

# Install .NET Data Encryption Tool
dotnet tool install -g dotnet-encrypto

# Install .NET SonarScanner
dotnet tool install -g dotnet-sonarscanner

# Install .NET ssh deployment tool
dotnet tool install -g dotnet-sshdeploy

# Install PowerShell Core
dotnet tool install -g powershell

# Install Report Generator
dotnet tool install -g reportgenerator

# Install XUnit CLI
dotnet tool install -g xunit-cli --add-source https://www.myget.org/F/natemcmaster/api/v3/index.json 

# Python specific tools
pip install aws-shell

# Install All Windows Updates
Install-WindowsUpdate -AcceptEula -SuppressReboots -getUpdatesFromMS
