echo ""
echo "Runing Bash Script"
echo ""
echo ""
echo "switching to qa region"
export AWS_DEFAULT_REGION=us-east-1
echo "logging in to code artifact"
aws codeartifact login --tool npm --repository ${REPO} --domain ${DOMAIN} --domain-owner ${DOMAIN_OWNER}

echo "runing tail -f /dev/null"
echo "Press [CTRL+C] to stop.."
tail -f /dev/null
