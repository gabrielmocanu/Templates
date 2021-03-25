#!/bin/sh

script_name=$0

# Function for helping with usage
function usage
{
    echo "Usage: $script_name -f arg_1 -s arg_2 -t arg_3"
    echo ""
    echo " -f | --first_arg        : First argument(Mandatory)"
    echo " -s | --second_arg       : Second argument(Mandatory)"
    echo " -t | --third_arg        : Third argument(Optional)"
    echo " -h | --help             : Help argument"
}

# Function for running
function run
{
    parse_arguments "$@"

    echo "First argument - "
    echo "Second argument - "
    echo "Third argument - "
}

# Function to warn an invalid option
function invalid
{
    echo "$script_name: invalid option -- $1"
    echo "Try '$script_name --help' for more information"
}

# Function for parsing arguments
function parse_arguments
{

  # Parsing arguments
  while [ "$1" != "" ]; do
      case "$1" in
          -f | --first_arg )         first_arg="$2";          shift;;
          -s | --second_arg )        second_arg="$2";         shift;;
          -t | --third_arg )         third_arg="$2";          shift;;
          -h | --help )              usage;                   exit;;
          * )                        invalid $1;              exit;; # Invalid option
      esac
      shift
  done

  # Mandatory arguments
  if [[ -z "$first_arg" || -z "$second_arg" ]]; then
      echo "Invalid arguments. Some of them are mandatory."
      usage
      exit;
  fi

  # Set default value for optional arguments
  if [[ -z "$third_arg" ]]; then
      third_arg=0;
  fi
}

run "$@"
