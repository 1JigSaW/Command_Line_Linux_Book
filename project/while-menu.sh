DELAY=3 # Время отображения результатов на экране (в секундах)
while [[ $REPLY != 0 ]]; do
clear
cat <<- _EOF_
Please Select:
1.
2.
3.
0.
Display System Information
Display Disk Space
Display Home Space Utilization
Quit
_EOF_
read -p "Enter selection [0-3] > "
if [[ $REPLY =~ ^[0-3]$ ]]; then
if [[ $REPLY == 1 ]]; then
echo "Hostname: $HOSTNAME"
uptime
sleep $DELAY
fi
if [[ $REPLY == 2 ]]; then
df -h
sleep $DELAY
fi
if [[ $REPLY == 3 ]]; then
if [[ $(id -u) -eq 0 ]]; then
echo "Home Space Utilization (All Users)"
du -sh /home/*
else
echo "Home Space Utilization ($USER)"
du -sh $HOME
fi
sleep $DELAY
fi
else
echo "Invalid entry."
sleep $DELAY
fi
done
echo "Program terminated."