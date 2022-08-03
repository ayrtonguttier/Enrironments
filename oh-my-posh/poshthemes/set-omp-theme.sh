workspaceThemesFolder=~/workspace/Environments/oh-my-posh/poshthemes
themeName=$1

if [ -z "$themeName" ]
then
    echo "themeName cannot be empty"
    exit 1
fi

themeFilePath=$workspaceThemesFolder/$themeName.omp.json


if ! test -f $themeFilePath
then
    echo "the specified theme does not exist ${themeName}"
    exit 2
fi

activeThemePath=~/.poshthemes/active.omp.json

if test -f $activeThemePath
then
    rm $activeThemePath
fi


ln -s $themeFilePath $activeThemePath 
