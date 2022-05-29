#!/system/bin/sh
echo "安装Lua5.4.4 (MyPython专用命令)"
read -p "是否继续? [y/n] " input
 

shell(){
cd /data/data/com.mypython/files
curl -O https://gitee.com/yueyinghanxin/appapi/raw/master/com.mypython/file/bin/lua &&mv ./lua ./MyPython./bin/lua &&chmod 777 ./MyPython./bin/lua &&echo "已安装Lua"
curl -O https://gitee.com/yueyinghanxin/appapi/raw/master/com.mypython/file/bin/luac &&mv ./luac ./MyPython./bin/luac &&chmod 777 ./MyPython./bin/luac &&echo "已安装Luac"

echo ">>>"
echo ">>>"
echo ">>>"
cd /sdcard/MyPython
lua -v
}



case $input in
        [yY]*)
                shell
                ;;
        [nN]*)
                exit
                ;;
        *)
                echo "Just enter y or n, please."
                exit
                ;;
esac
