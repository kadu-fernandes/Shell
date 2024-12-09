# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

export shell_folder="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
export shell_folder_bash="${shell_folder}/bash"

if [[ -f "${shell_folder}/bashrc_local.sh" ]]; then
    source "${shell_folder}/bashrc_local.sh"
fi

if [[ -f "${shell_folder_bash}/dircolors.dat" ]]; then
    test -r "${shell_folder_bash}/dircolors.dat" && eval "$(dircolors -b ${shell_folder_bash}/dircolors.dat)" || eval "$(dircolors -b)"
fi

for f in ${shell_folder_bash}/inc/*; do
    source $f
done

for f in ${shell_folder_bash}/completion/*; do
    source $f
done
