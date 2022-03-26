echo "[PATCHING SCRIPT] Applying Patches ..."

echo "[PATCHING SCRIPT] Applying: Actual Full Screen"
patch --merge -i patches/dwm-actualfullscreen-20211013-cb3f58a.diff
echo "[PATCHING SCRIPT] Actual Full Screen: Done!"

echo "[PATCHING SCRIPT] Applying: Steam"
patch --merge -i patches/dwm-steam-6.2.diff
echo "[PATCHING SCRIPT] Steam: Done!"

echo "[PATCHING SCRIPT] Applying: Useless gap"
patch --merge -i patches/dwm-uselessgap-20200719-bb2e722.diff
echo "[PATCHING SCRIPT] Useless gap done"

echo "[PATCHING SCRIPT] Applying: Status 2d"
patch --merge -i patches/dwm-status2d-6.2.diff
echo echo "[PATCHING SCRIPT] Status 2d done"
