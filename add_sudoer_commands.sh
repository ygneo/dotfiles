if [ -z "$1" ]; then
  echo "Starting up visudo with this script as first parameter"
  export EDITOR=$0 && sudo -E visudo
else
  echo "Changing sudoers"
  echo "ygneo ALL=(ALL) NOPASSWD: sudo openvpn --script-security 2 --config ~/vpns/flumotion/o01-udp-1172-abarcia.ovpn" >> $1
fi
