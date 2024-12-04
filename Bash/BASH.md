Man and info commands will help to learn it


```bash
man bash
#to count the numbers
 man bash | wc -

 info bash #hyperlink and you can jump around using spaces
 #more details than man

```

The first two character should be `#!`.
Followed by path to Bash or env: `#!/usr/bin/env bash` `#!/bin/bash`

# Script File Basics

* This is executed via the kernel system calle execve().
* kernal checks for `#!` and passes the path to the original program as a command-line argument.
* So ./myscript.sh, with `#!/bin/bash` would have the kernel execute `/bin/bash ./myscript.sh`
* Perl, python, Expect, awk, and Bash can use #!