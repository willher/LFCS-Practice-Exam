Essential Commands 25% 6

1. Log into local & remote graphical and text mode consoles
2. Search for files
3. Evaluate and compare the basic file system features and options
4. Compare and manipulate file content
5. Use input-output redirection (e.g. >, >>, |, 2>)
6. Analyze text using basic regular expressions
7. Archive, backup, compress, unpack, and uncompress files
8. Create, delete, copy, and move files and directories
9. Create and manage hard and soft links
10. List, set, and change standard file permissions
11. Read, and use system documentation
12. Manage access to the root account

--------------------------------------------------
Operation of Running Systems 20% 5

1. Boot, reboot, and shut down a system safely
2. Boot or change system into different operating modes
    - systemctl get-default
    - runlevel
    - systemctl set-default runlevel#.target
3. Install, configure and troubleshoot bootloaders
4. Diagnose and manage processes
    -htop
    -ps
5. Locate and analyze system log files
    -syslog
    -auth.log
6. Schedule tasks to run at a set date and time
7. Verify completion of scheduled jobs
8. Update software to provide required functionality and security
    -dpkg -i, -l , -r
9. Verify the integrity and availability of resources
10. Verify the integrity and availability of key processes
11. Change kernel runtime parameters, persistent and non-persistent
    -systcl
12. Use scripting to automate system maintenance tasks
13. Manage the startup process and services (In Services Configuration)
14. List and identify SELinux/AppArmor file and process contexts
Manage Software
    -aa-status
15. Identify the component of a Linux distribution that a file belongs to

--------------------------------------------------
User and Group Management 10% 2

1. Create, delete, and modify local user accounts
2. Create, delete, and modify local groups and group memberships
3. Manage system-wide environment profiles
4. Manage template user environment
5. Configure user resource limits
6. Manage user privileges
7. Configure PAM
--------------------------------------------------
Networking 12% 3

1.Configure networking and hostname resolution statically or dynamically
2.Configure network services to start automatically at boot
3.Implement packet filtering
4.Start, stop, and check the status of network services
5.Statically route IP traffic
6.Synchronize time using other network peers
--------------------------------------------------
Service Configuration 20% 5

1. Configure a caching DNS server
2. Maintain a DNS zone
3. Configure email aliases
4. Configure SSH servers and clients
5. Restrict access to the HTTP proxy server
6. Configure an IMAP and IMAPS service
7. Query and modify the behavior of system services at various operating modes
8. Configure an HTTP server
9. Configure HTTP server log files
10. Configure a database server
11. Restrict access to a web page
12. Manage and configure containers
13. Manage and configure Virtual Machines
--------------------------------------------------
Storage Management 13% 3

1. List, create, delete, and modify physical storage partitions
2. Manage and configure LVM storage
3. Create and configure encrypted storage
4. Configure systems to mount file systems at or during boot
5. Configure and manage swap space
6. Create and manage RAID devices
7. Configure systems to mount file systems on demand
8. Create, manage and diagnose advanced file system permissions
9. Setup user and group disk quotas for filesystems
10. Create and configure file systems