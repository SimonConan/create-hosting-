# Function to create directory for user and add sftp chroot dir in conf
createDir()
{
    if [ ! -d /var/sftp/${USER}/live ]
    then
        echo ""
        echo -e "\xf0\x9f\xa4\x98 \033[33mCreate\033[0m \033[32m/var/sftp/${USER}/live\033[0m"
        echo ""
        mkdir /var/sftp/${USER}/live
        chown -R root:root /var/sftp/${USER}
        chown -R ${USER}:sftp /var/sftp/${USER}/live
        chmod -R 700 /var/sftp/${USER}/live
    fi
}