echo "[PATCHING SCRIPT] Applying Patches ..."

echo "[PATCHING SCRIPT] Applying: Under Curl patch.."
patch --merge -i patches/st-undercurl-0.8.4-20210822.diff
echo "[PATCHING SCRIPT] Under Curl: Done!"

echo "[PATCHING SCRIPT] Applying: Alpha"
patch --merge -i patches/st-alpha-0.8.2.diff
echo "[PATCHING SCRIPT] Alpha: Done!"

echo "[PATCHING SCRIPT] All done!"
