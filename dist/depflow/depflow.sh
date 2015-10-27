# Q-Deploy main file
if [ "$1" == "init" ]; then
	# runs depflow-init.sh if 'init' passed as args.
	sh ~/depflow/depflow-init.sh;
elif [ "$1" == "config" ]; then
	# runs depflow-config.sh if 'config' passed as args.
	sh ~/depflow/depflow-config.sh;
else
	# set some environment
	if [ "$1" == "" ]; then
		environment="default";
	else
		environment=$1;
	fi
	# git pull in the server
	echo 'Initializing deploy...';
	source .depflowconfig;

	# using passed argument to get access info
	eval access_port=\${$environment[0]#*:};
	eval access_user=\${$environment[1]#*:};
	eval access_host=\${$environment[2]#*:};
	eval access_path=\${$environment[3]#*:};
	eval access_branch=\${$environment[5]#*:};

	ssh -p $access_port $access_user@$access_host "cd 'public_html/$access_path' && git checkout $access_branch && git pull origin $access_branch";
	echo 'Done.';
fi