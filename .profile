export LC_ALL="zh_CN.UTF-8"
export local=127.0.0.1
export CPATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
alias gD='git difftool'
alias gDc='git difftool --cached'
alias utf8='iconv -f GB18030 -t UTF-8'
alias py3='source ~/py3/bin/activate'
alias py2='deactivate'
alias protoc++='protoc --cpp_out=.'
alias cr2nl="perl -pi -e 's/\r/\n/g'"
alias ggcr='git push origin HEAD:refs/for/$(git_current_branch)'
alias gcld='git clone --recursive --depth=1'
alias pi='pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple'
alias piu='pi --user'
alias attach='ps aux | grep -v grep | grep "tmux -CC attach" || tmux -CC attach'

decode () {
    echo $1 | base64 -d
}

mkfile () {
        if [ -f "$1" ]; then
            echo "'$1' already exists!"
            return 1
        fi
        ext=${1##*.}
        case $ext in
            py)
                script=python
                ;;
            sh)
                script=bash
                ;;
            *)
                echo "unknown type: $ext"
                return 1
                ;;
        esac
        echo "#!/usr/bin/env $script\n# -*- coding: utf-8 -*-" > "$1"
        chmod +x "$1"
        vim "$1"
}

if [[ $(uname) =~ "CYGWIN" ]]; then
    alias c='clip'
    alias p='cat /dev/clipboard'
    export home=/cygdrive/c/Users/tzongw
    open () {
            explorer $(cygpath -w "$1")
    }
elif [[ $(uname) =~ "Linux" ]]; then
    export PATH="$HOME/bin:$HOME/.local/bin:/home/linuxbrew/.linuxbrew/bin:$PATH"
elif [[ $(uname) =~ "Darwin" ]]; then
    alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
    alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
    alias vim='/Applications/MacVim.app/Contents/bin/vim'
    alias mvim='/Applications/MacVim.app/Contents/bin/mvim'
    alias tvim='mvim --remote-tab-silent'
    alias xcode="open *.xcworkspace || open *.xcodeproj"
    alias gds='git difftool -t sourcetree'
    alias gdsc='git difftool -t sourcetree --cached'
    alias gms='git mergetool -t sourcetree'
    alias sed=gsed
    alias -s txt=tvim
    alias -s h=tvim
    alias -s c=tvim
    alias -s cc=tvim
    alias -s cpp=tvim
    alias -s m=tvim
    alias -s mm=tvim
    export xdir=~/Library/Developer/Xcode/DerivedData
    export DEVELOPER_DIR=/Applications/XCode.app/Contents/Developer
    export NODE_PATH="/usr/local/lib/node_modules"
    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
    dir () {
            dst="$1"
            if [ -f "$1" ]; then
                dst=$(dirname "$1")
            fi
            open "$dst"
    }
fi

