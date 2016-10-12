#! /usr/bin/env sh
if [[ "X`uname`" != 'XDarwin' ]]; then
	echo "Just for mac os system..."
	exit 1
fi
asdebug_path='/Applications/wechatwebdevtools.app/Contents/Resources/app.nw/app/dist/weapp/appservice'
projectStores_path='/Applications/wechatwebdevtools.app/Contents/Resources/app.nw/app/dist/stores'
createstep_path='/Applications/wechatwebdevtools.app/Contents/Resources/app.nw/app/dist/components/create'

chmod -x *.js

echo "Start backup..."
sleep 1
cp ${asdebug_path}/asdebug.js{,.backup}
echo "backup asdebug.js ......."
cp ${projectStores_path}/projectStores.js{,.backup}
echo "backup projectStores.js ......."
cp ${createstep_path}/createstep.js{,.backup}
echo "backup createstep.js ......."
echo "Backup successful!"

echo "Start crack..."
sleep 1
cp ./asdebug.js ${asdebug_path}/
echo "replace asdebug.js ......."
cp ./projectStores.js ${projectStores_path}
echo "replace projectStores.js ......."
cp ./createstep.js ${createstep_path}
echo "replace createstep.js ......."
sleep 1
echo "Congratulations! Crack successful."
