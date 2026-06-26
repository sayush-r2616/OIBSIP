# Task 1 - Basic Network Scanning with Nmap

## What is Nmap?
Nmap (Network Mapper) is an open-source tool used to discover hosts and
services on a network by sending packets and analyzing responses.

## Why Network Scanning Matters
Network scanning helps administrators understand their own network exposure,
identify unnecessary open ports, and find potential attack surfaces before
attackers do.

## Installation
Nmap comes pre-installed on Kali Linux.
To verify: nmap --version
To install manually: sudo apt install nmap -y

## Scans Performed
1. Basic scan: nmap 127.0.0.1
2. Service version scan: nmap -sV 127.0.0.1
3. OS detection: sudo nmap -O 127.0.0.1

## Findings
(Write what ports you found and what services were on them here)

## Ethical Use Guidelines
- Only scan machines you own or have explicit permission to scan
- Never scan external networks, ISPs, or production servers
- This task was performed only on localhost (127.0.0.1)
