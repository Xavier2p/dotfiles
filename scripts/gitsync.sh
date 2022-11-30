PROGNAME="sync"

usage() {
    cat << EOF >&2
Usage: $PROGNAME [-h] [-v] [-u] [-m <str>] [-t <str>]

-t <str>: Add a tag, specified just after (default: None)
-m <str>: The message for the commit (default: '[autocommit]: Work in Progress...')
      -u: Add only the uptated files (default: all)
      -v: Enable verbose mode (default: False)
      -h: Display this message
EOF
echo "\nSTATUS OF THIS REPOSITORY"
git status
exit 1
}

message="[autocommit]: Work in Progress..."
tag=""
is_tag=false
all_files=true
verbose=false

while getopts m:t:hvu o; do
    case $o in
        (m) message=$OPTARG;;
        (t) tag=$OPTARG;
            is_tag=true;;
        (u) all_files=false;;
        (v) verbose=true;;
        (h) usage;;
        (*) echo "Invalid Argument '$o', please type '$PROGNAME -h' to display help.";
            exit 1
    esac
done
shift "$((OPTIND - 1))"

if test "$verbose" = true; then
    git status
fi

if test "$all_files" = false; then
    git add --update
else
    git add -A
fi

if test "$verbose" = true; then
    git status
fi

git commit -m "$message"

if test "$is_tag" = true; then
    git tag -a "$tag" -m "$message"
    git push --follow-tags
else
    git push
fi

if test "$verbose" = true; then
    git log --all --decorate --oneline --graph
fi
