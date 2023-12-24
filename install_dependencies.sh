install_dependencies(){
        . /etc/os-release
        if [[ "$ID_LIKE" =~ .*"rhel".* ]]; then
                sudo yum install -y epel-release
		sudo yum install -y perl-Image-ExifTool figlet
        fi

        if [[ "$ID_LIKE" =~ .*"debian".* ]]; then
                sudo apt install -y figlet exiftool
        fi
}

install_dependencies
