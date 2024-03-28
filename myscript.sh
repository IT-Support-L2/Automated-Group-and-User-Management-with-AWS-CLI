#!/bin/bash

# Function to create an IAM group
function create_group() {
    local group_name="$1"

    # Create the IAM group
    aws iam create-group --group-name "$group_name"
}

# Function to create an IAM user
function create_user() {
    local user_name="$1"
    local group_name="$2"

    # Create the IAM user
    aws iam create-user --user-name "$user_name"

    # Add the user to the specified group
    aws iam add-user-to-group --user-name "$user_name" --group-name "$group_name"
}

# Main function
function main() {
    # Create an IAM group
    create_group "my-group"

    # Create an IAM user and add to the group
    create_user "my-user" "my-group"
}

# Execute main function
main
