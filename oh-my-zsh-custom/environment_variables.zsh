export EDITOR='vi'
export PATH="$HOME/.local/bin/:$HOME/dotfiles/bin:$HOME/bin:$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
export HOMEBREW_PREFIX=/usr/local
export HOMEBREW_CELLAR=/usr/local/Cellar
export GITHUB_PAT=$(op read op://development/GitHubPAT/credential)
export CONTEXT7_API_KEY=$(op read op://development/Context7ApiKey/credential)
