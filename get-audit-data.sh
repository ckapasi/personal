#!/bin/bash
touch audit.out
#	List of accounts in the authorized_keys file for root from the server (to get the list of all users who can login to the server with root privileges)
echo '####################################################' >> audit.out
echo 'List of accounts in the authorized_keys file for root from the server' >> audit.out
echo '####################################################' >> audit.out
cat /root/.ssh/authorized_keys|grep '#' >> audit.out
echo '####################################################' >> audit.out
#Output (ls command) showing the directories existing within the /home directory (all users with non-root level access, but could still be privileged)
ls -l /home >> audit.out
#Output of the /etc/shadow and /etc/password files
echo '####################################################' >> audit.out
echo ' of the /etc/shadow and /etc/password files' >>  audit.out
echo 'cat /etc/shadow'  >> audit.out
cat /etc/shadow >> audit.out
echo '####################################################' >> audit.out
echo 'cat /etc/passwd' >> audit.out
cat /etc/passwd >> audit.out
#Output (ls command) of the directory where history logs are stored (to identify users who actually have done some activity on the server)
echo '####################################################' >> audit.out
echo 'ls -lrt /root/.hist*' >> audit.out
echo '####################################################' >> audit.out
ls -lrt /root/.hist* >> audit.out
echo '####################################################' >> audit.out
#The history logs itself for all users who logged in (this will be used only if we find users who should not have access)
echo '####################################################' >> audit.out
echo 'history outputs saved in /var/tmp/history-outputs'
mkdir /var/tmp/history-outputs
cp /root/.hist* /var/tmp/history-outputs
echo '####################################################' >> audit.out
#	Output of the /etc/ssh/sshd_config
echo 'Output of the /etc/ssh/sshd_config' >> audit.out
echo '####################################################' >> audit.out
cat /etc/ssh/sshd_config  >> audit.out
echo '####################################################' >> audit.out
echo 'Output of the /etc/login.defs ' >> audit.out
echo '####################################################' >> audit.out
cat /etc/login.defs   >> audit.out
echo '####################################################' >> audit.out
echo 'Output of the /etc/host.equiv' >> audit.out
echo '####################################################' >> audit.out
cat /etc/host.equiv   >> audit.out
echo '####################################################' >> audit.out
echo '####################################################' >> audit.out
echo 'Output of the /var/log/secure ' >> audit.out
echo '####################################################' >> audit.out
cat /var/log/secure    >> audit.out
echo '####################################################' >> audit.out
echo '####################################################' >> audit.out
echo 'Output of the /etc/sudoers ' >> audit.out
echo '####################################################' >> audit.out
cat /etc/sudoers    >> audit.out
echo '####################################################' >> audit.out
echo 'Output of the /etc/pam.d/system.auth ' >> audit.out
echo '####################################################' >> audit.out
cat /etc/pam.d/system.auth    >> audit.out
echo '####################################################' >> audit.out
echo '####################################################' >> audit.out
echo 'Output of the /etc/pamd.conf  ' >> audit.out
echo '####################################################' >> audit.out
cat /etc/pamd.conf   >> audit.out
echo '####################################################' >> audit.out
echo 'Output of ls -l on /,/bin, /etc, /usr, /var, /sbin, /usr, /bin,  ' >> audit.out
echo '####################################################' >> audit.out
ls  -l / /bin /etc /usr /var /sbin /usr /bin >> audit.out
echo '####################################################' >> audit.out
echo '####################################################' >> audit.out
echo 'Output of 'rpm -qai' command' >> audit.out
echo '####################################################' >> audit.out
rpm -qai >> audit.out
echo '####################################################' >> audit.out





