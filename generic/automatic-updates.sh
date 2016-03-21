# Upgrade fully before commencing
apt-get update
apt-get upgrade -y

# Install package unattended-upgrades
apt-get install unattended-upgrades

# Configure unattended upgrades to run automatically
cat <<EOF >/etc/apt/apt.conf.d/02periodic
APT::Periodic::Update-Package-Lists "1";
APT::Periodic::Download-Upgradeable-Packages "1";
APT::Periodic::AutocleanInterval "7";
APT::Periodic::Unattended-Upgrade "1";
EOF
