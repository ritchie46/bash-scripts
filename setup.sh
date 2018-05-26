#!/bin/bash

pypirc () {
    echo "setting up .pypirc in $HOME, passwords need to be inserted manually"

    s="index-servers:\n\tpypi\n\ttestpypi\n\n[pypi]\nusername : ritchie46\npassword : <pw>\n\n[testpypi]\nrepository : https://test.pypi.org/legacy/\nusername : ritchie46\npassword : <pw>"
    printf "$s" > "$HOME/.pypirc"
}
pypirc 

