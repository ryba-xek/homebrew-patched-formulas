My set of patched formulas for homebrew
============

Install with `brew install
https://raw.github.com/ryba-xek/homebrew-patched-formulas/master/phpsh.rb`

Cgminer
----------
`cgminer.rb`

found somewhere on the internet

Midnight commander
---------------------
`midnight-commander.rb`

* Stores config in `~/.mc` instead of `~/.local`.

phpsh
--------
`phpsh.rb`

* Readline .inputrc fixed.
* Doesn't install python from homebrew.

Currently requires smth like:
    
    export PYTHONPATH='/usr/local/lib/python2.7/site-packages'
