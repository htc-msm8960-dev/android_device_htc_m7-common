#!/sbin/sh

set -e

echo "Mounting system"
mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/system /system_root -o rw,discard

# Helper functions
copy()
{
  cp -dp "$1" "$2"
  # symlinks don't have a context
  if [ ! -L "$1" ]; then
    # it is assumed that every label starts with 'u:object_r' and has no white-spaces
    local context=`ls -Z "$1" | grep -o 'u:object_r:[^ ]*' | head -1`
    chcon -v "$context" "$2"
  fi
}

# Detect variant and copy its specific-blobs
modelid=`getprop ro.boot.mid`

case $modelid in
    "PN0731000") variant="vzw" ;;
    "PN0720000") variant="spr" ;;
    "PN0710000") variant="gsm" ;;
    *)           variant="gsm" ;;
esac

# Skip copying blobs in case of Dual SIM variants because the files are already in the proper location
if [ "$variant" == "vzw" ] || [ "$variant" == "spr" ] || [ "$variant" == "gsm" ]; then
  basedir="/system_root/system/vendor/blobs/$variant/"
  if [ -d $basedir ]; then
    cd $basedir

    for file in `find . -type f` ; do
      mkdir -p `dirname /system/$file`
      copy $file /system_root/system/$file
    done

    for file in bin/* ; do
      chmod 755 /system_root/system/$file
    done
    cd /
  else
    echo "Expected source directory does not exist!"
    cd /
    umount /system_root
    exit 1
  fi
fi

umount /system_root
exit 0
