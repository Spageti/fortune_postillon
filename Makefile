####################################
# MicroBrain
# $Id:  $
# @project mix/fortune/postillon
# @since ARCH 4.x
####################################

ISSET=`which strfile 2> /dev/null`
VER=`fortune -v | cut -d' ' -f3`

all: help

check:
ifndef ISSET
	@echo ""
	@echo "#----------------------------------------------#"
	@echo "# Fortune is missing his little helper, check: #"
	@echo "# `pacman -Qo strfile`"
	@echo "#----------------------------------------------#"
else
	@echo "#--- looks good: you have v.$(VER)--------------#"
endif



help:
	@echo ""
	@echo "#----------------------------------------------#"
	@echo "# Fortune-Maker:                               #"
	@echo "#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#"
	@echo "# Supported make targets:                      #"
	@echo "#                                              #"
	@echo "# new <file> - aktualisiert das                #"
	@echo "#----------------------------------------------#"

new:
	@(strfile $1)
