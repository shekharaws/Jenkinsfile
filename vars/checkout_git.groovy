def checkout_git(String repo, String branch) {
    
    echo "This is for checking out git code."
   git credentialsId: 'shekhar', url: "git@github.com:shekharaws/${repo}.git" , branch: "${branch}"   

}

return this