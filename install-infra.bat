cd /d %UserProfile%

mkdir gitrepos

cinst 7zip

cinst git
set PATH=%PATH%;%ProgramFiles(x86)%\Git\cmd
git config --global core.autocrlf false

@rem VimÅiçÅÇËâÆî≈Åj
@cd gitrepos
git clone https://github.com/masaru-b-cl/Chocolatey-KaoriyaVim.git
@cd %UserProfile%
cinst KaoriyaVim -source %UserProfile%\gitrepos\Chocolatey-KaoriyaVim

@rem NeoBundle
mkdir %userprofile%\.vim\bundle
cd %userprofile%\.vim\bundle
git clone git://github.com/Shougo/neobundle.vim

cd %UserProfile%

@rem WinMerge
choco install winmerge-jp

cd %UserProfile%

@rem Ricty Diminished
@cd gitrepos
git clone https://github.com/masaru-b-cl/RictyDiminished.git
cscript "%~d0%~p0\install-font.vbs" "%UserProfile%\gitrepos\RictyDiminished\RictyDiminished-Regular.ttf"

cd %UserProfile%

@rem dotfile
@cd gitrepos
git clone -b windows https://github.com/masaru-b-cl/dotfiles.git
cmd /c .\dotfiles\install.bat

cd %UserProfile%

@rem wget
cinst wget

@rem git subcommands
mkdir %UserProfile%\bin
cd bin

wget --no-check-certificate https://github.com/git/git/raw/master/contrib/diff-highlight/diff-highlight
wget --no-check-certificate https://gist.githubusercontent.com/masaru-b-cl/5b461ffd4728ab9b61cb/raw/bbd12fcd6928ef31f5ab3d7d7dc2b230f95202f8/git-feature
wget --no-check-certificate https://gist.githubusercontent.com/masaru-b-cl/7038197/raw/fd9392748d0d5fba19af0122e845d04b6cfe2e9c/git-now
wget --no-check-certificate https://gist.githubusercontent.com/mzp/1131618/raw/900b1ed139f7ec3ded026eb09e97816d6f446b99/gistfile1.txt -O git-master
wget --no-check-certificate https://gist.githubusercontent.com/masaru-b-cl/5ada3ccd4ad4627032ca/raw/b7217c3080d95bef1c4729019b34fe9efe5db70e/git-archive-diff
