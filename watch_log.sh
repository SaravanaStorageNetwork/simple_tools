#!/bin/bash
# ./watch_log.sh <command> <sleep time> <logfie>

# For example, ./watch_log.sh ps 1 /tmp/test
# This will log the (ps) output once in every (1) seconds 
# into the file (/tmp/test)

function main() 
{
    if [[ $# -ne  3 ]]; then
            echo $#
            echo "Usage: watch_log.sh <command> <sleep time> <logfie>"
            exit 1
    else
            while true
            do
                    echo "$(date '+TIME:%Hh:%Mm:%ss') $($1)" | tee -a $3
                    sleep $2
            done
    fi
}

main "$@"

