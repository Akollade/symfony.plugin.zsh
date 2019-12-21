_symfony_get_command_list () {
   bin/console --no-ansi | sed "1,/Available commands/d" | awk '/^  ?[^ ]+ / { print $1 }'
}

_symfony () {
   compadd `_symfony_get_command_list`
}

compdef _symfony 'bin/console'
compdef _symfony sf

#Alias
alias sf='bin/console'
alias sfcl='sf cache:clear'
