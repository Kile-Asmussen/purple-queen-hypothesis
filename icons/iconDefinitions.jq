# --null-input --raw-input
[inputs | { (. | split(".") | .[0]) : { iconPath: "./icons/" + . } }] | add