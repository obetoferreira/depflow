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
	source .depflowconfig;
	# git pull in the server
	echo 'Initializing deploy...';
	ssh -p ${environment[port]} ${environment[usr]}@${environment[host]} "cd 'public_html/${environment[fldr]}' && git checkout ${environment[branch]} && git pull origin ${environment[branch]}";
	echo 'Done.';
fi