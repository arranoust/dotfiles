# default prompt
function fish_prompt
  echo ''

  # Username
  echo -n " "╭ (whoami) "|"

  # Command Section
  set_color cyan; echo " "(pwd) 
  set_color green; echo ' ╰─➤ '
end
