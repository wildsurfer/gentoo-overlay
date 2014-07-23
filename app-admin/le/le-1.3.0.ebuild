# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="A command line utility for a convenient access to logentries
logging infrastructure"
HOMEPAGE="https://www.github.com/logentries/le"
SRC_URI="https://github.com/logentries/le/archive/v${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/python
	dev-python/simplejson
	app-crypt/gnupg"
RDEPEND="${DEPEND}"

src_install() {
	doinitd "$(dirname ${FILESDIR})/logentries"
	dobin le
	dobin le-monitor
	dodoc README
}
