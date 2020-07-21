rm -Rf files/etc/profile.d/sysinfo.sh
find target/linux/ramips/* -maxdepth 0 ! -path '*/patches-5.4' -exec rm -Rf '{}' \;
svn co https://github.com/coolsnowwolf/lede/trunk/target/linux/ramips target/linux/ramips
# Modify default IP
sed -i 's/10.0.0.1/192.168.123.1/g' package/base-files/files/bin/config_generate
