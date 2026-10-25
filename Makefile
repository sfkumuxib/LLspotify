ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = Spotify

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LLspotify

LLspotify_FILES = $(shell find Sources -name '*.swift' -o -name '*.m' -o -name '*.x')
LLspotify_SWIFTFLAGS = -ISources
LLspotify_CFLAGS = -fobjc-arc
LLspotify_FRAMEWORKS = UIKit SwiftUI

include $(THEOS_MAKE_PATH)/tweak.mk
