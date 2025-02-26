XZero() {
  COL='\033[0;33m'
  echo -e "${COL}XZero Version 1.0"


  if [ "$1" == "inst" ]; then
     mkm="https://raw.githubusercontent.com/Pouyamohamadi-cpu/XZero/main/""$2"".xple"
     echo "Download start from XZero server1 :""${mkm}"
     curl -L -o /storage/emulated/0/XpLevel/$2.xple -H "User-Agent: Mozilla/5.0" ${mkm} && echo "Lib Download complete." && XPL --c /storage/emulated/0/XZero/XZero_info.xple
  fi
  if  [ "$1" == "--up" ]; then
  mkm="https://raw.githubusercontent.com/Pouyamohamadi-cpu/XZero/main/XZero.sh"
  echo -e "${COL}Try to download new version of XZero from main-server."
  curl -L -o /storage/emulated/0/XZero/XZero.sh -H "User-Agent: Mozilla/5.0" ${mkm} && echo "Download XZero complete." && XPL --c /storage/emulated/0/XZero/XZero_info.xple
  fi
  if [ "$1" == "help" ]; then
  XPL --c /storage/emulated/0/XZero/XZero_info.xple
  fi
}