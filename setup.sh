#!/bin/sh

set -e

prefix="$HOME/.local"

function normal_build_install()
{
	cd "$1"
	meson --prefix="$prefix" build
	DESTDIR="$prefix" ninja -C build install
	cd ../..
}

normal_build_install plugins/VapourSynth-AddGrain
normal_build_install plugins/VapourSynth-BM3D
normal_build_install plugins/VapourSynth-CTMF
normal_build_install plugins/VapourSynth-DFTTest
normal_build_install plugins/VapourSynth-Deblock
normal_build_install plugins/VapourSynth-EEDI2
normal_build_install plugins/VapourSynth-EEDI3
normal_build_install plugins/VapourSynth-LGhost
# normal_build_install plugins/VapourSynth-NNEDI3
normal_build_install plugins/VapourSynth-NNEDI3CL
normal_build_install plugins/VapourSynth-TCanny
normal_build_install plugins/VapourSynth-TTempSmooth
normal_build_install plugins/VapourSynth-descale
normal_build_install plugins/VapourSynth-mvtools
