if status is-interactive
    # Commands to run in interactive sessions can go here

    ## Aliases.
    alias t=tmux
    alias tn="t new -s"
    alias v=nvim
    alias s=ls
    alias lg=lazygit
    alias curlp="curl --proxy 127.0.0.1:9999"

    ## Default editor
    set -gx EDITOR nvim

    ## Proxy
    #set -gx no_proxy "*"
    set -gx http_proxy ""
    set -gx https_proxy ""

    ## Greeting.
    # set -gx fish_greeting "$(figlet "zhsh's  f i s h")"
    set -gx fish_greeting ""

    ## Autojump.
    if test -f /Users/ec1ipse/.autojump/share/autojump/autojump.fish; . /Users/ec1ipse/.autojump/share/autojump/autojump.fish; end

    ## Miniconda env.
    set -gx miniconda /Users/ec1ipse/miniconda3
    set -gx PATH $miniconda/bin $miniconda/condabin $PATH
    set -gx PATH $HOME/.local/bin/ $PATH

    ## Flex and Bison
    set -gx LDFLAGS "-L/usr/local/opt/bison/lib"
    set -gx LDFLAGS "-L/usr/local/opt/flex/lib"
    set -gx CPPFLAGS "-I/usr/local/opt/flex/include"
    # fish_add_path /usr/local/opt/bison/bin
    # fish_add_path /usr/local/opt/flex/bin

    ## Homebrew
    set -gx HOMEBREW_NO_AUTO_UPDATE true
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/ec1ipse/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# Functions about proxy.
function proxy
    set -gx http_proxy http://localhost:9999
    set -gx https_proxy http://localhost:10000
    set -gx ALL_PROXY http://localhost:10000
end

function noproxy
    set -gx http_proxy ""
    set -gx https_proxy ""
    set -gx ALL_PROXY ""
end
