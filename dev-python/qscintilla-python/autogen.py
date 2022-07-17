#!/usr/bin/env python3

import re


async def generate(hub, **pkginfo):
	sources = "https://www.riverbankcomputing.com/software/qscintilla/download"
	downloads = "https://www.riverbankcomputing.com/static/Downloads/QScintilla"

	html_data = await hub.pkgtools.fetch.get_page(sources)
	latest = re.search(f'<a href=({downloads}/([0-9.]+)/QScintilla_src-([0-9.]+).tar.gz)', html_data)
	url = latest.group(1)
	version = latest.group(2)

	src_artifact = hub.pkgtools.ebuild.Artifact(
		url=url
	)
	ebuild = hub.pkgtools.ebuild.BreezyBuild(
		**pkginfo, version=version, artifacts=[src_artifact]
	)
	ebuild.push()


# vim: ts=4 sw=4 noet
