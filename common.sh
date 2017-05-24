#!/bin/bash
function echo_result {
    if [ $2 -ne 0 ]; then
	    echo -e '\n\e[31m\e[1mFAILURE:\e[21m ' $1 '\e[0m'
	    exit $2
    else
	    echo -e '\n\e[32m\e[1mSUCCESS:\e[21m ' $1 '\e[0m'
    fi;
}
