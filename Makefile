PREFIX	=${HOME}
XMMSDIR	=${PREFIX}/.xmms

all::

clean::

distclean clobber:: clean

diff::	config ${XMMSDIR}/config
	diff -uNp config ${XMMSDIR}/config

import:: ${XMMSDIR}/config
	install -D -c -m 0644 ${XMMSDIR}/config config

install:: config
	install -D -c -m 0644 config ${XMMSDIR}/config

uninstall::
	${RM} ${XMMSDIR}/config

diff::	eq.preset ${XMMSDIR}/eq.preset
	diff -uNp eq.preset ${XMMSDIR}/eq.preset

import:: ${XMMSDIR}/eq.preset
	install -D -c -m 0644 ${XMMSDIR}/eq.preset eq.preset

install:: eq.preset
	install -D -c -m 0644 eq.preset ${XMMSDIR}/eq.preset

uninstall::
	${RM} ${XMMSDIR}/eq.preset

diff::	ladsparc ${XMMSDIR}/ladsparc
	diff -uNp ladsparc ${XMMSDIR}/ladsparc

import:: ${XMMSDIR}/ladsparc
	install -D -c -m 0644 ${XMMSDIR}/ladsparc ladsparc

install:: ladsparc
	install -D -c -m 0644 ladsparc ${XMMSDIR}/ladsparc

uninstall::
	${RM} ${XMMSDIR}/ladsparc
