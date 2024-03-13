#!/bin/bash

# Check if the script is executed with appropriate privileges
check_privileges() {
    if [ "$(id -u)" != "0" ]; then
        echo "Error: This script must be run with root privileges." >&2
        exit 1
    fi
}

# Check if the filename is "passwd"
check_filename() {
    if [ "$(basename "$1")" != "passwd" ]; then
        echo "Error: This script should be run on the 'passwd' file." >&2
        exit 1
    fi
}

# Print home directory
print_home_directory() {
    echo "Home directory:"
    grep "^$1:" /etc/passwd | cut -d: -f6
}

# List all usernames from the passwd file
list_usernames() {
    echo "Usernames:"
    cut -d: -f1 /etc/passwd
}

# Count the number of users
count_users() {
    echo "Number of users:"
    grep -c "^.*:.*:.*:.*:.*:.*:.*$" /etc/passwd
}

# Find the home directory of a specific user
find_user_home() {
    read -p "Enter the username: " username
    echo "Home directory of $username:"
    grep "^$username:" /etc/passwd | cut -d: -f6
}

# List users with specific UID range
list_users_by_uid_range() {
    read -p "Enter the UID range (e.g., 1000-1010): " uid_range
    echo "Users with UID in range $uid_range:"
    awk -F: "\$3 >= $(echo $uid_range | cut -d- -f1) && \$3 <= $(echo $uid_range | cut -d- -f2)" /etc/passwd | cut -d: -f1
}

# Find users with standard shells
find_users_with_standard_shells() {
    echo "Users with standard shells:"
    grep -E "/bin/(bash|sh)$" /etc/passwd | cut -d: -f1
}

# Replace "/" character with "\" character in the entire /etc/passwd file
replace_characters() {
    echo "Replacing characters in /etc/passwd..."
    sed 's/\//\\/g' /etc/passwd > /etc/passwd_new
    echo "Replacement completed. Check /etc/passwd_new"
}

# Print private IP
print_private_ip() {
    echo "Private IP:"
    hostname -I | cut -d' ' -f1
}

# Print public IP
print_public_ip() {
    echo "Public IP:"
    curl ifconfig.me
}

# Main function
main() {
    check_privileges || exit 1
    check_filename "/etc/passwd" || exit 1
    print_home_directory
    list_usernames
    count_users
    find_user_home
    list_users_by_uid_range
    find_users_with_standard_shells
    replace_characters
    print_private_ip
    print_public_ip
}

# Run main function
main
