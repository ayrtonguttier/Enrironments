userHome=$(eval echo ~$SUDO_USER)
destFileName=/usr/bin/set-omp-theme

if test -f $destFileName
then    
    rm $destFileName
fi

ln -s $userHome/workspace/Environments/oh-my-posh/poshthemes/set-omp-theme.sh $destFileName
chmod +x $destFileName


