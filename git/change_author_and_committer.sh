git filter-branch -f --commit-filter 'if [ "$GIT_AUTHOR_EMAIL" = "<prev email>" ]; then export GIT_AUTHOR_NAME="Valeriy Ogiy"; export GIT_AUTHOR_EMAIL=<new email>; export GIT_COMMITTER_NAME="Valeriy Ogiy"; export GIT_COMMITTER_EMAIL=<new email>; fi; git commit-tree "$@"'