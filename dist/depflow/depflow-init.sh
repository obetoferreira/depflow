# Creates .depflowconfig file
echo 'Creating .depflowconfig file...';
touch .depflowconfig;
echo 'default=(	
	"port:55851" 
	"usr:hquartel" 
	"host:quarteldesign.com" 
	"fldr:<insert-folder-name-here>" 
	"repo:<insert-repo-url-here>" 
	"branch:staging"
)' > .depflowconfig;
echo "Done. Don't forget to fill the .depflowconfig file with your info.";