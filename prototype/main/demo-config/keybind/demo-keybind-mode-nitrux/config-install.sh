#!/usr/bin/env bash

set -e


################################################################################
### Head: kde
##

kde_config_install () {

	echo
	echo "##"
	echo "## Config: kde"
	echo "##"
	echo


	kde_config_install_by_dir

	#kde_config_install_by_each_file


	echo

}

kde_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

kde_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config"
	mkdir -p "${HOME}/.config"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/kglobalshortcutsrc ${HOME}/.config/kglobalshortcutsrc"
	install -Dm644 "./asset/overlay/etc/skel/.config/kglobalshortcutsrc" "${HOME}/.config/kglobalshortcutsrc"


}

##
### Tail: kde
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	kde_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
