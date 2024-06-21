echo 'Starting to clone stuffs needed to build for cheetah'

# Device common
echo 'Cloning common device tree'

git clone https://github.com/Pixel7Pro-Cheetah/device_google_gs201.git -b lineage-21 device/google/gs201
git clone https://github.com/Pixel7Pro-Cheetah/device_google_gs101.git -b lineage-21 device/google/gs101
git clone https://github.com/LineageOS/android_device_google_gs-common -b lineage-21 device/google/gs-common

# Kernel
echo 'Cloning kernel tree'
git clone --depth=1 https://android.googlesource.com/device/google/pantah-kernel device/google/pantah-kernel
# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/Pixel7Pro-Cheetah/proprietary_vendor_google_cheetah.git -b lineage-21 vendor/google/cheetah

# pixel_parts
echo 'Cloning pixelparts'
git clone https://github.com/Pixel7Pro-Cheetah/packages_apps_PixelParts.git -b udc packages/apps/PixelParts

# BCR
echo 'Cloning bcr'
git clone --depth=1 https://github.com/kenway214/vendor_bcr.git -b main vendor/bcr