xcodebuild -alltargets clean

rm -rf "./JenkinsBuild/*"

xcodebuild -target BlackBoard PROVISIONING_PROFILE="F4162104-89B6-4483-9195-AD747F1C8929" CONFIGURATION_BUILD_DIR=JenkinsBuild

rm -rf "./JenkinsArchive/*"

xcodebuild -scheme BlackBoard archive PROVISIONING_PROFILE="F4162104-89B6-4483-9195-AD747F1C8929" CODE_SIGN_IDENTITY="iPhone Distribution: Sai Satyam(EV646CP42C)" -archivePath ./JenkinsArchive/BlackBoard.xcarchive

rm -rf "./JenkinsIPAExport/*"

xcodebuild -exportArchive -exportFormat IPA -exportProvisioningProfile iOS\ Team\ Provisioning\ Profile:\ com.calsoftlabs.clearpath -archivePath ./JenkinsArchive/BlackBoard.xcarchive -exportPath ./JenkinsIPAExport/BlackBoard.ipa