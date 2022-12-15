# Set android_root
ANDROID_ROOT="${MY_DIR}/../../.." 

# Apply IMS patches
cd "${ANDROID_ROOT}/frameworks/opt/net/ims"
curl https://raw.githubusercontent.com/rthelolchex/android_patches/main/patches/ims/0000-ImsManager-Add-updateImsServiceConfig-method-back.patch | git apply -v
curl https://raw.githubusercontent.com/rthelolchex/android_patches/main/patches/ims/0001-Partially-Revert-Remove-references-to-deprecated-dev.patch | git apply -v
cd -

echo "vendorsetup done! now fire up your build!"
