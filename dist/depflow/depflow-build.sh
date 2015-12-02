# Git clone on the server
echo 'Cloning repository...';
source .depflowconfig;

access_port=${default[0]#*:};
access_user=${default[1]#*:};
access_host=${default[2]#*:};
access_fldr=${default[3]#*:};
access_repo=${default[4]#*:};

ssh -p $access_port $access_user@$access_host "cd public_html && mkdir -p $access_fldr && cd $access_fldr && git clone $access_repo .";
echo 'Done.';