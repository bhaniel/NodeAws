echo ""
echo "Runing Bash Script"
echo ""
echo ""
echo "switching to qa region"
export AWS_DEFAULT_REGION=us-east-1
echo "logging in to code artifact"
aws codeartifact login --tool npm --repository selinarnd --domain selinarnd --domain-owner 020457103146

echo "runing tail -f /dev/null"
echo "Press [CTRL+C] to stop.."
tail -f /dev/null
