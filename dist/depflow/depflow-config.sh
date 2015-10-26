# Creates .depflowconfig file
echo 'Creating .depflowconfig...';
touch .depflowconfig;
echo 'default=(	
	"port:<insert-port-here>" 
	"usr:<insert-user-here>" 
	"host:<insert-host-here>" 
	"fldr:<insert-folder-name-here>" 
	"repo:<insert-repo-url-here>" 
	"branch:<insert-branch-here>"
)' > .depflowconfig;
echo "Done. Don't forget to edit the server info.";