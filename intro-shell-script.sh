#!/bin/bash

menu_option="${1}"

case $menu_option in
	print_var | print)
		echo "${2}"
		;;

	print_all | all)
		echo "${@}"
		;;
	print_params_qnt | qnt)
		echo "${#}"
		;;
	*)
		echo "Choose a valid option"
		;;
esac
