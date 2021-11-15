# Git grep
gg() {	
	p=${2:-.} # Optional path: default .
	n=${3:-5} # Optional number of context lines: default 5
	git grep -"$n" --break --heading "$1" -- "$p"
}

# Hoogle search
hs() {
	hoogle $1 | less -Sc
}
