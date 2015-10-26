# Git clone on the server
echo 'Cloning repository into server...';
source .depflowconfig;
ssh -p ${default[port]} ${default[usr]}@${default[host]} "cd public_html && git clone ${default[repo]}";
echo 'Done.';
