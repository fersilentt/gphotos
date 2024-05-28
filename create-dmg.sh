rm -r dist/*

mkdir -p dist/dmg

#rm -r dist/dmg/*

cp -r "release-builds/GPhotos-darwin-x64/" dist/dmg

rm dist/dmg/LICENSE
rm dist/dmg/LICENSES.chromium.html
rm dist/dmg/version

create-dmg \
    --volname "GPhotos" \
    --volicon "assets/icons/mac/icon.icns" \
    --window-pos 200 120 \
    --window-size 600 300 \
    --icon-size 100 \
    --icon "GPhotos.app" 175 120 \
    --hide-extension "GPhotos.app" \
    --app-drop-link 425 120 \
    "dist/GPhotos.dmg" \
    "dist/dmg/"