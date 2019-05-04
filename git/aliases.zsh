#!/bin/sh
if command -v hub >/dev/null 2>&1; then
	alias git='hub'
fi

alias gcm="git commit -m"
alias gcam='git commit -a -m'
alias gca="git commit --amend --no-edit"
alias gcae="git commit --amend"
alias gcaa="git add --all && git commit --amend --no-edit"
alias gcaae="git add --all && git commit --amend"
alias gap="git add -p"
alias gnope="git checkout ."
alias gwait="git reset HEAD"
alias gundo="git reset --soft HEAD^"
alias greset="git clean -f && git reset --hard HEAD" # Removes all changes, even untracked files
alias gl="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glb='git log --oneline --decorate --graph --all'
alias gst='git status -s'
alias gpl="git pull --rebase"
alias gps="git push"
alias gpsf="git push --force-with-lease"
alias grb="git rebase"
alias grbi='git rebase -i'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
# Remove local branches that have already been merged in the remote repository
alias gcmb="git branch --merged | grep -Ev '(^\*|master)' | xargs git branch -d"
# Sets the upstream branch to be the same branch as the locally named branch
alias gset='git branch --set-upstream-to=origin/`git symbolic-ref --short HEAD`'
# Do an interactive rebase back N number of commits (e.g. grn 3)
grn() { git rebase -i HEAD~"$1"; }
# Do an interactive rebase to a supplied commit hash (e.g. grbc 80e1625)
grbic() { git rebase -i "$1"; }

gi() {
	curl -s "https://www.gitignore.io/api/$*"
}
