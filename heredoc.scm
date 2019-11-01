#!/usr/bin/csi -s

(define three 3)
(display #<#EOF
This is a simple string with an embedded `##' character
and substituted expressions: (+ three 99) ==> #(+ three 99)
(three is "#{three}")
EOF
)
