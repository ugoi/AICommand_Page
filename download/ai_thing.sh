# ai_thing() {
#   cmd_output=$(./ai_thing.py "$@")

#   if [ -n "$cmd_output" ]; then
#     echo "Command to be executed: $cmd_output"
#     read -p "Are you sure you want to execute this command? (y/N) " confirm

#     case $confirm in
#       [yY][eE][sS]|[yY])
#         eval "$cmd_output"
#         echo "Command executed."
#         ;;
#       *)
#         echo "Command not executed."
#         ;;
#     esac
#   else
#     echo "No command to execute."
#   fi
# }

# ai_thing() {
#   output=$(./ai_thing.py "$@")
#   IFS=$'\n' read -r -a split_output <<< "$output"
#   confirmation_message="${split_output[0]}"
#   cmd_output="${split_output[1]}"

#   if [ -n "$cmd_output" ]; then
#     read -p "$confirmation_message " confirm

#     case $confirm in
#       [yY][eE][sS]|[yY])
#         eval "$cmd_output"
#         echo "Command executed."
#         ;;
#       *)
#         echo "Command not executed."
#         ;;
#     esac
#   else
#     echo "No command to execute."
#   fi
# }

# # LOL
# ai_thing() {
#   output=$(./ai_thing.py "$@")
#   if [[ $SHELL == *"zsh"* ]]; then
#     IFS=$'\n' read -A split_output <<< "${(ps:\n:)output}"
#   else
#     IFS=$'\n' read -r -a split_output <<< "$output"
#   fi
#   confirmation_message="${split_output[0]}"
#   cmd_output="${split_output[1]}"

#   if [ -n "$cmd_output" ]; then
#     if [[ $SHELL == *"zsh"* ]]; then
#       echo -n "$confirmation_message "
#       read confirm
#     else
#       read -p "$confirmation_message " confirm
#     fi

#     case $confirm in
#       [yY][eE][sS]|[yY])
#         eval "$cmd_output"
#         echo "Command executed."
#         ;;
#       *)
#         echo "Command not executed."
#         ;;
#     esac
#   else
#     echo "No command to execute."
#   fi
# }

# ai_thing() {
#   output=$(./ai_thing.py "$@")
  
#   # Use a different method to split the output
#   confirmation_message=$(echo "$output" | head -n 1)
#   cmd_output=$(echo "$output" | tail -n 1)

#   if [ -n "$cmd_output" ]; then
#     if [[ $SHELL == *"zsh"* ]]; then
#       echo -n "$confirmation_message "
#       read confirm
#     else
#       read -p "$confirmation_message " confirm
#     fi

#     case $confirm in
#       [yY][eE][sS]|[yY])
#         eval "$cmd_output"
#         echo "Command executed."
#         ;;
#       *)
#         echo "Command not executed."
#         ;;
#     esac
#   else
#     echo "No command to execute."
#   fi
# }

ai_thing() {
  output=$(./ai_thing.py "$@")

  # Use a different method to split the output
  confirmation_message=$(echo "$output" | head -n 1)
  cmd_output=$(echo "$output" | tail -n 1)

  if [ "$cmd_output" = "USAGE_MESSAGE" ]; then
    echo "$confirmation_message"
    return
  fi

  if [ -n "$cmd_output" ]; then
    if [[ $SHELL == *"zsh"* ]]; then
      echo -n "$confirmation_message "
      read confirm
    else
      read -p "$confirmation_message " confirm
    fi

    case $confirm in
      [yY][eE][sS]|[yY])
        eval "$cmd_output"
        echo "Command executed."
        ;;
      *)
        echo "Command not executed."
        ;;
    esac
  else
    echo "No command to execute."
  fi
}
