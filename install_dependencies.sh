install_dependencies(){
        . /etc/os-release
        if [[ "$ID_LIKE" =~ .*"rhel".* ]]; then
                sudo yum install -y epel-release
		sudo yum install -y perl-Image-ExifTool figlet
		sudo yum install -y sqlite3
        fi

        if [[ "$ID_LIKE" =~ .*"debian".* ]]; then
                sudo apt install -y figlet exiftool sqlite3
        fi
}

install_dependencies
