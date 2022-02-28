
# LFCS Practice Exam Details

## Overview

1. This repo is meant to serve as a practice exam for  the LFCS to be used in conjunction with other test prep material
2. It is ***not*** a comprehensive prep exam, but should help you understand the format of the exam and exam content as accurtely as possible
3. The LFCS exam grades you on the results of your efforts not how you go about acheiving them so there is often more than one way to answer any question
4. While I did my best to provide accurate explinations and answers, please, review and understand the commands used as I did not score perfectly on the exam so some content may not be complete
5. Do ***not*** just memorize the commands and flags used in the practice exam as you will need to understand the content and be able to use other flags and commands during your exam
6. The format of the questions follow the exam.  Often questions will contain background information that is not super relivent and be multi-part, while others are very small and direct

## General Exam Tips

1. Be the root user.  While this may not be a best practice in Linux it is very helpful for the exam.  Just be careful!!
2. Read James Eiler's 'Exam-Template-Tips.pdf' which can be found in Teams
3. Understand and use copy/past with ctrl + ins (or clicking) and shift + ins 
4. Do not get hung up on a single question.  If a quick glance at man pages or --help doesn't jog your memory flag the qeustion, move on, and come back at the end
5. Do Networking change questions last.  Most exams seem to have a question to change network configuration on a remote system.  Do this last in case you mess up and break the connection
6. Check your work as you go.  Had to write an output to a file?  Cat the file to make sure it worked 
7. Understand the power of grep.  Use it to quickly search man pages, and --help results  

## Using the repo

The repo contains practice questions with step-by-step answers with explinations in addition to bash scripts to prepare  your VM to simulate a test environment.  

This guide was written for CentOS Steam 8.  You will need to setup your own VMs with CentOS Stream 8 and copy and run the bash scripts to prepare your VM for each question.

Please note some of the networking behavior of your VM may be different or unchangable if you are using a VM running in the cloud, but understanding the concepts should suffice. 

The 'practice-exam' folder contains 26 questions which you should aim to comfortably answer in under (2) hours

The 'additional-content' folder contains additional, less refined questions as well as a running list of commands / topics that I found helpful to review

The setup.sh shell script can be copied to your VM and run from your home directory as root to set up the server for the practice exam

## Updating the repo

This repo is meant to serve as a living and evolving knowledge bank for the ACE program, but it is also meant to be as coincise as possible

I encourage anyone who uses the repo and takes the LFCS to go back and review the content in the practice exam and offer enhancements whereever possible

However, I want to avoid adding content that was not specifically on the LFCS exam as the breath of possible Linux questions can be overwhelming while preparing for the LFCS

## Questions about the repo

If you have any questions about exam content, repo content, or if you have any issues using the practice exam please reach out ot me on Slack, Teams, or by email

Willis Hertweck, willis.hertweck@cdw.com  

Good luck and enjoy learning and practicing Linux!