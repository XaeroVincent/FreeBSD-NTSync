PORTNAME=	ntsync
DISTVERSION=	g20260809
CATEGORIES=	emulators
PKGNAMESUFFIX=	-kmod

MAINTAINER=	tmp386@live.com
COMMENT=	Upstream NTSync kernel driver for Windows compatibility layers
WWW=		https://github.com/XaeroVincent/FreeBSD-NTSync

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		kmod

USE_GITHUB=	yes
GH_ACCOUNT=	XaeroVincent
GH_PROJECT=	FreeBSD-NTSync
GH_TAGNAME=	ddc4f34a6e9a9d7d29d60eed1209f4a463289bc0

MAKE_ARGS=	COMPAT32=yes

PLIST_FILES=	${KMODDIR}/ntsync.ko \
		include/linux/ntsync.h

do-install:
	${INSTALL_KLD} ${WRKSRC}/ntsync.ko ${STAGEDIR}${KMODDIR}
	${MKDIR} ${STAGEDIR}${PREFIX}/include/linux
	${INSTALL_DATA} ${WRKSRC}/ntsync.h ${STAGEDIR}${PREFIX}/include/linux

.include <bsd.port.mk>
