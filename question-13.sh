# Managing users is an important task of a Linux system administrator
# 
# Perform the following actions (read section as some steps can be combined):
# 	a. Create the following users:
# 		i. linuxbro
# 		ii. gharrison
# 		iii. jlennon
# 		iv. pmccartney
# 		v. rstarr
# 	b. Make linuxbro’s primary group ‘administrators’
# 	c. Make linuxbro’s default shell zsh 
# 	d. Make a comment for the account linuxbro stating the user’s full name of “Linux Broman”
# 	e. Make the accounts for jlennon and rstarr expire two years from today’s date
# 	f. Add accounts jlennon and rstarr to the contractors group
# 	g. Add accounts gharrison and pmccartney to the employees group
# 	h. Ensure each user has a folder in their home directory called ‘welcome-info’
# 	i. Set each account’s password to ‘Pa$$w0rd’ and make them change it on next login
#
#-----------------------------------------------------------------------------------------------

yum instll zsh 

# this makes the zsh shell avalible to users

useradd -c "Linux Broman" -s /bin/zsh -g administrators linuxbro 

# -c sets a comment -s sets the default shell -g sets default primary group **-d will set default home directory 

useradd -G contractors jlennon

# -G is just 'group' which means secondary group aka not primary 

useradd -G contractors rstarr 

useradd -G employees gharrison 

useradd -G employees pmccartney 

mkdir /etc/skel/welcome-info 

# anything in the /etc/skel dir will be avalible in the home dirs of new users

passwd linuxbro

>Pa$$w0rd 

>Pa$$w0rd

# system will prompt you for the password twice.  Use paste 

passwd jlennon

>Pa$$w0rd

>Pa$$w0rd 

# system will prompt you for the password twice.  Use paste 

passwd rstarr

>Pa$$w0rd

>Pa$$w0rd

# system will prompt you for the password twice.  Use paste 

passwd gharrison 

>Pa$$w0rd 

>Pa$$w0ord 

# system will prompt you for the password twice.  Use paste 

passwd pmccartney 

>Pa$$w0rd

>Pa$$w0rd 

# system will prompt you for the password twice.  Use paste 

passwd --expire linuxbro

# this will expire the password so user will have to reset it at first login

passwd --expire jlennon

passwd --expire rstarr

passwd --expire gharrison

passwd --expire pmccartney 

vi /etc/login.defs 

# this is where defaults for passwords are set including max_days 

PASS_MAX_DAYS  730

ZZ