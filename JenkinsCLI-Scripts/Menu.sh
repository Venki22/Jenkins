echo "1) Display Job list"
echo "2) Triggered the Job"
echo "3) Delete the Job"
echo "4) Display Version number"

echo "Please choose the option"
read option

case $option in
        1) sh DisplayJobs.sh
        ;;
        2) sh TriggeredJob.sh
        ;;
        3) sh DeleteJob.sh
        ;;
        4) sh DisplayVersion.sh
        ;;
        *)
echo "Please select the correct value"
esac
