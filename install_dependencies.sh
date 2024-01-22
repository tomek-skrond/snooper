installation(){
	if [[ $1 == "rhel" ]]; then
		if [[ $2 == "sqlite3" ]]; then
			sudo yum install -y sqlite
		fi
                if [[ $2 == "mariadb" ]]; then
                        sudo yum install -y mariadb
                fi
                if [[ $2 == "psql" ]]; then
                        sudo yum install -y postgresql
                fi
                if [[ $2 == "all" ]]; then
			sudo yum install -y sqlite
                        sudo yum install -y mariadb
                        sudo yum install -y postgresql
                fi
	fi

	if [[ $1 == "debian" ]]; then
		echo "debian"
                if [[ $2 == "sqlite3" ]]; then
                        sudo apt install -y sqlite3
                fi
                
		if [[ $2 == "mariadb" ]]; then
                        sudo apt install -y mariadb
                fi

                if [[ $2 == "psql" ]]; then
                        sudo apt install -y postgresql
                fi
                
		if [[ $2 == "all" ]]; then
                        sudo apt install -y sqlite3
                        sudo apt install -y mariadb
                        sudo apt install -y postgresql
		fi
	fi
}
choose_options(){
	
	if [[ $option =~ .*"0".* ]]; then
        	echo "Chose option 0 - exiting"
                exit 0
        fi

        if [[ $option =~ .*"1".* ]]; then
        	echo "Chose option 1 - installing sqlite3"
                installation "$1" "sqlite3"
	fi               
 	if [[ $option =~ .*"2".* ]]; then
                echo "contains mariadb"
                installation "$1" "mariadb"
        fi

       	if [[ $option =~ .*"3".* ]]; then
        	echo "contains postgresql"
                installation "$1" "psql"
        fi

        if [[ $option =~ .*"4".* ]]; then
        	echo "all above"
                installation "$1" "all"
        fi

}
install_drivers(){
	. /etc/os-release
	echo "Clients are needed to establish connections with different database servers"
	echo "Snooper allows to upload analysis databases to different servers, so you need a client"
        echo "Which database clients do you want to install?"
	echo "0. none"
	echo "1. sqlite3"
	echo "2. mysql/mariadb"
	echo "3. postgresql"
	echo "4. All above"
	echo "You can specify which db clients you need by entering them comma-separated"
	read -p "Choose an option (1,2,3,4):" option

	option=$(echo ${option// /} | sed 's/./&\n/g' | uniq | sort -n | grep -Eo '[0-4]' | sed 's/\n//g; s/./&,/g' | uniq | tr -d '\n' | sed 's/,$//')
	
	echo $option
		
        if [[ "$ID_LIKE" =~ .*"rhel".* ]]; then	
		choose_options "rhel"
	fi

        if [[ "$ID_LIKE" =~ .*"debian".* ]]; then
                choose_options "debian"
	fi
}
install_dependencies(){
        . /etc/os-release
        if [[ "$ID_LIKE" =~ .*"rhel".* ]]; then
                sudo yum install -y epel-release
		sudo yum install -y perl-Image-ExifTool figlet
		install_drivers
        fi

        if [[ "$ID_LIKE" =~ .*"debian".* ]]; then
                sudo apt install -y figlet exiftool sqlite3
        fi
}
install_dependencies
