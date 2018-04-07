ARCHS = armv7 arm64
SDK = iPhoneOS8.1
TARGET = iphone:clang:latest
THEOS_BUILD_DIR = DEBs

include theos/makefiles/common.mk

TWEAK_NAME = NoInstaStories
NoInstaStories_FILES = Tweak.xm
NoInstaStories_FRAMEWORKS = UIKit CoreGraphics
NoInstaStoires += -Wl,-segalign,4000
NoInstStories_CFLAGS = -Wno-deprecated -Wno-deprecated-declarations -Wno-error

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
