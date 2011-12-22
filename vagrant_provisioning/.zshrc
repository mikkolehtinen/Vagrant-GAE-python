# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/google_appengine:/var/lib/gems/1.8/bin:/opt/ruby/bin/

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gae vim)

source $ZSH/oh-my-zsh.sh

$GAE_SDK=/opt/google_appengine

GEM_PATH='/var/lib/gems/1.8/'

export PYTHONPATH=$GAE_SDK:$GAE_SDK/lib/fancy_urllib:$GAE_SDK/lib/yaml/lib:$GAE_SDK/lib/webob:$GAE_SDK/lib/antlr3:$GAE_SDK/lib/simplejson

alias ncdev="/vagrant/ncdev.sh"

