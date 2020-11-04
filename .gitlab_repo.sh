
alias repourl="git config --get remote.origin.url | sed 's/:/\//' | sed 's/git@/https:\/\//' | sed 's/\.git//' | sed 's/https\//https:/'"

repo() {
	open -a "Google Chrome" `repourl`
}

repoci() {
	open -a "Google Chrome" `repourl`/pipelines
}

repomrs() {
	open -a "Google Chrome" `repourl`/merge_requests
}

repowiki() {
	open -a "Google Chrome" `repourl`/-/wikis/home
}

repovars() {
	open -a "Google Chrome" `repourl`/-/settings/ci_cd
}

repohooks() {
	open -a "Google Chrome" `repourl`/hooks
}

repocommits() {
	open -a "Google Chrome" `repourl`/-/commits/master
}

mymrs() {
	open -a "Google Chrome" `repourl`/merge_requests\?assignee_username=$USER
}
