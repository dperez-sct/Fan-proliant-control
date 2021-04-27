#################################################
#################################################
#####CREDITS:####################################
##  https://www.reddit.com/r/homelab/comments/hix44v/silence_of_the_fans_pt_2_hp_ilo_4_273_now_with/gc41oh7?utm_source=share&utm_medium=web2x&context=3
#################################################
#################################################
#################################################
#################################################
#!/bin/sh
while true; do
  for PID in 50 31 40 45 46 49
  do
    sshpass -e ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -oKexAlgorithms=+diffie-hellman-group1-sha1 $USER@$IP "fan pid $PID lo $LO"
  done
  sleep 300
done