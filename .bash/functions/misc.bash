# FUNCTIONS
function gcal() {
    gcalcli calw "now" $1 --monday --width 13
}

function pdfsearch() {
    find . -maxdepth 1 -name '*.pdf' -exec sh -c 'pdftotext "{}" - | grep --with-filename --label="{}" --color '$@'' \;
}

function __fixGit() {
    git remote remove $1
    git remote add $1 ssh://git@$IP:2244/$2
}
