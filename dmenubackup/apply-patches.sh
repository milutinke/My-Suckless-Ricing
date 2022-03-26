echo "[PATCHING SCRIPT] Applying Patches ..."

echo "[PATCHING SCRIPT] Applying: Mouse Support"
patch --merge -i patches/dmenu-mousesupport-5.0.diff
echo "[PATCHING SCRIPT] Mouse Support: Done!"

echo "[PATCHING SCRIPT] Applying: High Priority"
patch --merge -i patches/dmenu-highpriority-4.9.diff
echo "[PATCHING SCRIPT] High Priority: Done!"

echo "[PATCHING SCRIPT] Applying: Highlighting"
patch --merge -i patches/dmenu-highlight-4.9.diff
echo "[PATCHING SCRIPT] Highlighting: Done!"

echo "[PATCHING SCRIPT] Applying: Numbers"
patch --merge -i patches/dmenu-numbers-4.9.diff
echo "[PATCHING SCRIPT] Numbers: Done!"

echo "[PATCHING SCRIPT] Applying: More colors"
patch --merge -i patches/dmenu-morecolor-20190922-4bf895b.diff
echo "[PATCHING SCRIPT] More Color: Done!"

echo "[PATCHING SCRIPT] Applying: Case Insensitive"
patch --merge -i patches/dmenu-caseinsensitive-5.0.diff
echo "[PATCHING SCRIPT] Case Insensitive: Done!"
