LINUX SECURITY CHECKER
Linux Security Checker is a mini project that scans a Linux system for common security issues like weak configurations, open ports, outdated packages, and improper permissions, helping users improve system security.
COMMANDS :
1. SSH : SSH (Secure Shell) is a protocol used to securely connect to remote systems over a network. It encrypts data and allows secure remote login and command execution.
   > ssh command :/etc/ssh/ssh_config
   > Example : Host myserver
              HostName 192.168.1.10
              User ubuntu
              Port 22
   
2. SS : SS (Socket Stat) is a command-line utility in Linux used to display detailed information about network sockets. It is faster and more efficient than the older       netstat command.
   > SS command :ss -t -u
   > Example :ss -tuln
               Explanation:-t: Show TCP sockets
                           -u: Show UDP sockets
                           -l: Only show listening sockets
                           -n: Don't resolve hostnames or service names (show raw IPs and ports)
   
3. READ : The read command is used in shell scripts or the terminal to take input from the user or read a line from standard input.
   > READ command : read variable_name
   > Example : echo "Enter your name:"
               read name
              echo "Hello, $name"

4. TOUCH : The touch command is used to create empty files or update the timestamps of existing files.
   > TOUCH command : touch filename
   > Example : touch file.txt

5. ECHO : The echo command is used to display text or variables to the terminal. It’s commonly used in shell scripts and command-line output.
   > ECHO command : echo [options] [string]
   > Example : echo "Hello, World!"

6. AWK : AWK is a powerful text-processing tool used to search, extract, and manipulate data in files or output based on patterns.
   > AWK command : awk 'pattern { action }' filename
   > Example : awk '{ print }' file.txt

7. GREP : The grep command in Linux is used to search for a specific pattern or string in files or output. It stands for "Global Regular Expression Print".
   > GREP command : grep [options] pattern [file...]
   > Example : grep "error" logfile.txt

8. -e : The -e option in Linux commands has different meanings depending on the context. Most commonly:
    > -e command : grep -e "pattern1" -e "pattern2" file.txt
                   echo -e "Line1\nLine2"
    > Example : grep -e "error" -e "fail" logfile.txt
                echo -e "Hello\nWorld"
9. DATE : The date command is used to display or set the system date and time.
   > DATE command : date "+%Y-%m-%d %H:%M:%S"




   
   

   
   
