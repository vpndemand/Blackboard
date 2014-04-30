xcodebuild -alltargets clean

rm -rf "./JenkinsBuild/*"

xcodebuild -target BlackBoard PROVISIONING_PROFILE="61950E1A-B98E-4766-8265-D2192FAF4AFB" CONFIGURATION_BUILD_DIR=JenkinsBuild

rm -rf "./JenkinsArchive/*"

xcodebuild -scheme BlackBoard archive PROVISIONING_PROFILE="61950E1A-B98E-4766-8265-D2192FAF4AFB" CODE_SIGN_IDENTITY="iPhone Distribution: Sai Satyam(EV646CP42C)" -archivePath ./JenkinsArchive/BlackBoard.xcarchive

rm -rf "./JenkinsIPAExport/*"

xcodebuild -exportArchive -exportFormat IPA -exportProvisioningProfile iOS\ Team\ Provisioning\ Profile:\ com.calsoftlabs.clearpath -archivePath ./JenkinsArchive/BlackBoard.xcarchive -exportPath ./JenkinsIPAExport/BlackBoard.ipa