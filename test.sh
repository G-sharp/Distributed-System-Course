#!/usr/bin/env bash
export GOPATH=$PWD
cd ./src/raft
if [ $# > 0 ]
then
    if [ $0 == '/?' -o $0 == '-h' -o  $0 == '--help' ]
        echo -e 'Type ./run.sh 1 for Assignment_1 test.\n.Type /run.sh 2 for Assignment_2 test, you will get two pass if everything have done alright.\n
        Default no parameter for both two tests'
    elif [ $0 == '1' ]
    then
            go test -run Election
    elif [ $0 == '2' ]
    then
            go test -run FailNoAgree   
    fi
else
    go test -run Election
    go test -run FailNoAgree        
fi
