# $FreeBSD$

PORTNAME=	bareos16
PKGNAMESUFFIX=	-bat
PORTREVISION=	1

COMMENT=	Backup archiving recovery open sourced (GUI)

LIB_DEPENDS+=	libqwt.so:x11-toolkits/qwt5 \
		libbareos.so:sysutils/bareos16-client

CONFLICTS=	bacula*-bat-*

USES=		pkgconfig desktop-file-utils qt:4
USE_QT=		qmake_build uic_build moc_build rcc_build
WITH_BAT=	yes

PLIST=		${.CURDIR}/pkg-plist
MAKE_ENV+=	MAKEOBJDIRPREFIX=/

MASTERDIR=	${.CURDIR}/../../sysutils/bareos16-server

CONFIGURE_ARGS+=	--enable-bat \
			--with-qwt=${LOCALBASE}/lib \
			--disable-build-dird \
			--disable-build-stored \
			--enable-client-only

.include "${MASTERDIR}/Makefile"
