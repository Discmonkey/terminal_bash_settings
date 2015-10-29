#Git branch in prompt.
#   -------------------------------------------------------------------
parse_git_branch() {
          git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }
#git autocomplete
source ~/gitfiles/git-completion.bash
#change color for directories
export CLICOLOR=1
export LSCOLORS=bxBxhxDxhxhxhxhxhxcxcx

  #   Set the bash command prompt
  #   -------------------------------------------------------------------
  export PS1="\[\033[0;31m\]λ\[\033[0m\] \[\033[1;37m\]\h:\[\033[0m\] \W\[\033[0;31m\]\$(parse_git_branch)\[\033[0m\] $ "
  #export PATH=/Applications/MAMP/bin/php/php5.6.10/bin/:$PATH

  #   Set some useful command alias
  #   -------------------------------------------------------------------
  alias home='cd ~/Vagrant/lamp34/public_html' 
  alias cp='cp -iv'                                       # Preferred 'cp' implementation
  alias mv='mv -iv'                                       # Preferred 'mv' implementation
  #alias mkdir='mkdir -pv'                                 # Preferred 'mkdir' implementation
  alias ll='ls -FGlAhp'                                   # Preferred 'ls' implementation
  alias reload='source ~/.bash_profile'                   # refresh shell
  alias grep='grep -i -r --color=auto'                    # grep with color
  alias mysql='/Applications/MAMP/Library/bin/mysql -uroot -p'        # open mysql as root
  #alias localhost='cd /Applications/MAMP/htdocs/MySandbox'            # open MySandbox folder
  alias finder='open -a Finder ./'                        # Opens current directory in MacOS Finder
  alias ~="cd ~"                                          # Go Home
  alias editHosts='sudo vim /etc/hosts'                   # Edit /etc/hosts file
  alias httperr='tail -f /var/log/apache2/error_log'      # Tails HTTP error logs

  #   finderShowHidden:   Show hidden files in Finder
  #   finderHideHidden:   Hide hidden files in Finder
  #   -------------------------------------------------------------------
  alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
  alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'
