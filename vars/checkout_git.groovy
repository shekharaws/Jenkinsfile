def checkout_git() {
    
    echo "This is for checking out git code."
   git credentialsId: 'githubaccess', url: 'git@github.com:shekharaws/java-hello-world-with-maven.git'    

}

return this