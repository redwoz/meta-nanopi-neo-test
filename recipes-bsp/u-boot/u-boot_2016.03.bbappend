DESCRIPTION="Upstream's U-boot configured for sunxi devices"

COMPATIBLE_MACHINE = "nanopi-neo"

DEFAULT_PREFERENCE_sun8i="1"

FILESEXTRAPATHS_append := ":${THISDIR}/files"

SRC_URI = " \
	git://git.denx.de/u-boot.git \
	file://boot.cmd \
	file://clock_sun6i_fix.patch \
"
# 29e0cfb4f77f7aa369136302cee14a91e22dca71 / 2016.11 - unstable

# 19ce924ff914f315dc2fdf79f357825c513aed6e / 2016.07 - https://forum.armbian.com/index.php/topic/2044-some-discovery-while-trying-520-builds/
SRCREV = "19ce924ff914f315dc2fdf79f357825c513aed6e"

do_configure_prepend() {
}
