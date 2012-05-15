#!/bin/bash
echo "Making FlashySlideshows.."

OpenCVStuff="`pkg-config --cflags opencv` `pkg-config --libs opencv`"

Optimizations="-s -O3 -fexpensive-optimizations"
CPU="-mfpmath=sse -mtune=core2 -msse -msse2 -msse3"

LAYOUTS="layouts/layout_handler.cpp layouts/expo_layout.cpp"
VISUALS="visuals/hud.cpp visuals/background.cpp visuals/effects.cpp visuals/picture_renderer.cpp"
TRANSITIONS="transitions/transition_handler.cpp"

LIBRARIES="-lglut -lGL -lGLU -lXxf86vm -lopenal -lalut"

cd src

g++ $Optimizations main.cpp environment.cpp jpegexiforient_embed.cpp load_images.cpp load_textures.cpp sound.cpp directory_listing.cpp directory_sorting.cpp directory_transactions.cpp slideshow.cpp controls.cpp camera_control.cpp pictures_control.cpp visuals.cpp scene_objects.cpp memory_hypervisor.cpp joystick.cpp math_3d.cpp image_sensing.cpp $TRANSITIONS $VISUALS $LAYOUTS wxwidgets_stuff.cpp $LIBRARIES `wx-config --libs` `wx-config --cxxflags` $OpenCVStuff -L. -o bin/Release/flashyslideshows

cp bin/Release/flashyslideshows ../flashyslideshows

cd FlashySlideShowStarter

g++ $Optimizations FlashySlideShowStarterApp.cpp FlashySlideShowStarterMain.cpp ../directory_listing.cpp ../directory_sorting.cpp `wx-config --libs` `wx-config --cxxflags` -L. -o bin/Release/flashyslideshowsgui

cp bin/Release/flashyslideshowsgui ../../flashyslideshowsgui

cd ..

cd ..

echo "Done.."

exit 0
