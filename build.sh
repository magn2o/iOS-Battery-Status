#!/bin/sh
/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc-4.0 -arch armv6 -mthumb -isysroot /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS4.2.sdk -framework Foundation -framework UIKit -lobjc -std=c99 battery.m -o battery
