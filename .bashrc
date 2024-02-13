alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# delete repo
alias ghrmr='gh repo delete'
# create repo then push it automatically
alias ghmkr='gh repo create && git push;'

# use this command run custom sub-commands on the backup repo
bkup() {
	orig_dir=$(pwd)	
    if cd $(pwd).bak; then
    	"$@"
	cd $orig_dir
    fi
}
