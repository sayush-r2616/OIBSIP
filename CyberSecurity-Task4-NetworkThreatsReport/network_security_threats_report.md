# Network Security Threats Report
**Author:** Sayush Ramesh  
**Track:** Cyber Security  
**Date:** June 2026

---

## Introduction
In today's hyper-connected world, network security threats pose serious
risks to individuals, businesses, and governments. A single successful
attack can result in data theft, financial loss, and reputational damage.
Understanding these threats is the first step toward building effective
defences.

---

## 1. DoS/DDoS Attacks

### How It Works
A Denial of Service (DoS) attack floods a target server with so much
traffic that it becomes unable to respond to legitimate users. A
Distributed DoS (DDoS) uses thousands of compromised devices (a botnet)
to amplify the attack.

### Real-World Example
In 2016, the Mirai botnet attacked Dyn DNS, taking down major websites
including Twitter, Netflix, and Reddit for hours.

### Impact
- Service outages
- Revenue loss
- Damaged reputation

### Mitigation Strategies
1. Use a Content Delivery Network (CDN) with DDoS protection (e.g. Cloudflare)
2. Configure rate limiting on servers
3. Use an Intrusion Prevention System (IPS)

---

## 2. Man-in-the-Middle (MITM) Attacks

### How It Works
The attacker secretly intercepts communication between two parties — a
user and a server — and can read or modify the data without either party
knowing.

### Real-World Example
In 2015, Lenovo pre-installed Superfish adware that used a MITM technique
to intercept HTTPS traffic on customers' laptops.

### Impact
- Credential theft
- Session hijacking
- Data manipulation

### Mitigation Strategies
1. Always use HTTPS (TLS encryption)
2. Use VPN on public Wi-Fi
3. Enable HTTP Strict Transport Security (HSTS)

---

## 3. IP Spoofing

### How It Works
The attacker sends packets with a forged source IP address, making them
appear to come from a trusted system. Used in DDoS amplification and
to bypass IP-based authentication.

### Real-World Example
IP spoofing was used in the 2018 GitHub DDoS attack — the largest recorded
at the time at 1.35 Tbps.

### Impact
- Bypassed access controls
- Amplified DDoS attacks
- False attribution of attacks

### Mitigation Strategies
1. Implement ingress/egress filtering (BCP38 standard)
2. Use packet authentication protocols
3. Monitor for traffic anomalies with IDS tools

---

## 4. DNS Poisoning / Spoofing (Bonus)

### How It Works
The attacker corrupts a DNS server's cache, redirecting users who type a
legitimate URL to a malicious website without their knowledge.

### Real-World Example
In 2010, China's Great Firewall accidentally leaked poisoned DNS responses
affecting users globally, redirecting traffic to wrong IP addresses.

### Impact
- Phishing attacks at scale
- Credential harvesting
- Malware distribution

### Mitigation Strategies
1. Enable DNSSEC (DNS Security Extensions)
2. Use trusted DNS resolvers (e.g., 1.1.1.1 with DoH)
3. Monitor DNS cache for unexpected changes

---

## Comparison Table

| Threat | Attack Vector | Who is at Risk | Difficulty | Ease of Mitigation |
|--------|--------------|----------------|------------|-------------------|
| DoS/DDoS | Network flooding | Web servers, ISPs | Low-Medium | Medium |
| MITM | Network interception | Any user on unsecured network | Medium | Low (use HTTPS) |
| IP Spoofing | Packet forgery | Network infrastructure | Medium | Medium |
| DNS Poisoning | DNS cache corruption | All internet users | High | Medium (DNSSEC) |

---

## Conclusion — Key Takeaways for Network Administrators
1. Encrypt all traffic using TLS/HTTPS — this defeats MITM attacks entirely
2. Implement DDoS scrubbing services before an attack occurs, not after
3. Keep DNS servers patched and enable DNSSEC to prevent cache poisoning

---

## References
1. CISA - Understanding Denial-of-Service Attacks: https://www.cisa.gov
2. NIST SP 800-61 - Computer Security Incident Handling Guide: https://nist.gov
3. MITRE ATT&CK Framework: https://attack.mitre.org
4. SANS Reading Room - Network Threats: https://www.sans.org/reading-room
