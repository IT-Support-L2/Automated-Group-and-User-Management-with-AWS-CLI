# Automated-Group-and-User-Management-with-AWS-CLI
Automated Group and User Management with AWS CLI and Bash

The create_group function takes the group name as a parameter and creates a new IAM group within AWS IAM using the aws iam create-group command.
    The create_user function takes the user name and group name as parameters and creates a new IAM user within AWS IAM using the aws iam create-user command. It then adds the user to the specified group using the aws iam add-user-to-group command.
    The main function is where you can call the group and user creation functions with the desired parameters.

Before running this script, make sure you have installed and configured the AWS CLI and that you have the necessary permissions to create groups and users within AWS IAM.
