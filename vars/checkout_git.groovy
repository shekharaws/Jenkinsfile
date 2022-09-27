def checkout_git(String repo) {
    
    echo "This is for checking out git code."
   git credentialsId: 'githubaccess', url: "git@github.com:shekharaws/${repo}.git" , branch: "${branch}"   

}

return this