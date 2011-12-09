###############################################################################
# $Id: Makefile 336270 2011-12-08 22:14:04Z mkandel $
# $HeadURL: svn+ssh://svn.corp.yahoo.com/yahoo/mail/capdel/sandbox/mkandel/perl_checklists/trunk/Makefile $
#
# Copyright (c) 2011 Yahoo!, Inc.
#
#  makefile for perl_Checklists
###############################################################################
PRODUCT_NAME = perl_Checklists
#TWIKI_SITE = IEAutomation/perl_Checklists

MODULE = ./src/lib/Checklists.pm
ifndef BUILDTYPE
BUILDTYPE = link
endif

ifndef BRANCH
BRANCH = current
endif

ROOT       = /home/y
YIC        = ${ROOT}/bin/yinst_create
YIC_OPTS   = --clean -t ${BUILDTYPE}
PERL       = ${ROOT}/bin/perl
POD2TEXT   = ${ROOT}/bin/pod2text
POD2MAN	   = ${ROOT}/bin/pod2man
PUSHTWIKI  = ${ROOT}/bin/push_twiki_doc
DISTINSTALL = ${ROOT}/bin/dist_install

VERSION =`sed -nE 's/.*[Vv]ersion ([0-9.]+) .*/ /p' pkg/${PRODUCT_NAME}.desc | head -1`
RELEASEDIR = ../tags

YICF_FILES = perl_Checklists.yicf 

PHONY: pkg clean test doc

all: pkg

# our pkg assumes that 
pkg: clean test readme
	cd pkg && ${YIC} ${YIC_OPTS} ${YICF_FILES}

package: pkg

package-test: pkg

release: package-release

package-release: BUILDTYPE=release
package-release: package 

package-nightly: BUILDTYPE=nightly
package-nightly: package

link: BUILDTYPE=link
link: package

clean: 
	cd pkg && rm -rf *.tgz *.tar.gz rhel.* README*
	cd src && if [ -f ./Build ] ; then ./Build distclean ; fi

src/Build:
	cd src && perl Build.PL && ./Build 

blib:
	cd src && perl Build.PL && ./Build 

test: src/Build
	 cd src && ./Build test 

# TODO: solve how to get the cover2clover into play.

testcover: clean_clover blib
	( cd src && ./Build testcover && cover2clover.pl )

clean_clover:
	if [ -d ./src/clover-reports ] ; then (/bin/rm -rf ./src/clover-reports) fi
	if [ -d ./src/cover_db ] ; then (/bin/rm -rf ./src/cover_db) fi

nuke: clean clean_clover 

distclean: nuke

# The README game is for providing the POD to to the dist page.

readme: src/Build
	cat README > pkg/README.${PRODUCT_NAME}
	echo "===============================================================================" >> pkg/README.${PRODUCT_NAME}
	${POD2TEXT} ${MODULE} >> pkg/README.${PRODUCT_NAME}
	echo "===============================================================================" >> pkg/README.${PRODUCT_NAME}
	echo >> pkg/README.${PRODUCT_NAME}

# do we have a way to ask what manual page would/should be?
# this is no place for 
#  ${POD2MAN} -c "APP_NAME_TAG" ${SCRIPT} > doc/${SCRIPT_NAME}.1
# We do want to solve the man(3) family of manpages?
doc: readme

#----------------------------
twiki: twikidoc

twikidoc:
	${PUSHTWIKI} ${TWIKI_SITE} ${MODULE}

#----------------------------
tidyci: tidycommit

tidycommit: update tidy
	svn commit
 
tidy:
	find . \( -name "*.pm" -o -name "*.t" -o "*.pl" \) | xargs perltidy -pro=./perltidyrc 

devel_env:
	yinst install perl-Module-Build || true
	yinst install ypan/perl-Test-Class  || true
	yinst install ypan/perl-Test-Differences || true
	yinst install ypan/perl-Test-Output || true
	yinst install ypan/perl-Devel-Cover || true
	yinst install cover2clover  || true
	yinst install push_twiki_doc || true

update:
	svn update

#----------------------------

tags_dir: ${RELEASEDIR}

${RELEASEDIR}:
	mkdir -p ${RELEASEDIR}
	svn add ${RELEASEDIR}

tag_code: tags_dir clean
	@x=$(VERSION); \
	if [ -d ${RELEASEDIR}/$$x ] ; then echo "${RELEASEDIR}/$$x already exists";\
	else (  svn copy ../trunk ${RELEASEDIR}/$$x ) ; fi


dist:   BUILDTYPE=release
dist:	pkg twiki
	${DISTINSTALL} -br ${BRANCH} pkg/*.tgz

# the end.

