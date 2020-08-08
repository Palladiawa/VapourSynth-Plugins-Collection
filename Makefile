

vapoursynth:
	cd vapoursynth
	./autogen.sh
	./configure
	make
	cd ..
	
install-vapoursynth:
	cd vapoursynth
	make install

