# /bin/bash
whereis wget >/dev/null 2>&1
if [ $? == 0 ]; then
	echo 'downloading timezone file...'
	wget -O /usr/share/zoneinfo/Asia/Shanghai https://github.com/YuanBLQ/Config_ABC/blob/master/Environment/Shanghai?raw=true
	echo 'changing timezone...'
	ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
	echo 'done ;)'
else
	echo "can not find wget command."
fi