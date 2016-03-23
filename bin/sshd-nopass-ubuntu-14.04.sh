#!/bin/bash
ssh $1 <<'ENDSSH'
sed -i 's/ChallengeResponseAuthentication yes/ChallengeResponseAuthentication no/g' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
sed -i 's/UsePAM yes/UsePam no/g' /etc/ssh/sshd_config
service ssh restart
ENDSSH
