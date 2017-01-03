function lazygit() {
    git add .
    git commit --allow-empty -a -m "$1"
    git push
}
