def create_tag(String tag) {

    ssh """
    git log -1
    git tag -a ${tag} -m"this tag has been created from jenkins"
    git push origin ${tag}
    rm rf *
       """
}  10
