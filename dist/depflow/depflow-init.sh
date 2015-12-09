# Creates .depflowconfig file
echo 'Creating .depflowconfig file...';
touch .depflowconfig;
echo 'default=(	
	"port:22" 
	"usr:<insert-username-here>" 
	"host:<insert-host-here>" 
	"fldr:<insert-folder-name-here>" 
	"repo:<insert-repo-url-here>" 
	"branch:master"
)' > .depflowconfig;
echo "Done. Don't forget to fill the .depflowconfig file with your info.";