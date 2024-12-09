export PATH="${PATH}:/bin"
export PATH="${PATH}:/sbin"
export PATH="${PATH}:/snap/bin"
export PATH="${PATH}:/usr/bin"
export PATH="${PATH}:/usr/games"
export PATH="${PATH}:/usr/lib/wsl/lib"
export PATH="${PATH}:/usr/local/bin"
export PATH="${PATH}:/usr/local/games"
export PATH="${PATH}:/usr/local/sbin"
export PATH="${PATH}:/usr/sbin"

if [ -d "/usr/local/go/bin/" ]; then
    export PATH="${PATH}:/usr/local/go/bin"
fi

if [ -d "$HOME/.symfony5/bin" ]; then
    export PATH="$HOME/.symfony5/bin:$PATH"
fi

if [ -d "${shell_folder}/git/scripts" ]; then
    export PATH="${shell_folder}/git/scripts:$PATH"
fi

if [ -d "${shell_folder}/.my_path" ]; then
    export PATH="${shell_folder}/.my_path:$PATH"
fi
