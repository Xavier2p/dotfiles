ZSHRC="
███████╗███████╗██╗  ██╗██████╗  ██████╗
╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
███╔╝ ███████╗███████║██████╔╝██║
███╔╝  ╚════██║██╔══██║██╔══██╗██║
███████╗███████║██║  ██║██║  ██║╚██████╗
╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
"

VIM="
██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
██║   ██║██║████╗ ████║██╔══██╗██╔════╝
██║   ██║██║██╔████╔██║██████╔╝██║
╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
function cd {
    builtin cd "$@" && ls
}

function abacus {
    echo "$1" | mono ~/OneDrive\ -\ EPITA/tp_info/S2/csharp/abacus_project/abacus.exe $2
}

function nixupgrade {
    nix-channel --update;
    nix-env -iA nixpkgs.nix nixpkgs.cacert
}

function cdtp {
    cd ~/OneDrive\ -\ EPITA/tp_info/S3/
}

TIMEFMT=$'----------------\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'
