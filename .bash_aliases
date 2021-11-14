# Git grep
gg() {
	n=${3:-5} # Optional number of context lines: default 5
	p=${2:-.} # Optional path: default .
	git grep -B "$n" -A "$n" "$1" "$p"
}
