#!/bin/bash

cp orig.txt out.txt

ex_cmds() {
    cat <<-"EOF"
    %s/\(\.com\).*/\1/
    %p
    x
EOF
}

ex_cmds | ex out.txt
