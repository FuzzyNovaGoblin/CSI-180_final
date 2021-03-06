# fcron
# Autogenerated from man page /usr/share/man/man8/fcron.8.gz
complete -c fcron -l foreground --description 'you don\'t need to start it with \'&\'.'
complete -c fcron -s f --description '.'
complete -c fcron -s b --description '.'
complete -c fcron -l background --description 'Force running in background, even if fcron has been compiled to run in foregr…'
complete -c fcron -s s --description '.'
complete -c fcron -l savetime --description 'Save fcrontabs on disk every  time sec (default is 1800).'
complete -c fcron -s m --description '.'
complete -c fcron -l maxserial --description 'Set to num the maximum number of serial jobs which can run simultaneously.'
complete -c fcron -s q --description '.'
complete -c fcron -l queuelen --description 'Set to n the number of jobs the serial queue and the lavg queue can contain.'
complete -c fcron -s c --description '.'
complete -c fcron -l configfile --description 'Make fcron use config file file instead of default config file /usr/local/etc…'
complete -c fcron -s o --description '.'
complete -c fcron -l once --description 'Execute all jobs that need to be run at the time fcron was started, wait for …'
complete -c fcron -s y --description '.'
complete -c fcron -l nosyslog --description 'Don\'t log to syslog at all.  May be useful when running in foreground.'
complete -c fcron -s p --description '.'
complete -c fcron -l logfilepath --description 'If set, log to the file given as argument.'
complete -c fcron -s l --description '.'
complete -c fcron -l firstsleep --description 'Sets the initial delay (in seconds) before any job is executed, default to 20…'
complete -c fcron -s n --description '.'
complete -c fcron -l newspooldir --description 'Create dir as a new spool directory for fcron.'
complete -c fcron -s h --description '.'
complete -c fcron -l help --description 'Display a brief description of the options.'
complete -c fcron -s V --description '.'
complete -c fcron -l version --description 'Display an informational message about fcron, including its version and the l…'
complete -c fcron -s d --description '.'
complete -c fcron -l debug --description 'Run in debug mode (more details on stderr -- if option.'

