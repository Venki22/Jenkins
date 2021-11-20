echo "Please enter the job which you want to delete"
read jobname

echo "Deleting the job $jobname"


#reading details from properties files and -f2 is field 2 value
userName=`grep JENKINS_USERNAME Jenkins.properties | cut -d "=" -f2`
token=`grep JENKINS_TOKEN Jenkins.properties | cut -d "=" -f2`
url=`grep JENKINS_URL Jenkins.properties | cut -d "=" -f2`

java -jar jenkins-cli.jar -auth $userName:$token -s $url  -webSocket delete-job $jobname

echo "$jobname has been deleted success-fully"

echo "Dispaly the list of jobs"
echo "******Job list**********"
java -jar jenkins-cli.jar -auth $userName:$token -s $url  -webSocket list-jobs
