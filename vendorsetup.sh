# Clone/Fetch Upstream Device Dependencies
# Device tree
echo "cloning Common"
git clone https://github.com/NextWork123/device_xiaomi-sm8250-stable device/xiaomi/sm8250-common
echo ""

echo "cloning vendor blobs"
git clone https://github.com/NextWork123/vendor_xiaomi_sm8250-common-stable vendor/xiaomi/sm8250-common
git clone https://github.com/NextWork123/vendor_xiaomi_alioth-stable vendor/xiaomi/alioth
echo ""

# Kernel
echo "cloning kernel and clang"
git clone https://github.com/NextWork123/n0kernel-nextkernel kernel/xiaomi/alioth
git clone --depth=1 https://gitlab.com/Roxor-007/WeebX_clang16.git prebuilts/clang/host/linux-x86/clang-WeebX
echo ""

# Dependecies
echo "Cloning Dependencies"
rm -rf hardware/xiaomi
git clone https://github.com/VoidUI-Tiramisu/hardware_xiaomi hardware/xiaomi
rm -rf vendor/qcom/opensource/audio-hal/st-hal
git clone https://github.com/PixelExperience/vendor_qcom_opensource_audio-hal_st-hal vendor/qcom/opensource/audio-hal/st-hal
rm -rf vendor/qcom/opensource/interfaces
git clone https://github.com/VoidUI-CAF/vendor_qcom_opensource_interfaces.git -b aosp-12.1 vendor/qcom/opensource/interfaces
rm -rf hardware/qcom-caf/sm8250/display 
git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8250-common_display -b thirteen hardware/qcom-caf/sm8250/display 
rm -rf hardware/qcom-caf/sm8250/media 
git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8250-common_media -b thirteen hardware/qcom-caf/sm8250/media 
rm -rf hardware/qcom-caf/sm8250/audio 
git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8250-common_audio -b thirteen hardware/qcom-caf/sm8250/audio 
rm -rf external/ant-wireless/antradio-library
git clone https://github.com/VoidUI-CAF/external_ant-wireless_antradio-library.git external/ant-wireless/antradio-library
echo ""