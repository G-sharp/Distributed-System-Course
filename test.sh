#!/usr/bin/env bash
export GOPATH=$PWD
cd ./src/raft
if [ $# -gt 0 ]
then
    if [ "$1" == '/?' -o "$1" == '-h' -o  "$1" == '--help' ]
    then
        echo -e 'Type ./run.sh 1 for Assignment_1 test.\nType /run.sh 2 for Assignment_2 test, you will get two pass if everything have done alright.\n
        Default no parameter for both two tests'
    elif [ "$1" == '1' ]
    then
            go test -run Election
    elif [ "$1" == '2' ]
    then
            go test -run FailNoAgree  
    fi
else
    go test -run Electiongit
    go test -run FailNoAgree        
fi
