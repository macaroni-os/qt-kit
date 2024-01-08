# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="c41437acf07c2c4703351b07925fce3ce0e6b75d"

inherit qt5-build

DESCRIPTION="Text-to-speech library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtspeech/-/archive/c41437acf07c2c4703351b07925fce3ce0e6b75d/qtspeech-c41437acf07c2c4703351b07925fce3ce0e6b75d.tar.bz2 -> qtspeech-c41437acf07c2c4703351b07925fce3ce0e6b75d.tar.bz2"

KEYWORDS="*"

IUSE="alsa flite"

RDEPEND="
	>=app-accessibility/speech-dispatcher-0.8.7
	=dev-qt/qtcore-5.15.2*
	flite? (
		>=app-accessibility/flite-2[alsa?]
		=dev-qt/qtmultimedia-5.15.2*[alsa?]
		alsa? ( media-libs/alsa-lib )
	)
"
DEPEND="${RDEPEND}"

src_prepare() {
	qt_use_disable_config flite flite \
		src/plugins/tts/tts.pro

	qt_use_disable_config alsa flite_alsa \
		src/plugins/tts/flite/flite.pro

	qt5-build_src_prepare
}