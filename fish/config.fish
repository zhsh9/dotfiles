if status is-interactive
    # Commands to run in interactive sessions can go here

    ## Aliases.
    alias t=tmux
    alias tn="t new -s"
    alias v=nvim
    alias s=ls
    alias curlp="curl --proxy 127.0.0.1:9999"

    ## Default editor
    set -gx EDITOR nvim

    ## Proxy
    # set -gx no_proxy "*"
    set -gx http_proxy ""
    set -gx https_proxy ""

    ## Greeting.
    set -gx fish_greeting ""

    ## Autojump.

    ## Miniconda env.
    set -gx miniconda ""
    set -gx PATH $miniconda/bin $miniconda/condabin $PATH
    set -gx PATH $HOME/.local/bin/ $PATH

    ## Flex and Bison

    ## Homebrew
    set -gx HOMEBREW_NO_AUTO_UPDATE true
end

# Functions about proxy.
## (1)
function proxy
    set -gx http_proxy http://localhost:9999
    set -gx https_proxy http://localhost:10000
    set -gx ALL_PROXY http://localhost:10000
end
## (2)
function noproxy
    set -gx http_proxy ""
    set -gx https_proxy ""
    set -gx ALL_PROXY ""
end
