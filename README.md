# uim-cangjie

cangjie input module for uim.


# install

## local user

copy cangjie3.scm and cangjie5.scm in ~/.uim.d/plugin/ directory.
run following command

    $ uim-module-manager --register cangjie3 --path ~/.uim.d/plugin
    $ uim-module-manager --register cangjie5 --path ~/.uim.d/plugin

## system

copy cangjie3.scm and cangjie5.scm in /usr/share/uim/.
run following command

    # uim-module-manager --register cangjie3
    # uim-module-manager --register cangjie5

# usage

## in X

    $ uim-xim --engine=cangjie3

or

    $ uim-xim --engine=cangjie5

## in console

	$ uim-fep -u cangjie3

or

    $ uim-fep -u cangjie5


# uninstall

## local user

run following command

$ uim-module-manager --unregister cangjie3 --path ~/.uim.d/plugin
    $ uim-module-manager --unregister cangjie5 --path ~/.uim.d/plugin

remove copied files.

## system

run following command

    # uim-module-manager --unregister cangjie3
    # uim-module-manager --unregister cangjie5

remove copied files.
