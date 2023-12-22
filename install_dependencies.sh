install_dependencies(){
        . /etc/os-release
        if [[ "$ID_LIKE" =~ .*"rhel".* ]]; then
                sudo yum install -y figlet

                wget https://exiftool.org/Image-ExifTool-12.50.tar.gz
                tar xvf Image-ExifTool-12.50.tar.gz
                cd Image-ExifTool-12.50/
                perl Makefile.PL
                make
                make test
                sudo make install
                cd ..
                rm -rf Image-ExifTool-12.50.tar.gz Image-ExifTool-12.50.tar.gz.* Image-ExifTool-12.50/

        fi

        if [[ "$ID_LIKE" =~ .*"debian".* ]]; then
                sudo apt install -y figlet \
                                exiftool
        fi
}

install_dependencies
