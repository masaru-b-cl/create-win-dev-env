$CurrentDir = (Convert-Path .)

Set-ExecutionPolicy Bypass -Scope Process -Force

# install Chocolatey
Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# install 7-Zip
cinst -y 7zip

# install Git
cinst -y git
$Env:Path += ";" + $Env:ProgramFiles + "\Git\cmd"

# configure Git
git config --global core.autocrlf false

# install Git subcommands
$BinFolder = $env:USERPROFILE + "\bin"
New-Item $BinFolder -ItemType Directory
cd $BinFolder
Invoke-WebRequest https://github.com/git/git/raw/master/contrib/diff-highlight/diff-highlight -UseBasicParsing -OutFile diff-highlight
Invoke-WebRequest https://gist.githubusercontent.com/masaru-b-cl/5b461ffd4728ab9b61cb/raw/bbd12fcd6928ef31f5ab3d7d7dc2b230f95202f8/git-feature -UseBasicParsing -OutFile git-feature
Invoke-WebRequest https://gist.githubusercontent.com/masaru-b-cl/7038197/raw/fd9392748d0d5fba19af0122e845d04b6cfe2e9c/git-now -UseBasicParsing -OutFile git-now
Invoke-WebRequest https://gist.githubusercontent.com/mzp/1131618/raw/900b1ed139f7ec3ded026eb09e97816d6f446b99/gistfile1.txt -UseBasicParsing -OutFile git-master
Invoke-WebRequest https://gist.githubusercontent.com/masaru-b-cl/5ada3ccd4ad4627032ca/raw/b7217c3080d95bef1c4729019b34fe9efe5db70e/git-archive-diff -UseBasicParsing -OutFile git-archive-diff

# prepare Git folder
$GitRepository = $env:USERPROFILE + "\gitrepos"
New-Item $GitRepository -ItemType Directory

# install WinMerge
cinst -y winmerge-jp

# install Vim
Set-Location $GitRepository
git clone https://github.com/masaru-b-cl/Chocolatey-KaoriyaVim.git
cinst -y KaoriyaVim -source Chocolatey-KaoriyaVim

# configure Vim | NeoBundle
$VimBundleFolder = $env:USERPROFILE + "\.vim\bundle"
New-Item $VimBundleFolder -ItemType Directory
cd $VimBundleFolder
git clone git://github.com/Shougo/neobundle.vim

# dotfiles
Set-Location $GitRepository
git clone -b windows https://github.com/masaru-b-cl/dotfiles.git
.\dotfiles\install.bat

# install MyricaM
$MyricaPath = $env:TEMP + "\MyricaM.TTC"
Invoke-WebRequest https://github.com/tomokuni/Myrica/raw/master/product/MyricaM.TTC -UseBasicParsing -OutFile $MyricaPath
$FONTS = 0x14$objShell = New-Object -ComObject Shell.Application$objFolder = $objShell.Namespace($FONTS)
$objFolder.CopyHere($MyricaPath)

Set-Location $CurrentDir
