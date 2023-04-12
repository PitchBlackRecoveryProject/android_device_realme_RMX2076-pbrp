#!/system/bin/sh
# This script is needed to automatically set device props.

load_RMX2075L1()
{
      echo "Setting up props for RMX2075L1"
      resetprop "ro.build.product" "RMX2075"
      resetprop "ro.product.model" "RMX2075"
      resetprop "ro.product.device" "RMX2075L1"
      resetprop "ro.product.product.device" "RMX2075L1"
      resetprop "ro.commonsoft.ota" "RMX2075L1"
      resetprop "ro.separate.soft" "19705"
}

load_RMX2076L1()
{
      echo "Setting up props for RMX2076L1"
      resetprop "ro.build.product" "RMX2076"
      resetprop "ro.product.model" "RMX2076"
      resetprop "ro.product.device" "RMX2076L1"
      resetprop "ro.product.product.device" "RMX2076L1"
      resetprop "ro.commonsoft.ota" "RMX2076L1"
      resetprop "ro.separate.soft" "19706"
}

load_RMX2071CN()
{
      echo "Setting up props for RMX2071CN"
      resetprop "ro.build.product" "RMX2071"
      resetprop "ro.product.model" "RMX2071"
      resetprop "ro.product.device" "RMX2071CN"
      resetprop "ro.product.product.device" "RMX2071CN"
      resetprop "ro.commonsoft.ota" "RMX2071CN"
      resetprop "ro.separate.soft" "19795"

load_RMX2072CN()
{
      echo "Setting up props for RXM2072CN"
      resetprop "ro.build.product" "RMX2072"
      resetprop "ro.product.model" "RMX2072"
      resetprop "ro.product.device" "RMX2072CN"
      resetprop "ro.product.product.device" "RMX2072CN"
      resetprop "ro.commonsoft.ota" "RMX2072CN"
      resetprop "ro.separate.soft" "20607"
}

project=$(cat /proc/oplusVersion/prjName)
echo $project

case $project in
     "19705")
         load_RMX2075L1
              ;;
     "19706")
          load_RMX2076L1
              ;;
     "19795")
          load_RMX2071CN
              ;;
     "20607")
          load_RMX2072CN
              ;;
           *)
          load_RMX2075L1
              ;;

esac

exit 0
