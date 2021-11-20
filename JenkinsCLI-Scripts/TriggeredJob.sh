echo "Please enter the job which you want to triggered"
read jobname

echo "Trigger the job $jobname"


#reading details from properties files and -f2 is field 2 value
userName=`grep JENKINS_USERNAME Jenkins.properties | cut -d "=" -f2`
token=`grep JENKINS_TOKEN Jenkins.properties | cut -d "=" -f2`
url=`grep JENKINS_URL Jenkins.properties | cut -d "=" -f2`

java -jar jenkins-cli.jar -auth $userName:$token -s $url  -webSocket build $jobname

echo "$jobname is  triggered successs"
