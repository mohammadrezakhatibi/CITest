#!/bin/sh

# 1. Test project
echo '🌘 Test project begin...'
#xcodebuild -project 'Top Change.xcodeproj' -scheme 'Top Change' -destination 'platform=iOS Simulator,name=iPhone 8' -configuration Release test | xcpretty
# 2. Archive project
echo '🌗 Archive project begin...'
xcodebuild -project 'CITest.xcodeproj' -scheme 'CITest' -destination 'generic/platform=iOS'  -allowProvisioningUpdates -archivePath 'Archive/CITest.xcarchive' -configuration Release PROVISIONING_PROFILE='iOS Team Provisioning Profile: *' clean archive | xcpretty
# 3. Export project .ipa file
echo '🌕 Export project  begin...'
xcodebuild -exportArchive -archivePath 'Archive/CITest.xcarchive' -exportPath 'Release' -allowProvisioningUpdates -exportOptionsPlist 'ExportOptions.plist'


rm -rf 'Archive'
