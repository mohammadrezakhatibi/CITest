#!/bin/sh

# 1. Test project
#xcodebuild -project 'Top Change.xcodeproj' -scheme 'Top Change' -destination 'platform=iOS Simulator,name=iPhone 8' -configuration Release test | xcpretty
# 2. Archive project
echo '🌗 begin...'
xcodebuild clean -project 'CITest.xcodeproj' -scheme 'CITest'
xcodebuild -project 'CITest.xcodeproj' -scheme 'CITest' -destination 'platform=iOS Simulator,name=iPhone 8' test
xcodebuild -project 'CITest.xcodeproj' -scheme 'CITest' -destination 'generic/platform=iOS' -configuration Release build CODE_SIGNING_ALLOWED=NO


