PHPUnit vagrant mode
===================

Hi there. 
This mode allows you to run PHPUnit tests directly on your virtual machine (via Vagrant)

Installation
--------------
I hope soon you will be able to install it through `package-install`
Right now you can clone the repo and `require` the file

Configuration
----------------
Set these variables in your `init.el` file
```lisp
(setq puvm-path-to-test-directory-in-vagrant "path to your tests folder in the virtual machine")

(setq puvm-path-to-phpunit-executable "path to phpunit executable in your virtual machine")

(setq puvm-path-to-vagrant-directory "path to vagrant directory on your local machine (where your Vagrantfile is)")
```

Usage
-------
Currently you can only run all tests.

`C-x pa` - the command to run all the tests.
`C-x pc` - the command to run single test. 
