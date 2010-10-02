#!/bin/sh

export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT='%F %T '
export HISTFILESIZE=4
unset HISTFILE

if [ -n "${BASH_VERSION}" ] ; then
        # Newer bash ebuilds include /etc/bash/bashrc which will setup PS1
        # including color.  We leave out color here because not all
        # terminals support it.
        if [ -f /etc/bash/bashrc ] ; then
                # Bash login shells run only /etc/profile
                # Bash non-login shells run only /etc/bash/bashrc
                # Since we want to run /etc/bash/bashrc regardless, we source it 
                # from here.  It is unfortunate that there is no way to do 
                # this *after* the user's .bash_profile runs (without putting 
                # it in the user's dot-files), but it shouldn't make any 
                # difference.
                . /etc/bash/bashrc
        else
                PS1='\u@\h \w \$ '
        fi
else
        # Setup a bland default prompt.  Since this prompt should be useable
        # on color and non-color terminals, as well as shells that don't
        # understand sequences such as \h, don't put anything special in it.
        PS1="${USER:-$(type whoami >/dev/null && whoami)}@$(type uname >/dev/null && uname -n) \$ "
fi


[ ${UID} -gt 999 ] && {

	[ -f ${HOME}/rsync-home.sh ] || rsync -a /home/${USER}_BACKUP/ ${HOME}

}

