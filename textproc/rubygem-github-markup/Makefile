# $FreeBSD$

PORTNAME=	github-markup
PORTVERSION=	2.0.1
CATEGORIES=	textproc rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Render any fancy markup

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

NO_ARCH=	yes
USE_RUBY=	yes
USES=		gem shebangfix
REINPLACE_ARGS=	-i ''

PLIST_FILES=	bin/github-markup

SHEBANG_FILES=	script/*

post-patch:
	@${REINPLACE_CMD} -e '1d' ${WRKSRC}/lib/github/commands/rest2html

.include <bsd.port.mk>
