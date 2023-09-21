#!/bin/bash

# Hardcoded list of branches
BRANCHES=("release-0.1" "release-0.2")  # Add more as needed

# Function to checkout to a given branch
checkout_branch() {
  git checkout "$1" && \
  git submodule deinit -f --all && \
  git clean -ffdx && \
  git submodule update --init --recursive
}

# Function to display help
show_help() {
    echo "Usage: ./configure.sh [OPTION] [BRANCH]"
    echo ""
    echo "Options:"
    echo "  (no option)        installs the default version (latest)"
    echo "  -l, --list         lists all the available release versions"
    echo "  -h, --help         prints help"
    echo ""
    echo "You can also directly specify a branch to checkout, for example:"
    echo "./configure.sh release-0.1"
}

# Main script logic
case $1 in
    -l|--list)
        echo "Available release versions:"
        for branch in "${BRANCHES[@]}"; do
            echo "- $branch"
        done
        ;;
    -h|--help)
        show_help
        ;;
    "")  # No arguments
        # Assuming the latest branch is the last one in the list
        LATEST_BRANCH="${BRANCHES[-1]}"
        echo "Checking out the default (latest) version: $LATEST_BRANCH"
        checkout_branch "$LATEST_BRANCH"
        ;;
    *)
        if [[ " ${BRANCHES[@]} " =~ " $1 " ]]; then
            echo "Checking out version: $1"
            checkout_branch "$1"
        else
            echo "Error: Unknown version or option: $1"
            show_help
        fi
        ;;
esac

