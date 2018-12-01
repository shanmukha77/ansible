#!/bin/bash
ansible webserver -m copy -a 'src=/usr/local/bin/runme.sh dest=/usr/bin/runme.sh owner=ec2-user group=ec2-user mode=0755' -b -u ec2-user --key-file /home/ansible/ssh.pem
ansible webserver  -m shell -a 'sh runme.sh' -b -u ec2-user --key-file /home/ansible/ssh.pem
