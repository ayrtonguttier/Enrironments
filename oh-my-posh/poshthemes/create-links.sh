poshThemesFolder=~/.poshthemes
workspaceThemesFolder=~/workspace/Environments/oh-my-posh/poshthemes

for filepath in "$workspaceThemesFolder"/*.omp.json
do
    filename=$(basename $filepath)
    destFileName="$poshThemesFolder"/"$filename"    

    if test -f $destFileName
    then
        rm $destFileName
    fi

    ln -s $filepath $destFileName 
done