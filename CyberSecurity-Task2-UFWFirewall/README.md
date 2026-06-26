# Task 2 - Basic Firewall Configuration with UFW

## What is a Firewall?
A firewall is a network security system that monitors and controls incoming
and outgoing traffic based on predetermined security rules.

## Rules Applied
| Rule | Port | Reason |
|------|------|--------|
| Allow SSH | 22 | Remote access to machine |
| Deny HTTP | 80 | Block unencrypted web traffic |
| Allow HTTPS | 443 | Allow secure web traffic |
| Deny IP range | 10.0.0.0/8 | Block internal suspicious range |

## How to Run
chmod +x ufw_configuration.sh
sudo ./ufw_configuration.sh

## Testing
Run `sudo ufw status verbose` to confirm rules are active.
