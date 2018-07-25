###############################

# Source all the variables that were written to the secrets file
echo "Sourcing variables from platform.secrets.sh file..."
source platform.secrets.sh

# Export the passwords in base64 to be passed in as environment variables for LDAP container
export INITIAL_ADMIN_PASSWORD=$(echo -n $INITIAL_ADMIN_PASSWORD_PLAIN | base64)
export JENKINS_PWD=$(echo -n $PASSWORD_JENKINS | base64)
