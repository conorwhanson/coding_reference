# Network Devices
Enable comms and interaction on a computer network.
- Cables
- Servers
- Desktops
- Laptops
- Tablets
- Smartphones
- IoT devices

**Server** serves client requests for applications, data, or files from client devices on the same network (proper access settings).

**Node** is a network-connected device that can send/receive info.
All devices that can send, receive, or create info on network are nodes.

**Client-server** network common in businesses. These include FTP sites, web-servers, web browsers.

**Peer-to-peer** networks common in homes and internet. File sharing, discussion forums, media streaming, VoIP services.

**Hubs/Switches** connect multiple devices together. Data to hub goes to all devices on network; switch keeps table of device MAC addresses to send to intended recipient. Switches are more effecient. Both connect to modems.

**Router/Modem** interconnect different networks or subnetworks.
- Manage traffic between networks by forwarding data packets to intended IP addresses.
- Allow multiple devices to use same internet connection.

**Router** connect to modems and use internal routing table to route packets to network destination. Reads header to determine its path, consults table to find efficient path, forwards packet to next network in path.

**Modem** converts data into a format that is easy to transmit across network. When data reaches its destination the modem converts it to OG form. Most common are cable and DSL.

**Bridge** joins 2 separate networks so they can communicate and work as a single network. Can be wired or wireless.

**Gateway** is hardware or software that allows data to flow from one network to another (e.g., home network to internet).

**Repeater** receive signal and retransmits it, used to extend signal. Connect to wireless routers.

**WAPs** Wireless Access Point allows wireless devies to connect to a wired network. Often connects to a wired router as a standalone device. Acts as a central wireless connection for computers with wireless network adapters. Plugs into a wired network switch.

**NICs** are network interface cards and connect individual devices to a network. Wired/Wireless.

**Firewall** monitors/controls I/O netowrk traffic defined by security rules. Software or hardware.

**Proxy server** works to minimize security risks by evaluating requests from clients and forwards to appropriate server (if preset requirements met). Hide IP address and save bandwidth (distributes updates/files for users).

**IDS** is an itrusion detection system that monitors traffic and reports to network admin.

**IPS** is an intrusion prevents system that inspects traffic and redirects, retains, or removes items based on rules.

## Packets, IP addresses, DNS, DHCP, NAT
Everything on the internet involves packets (also called frames, blocks, cells, segments).

#### 3 Data transmission flow types
1. Simplex: unidirectional comms.
2. Half duplex: transmit and receive, but not simultaneously.
3. Full-duplex: transmit and receive simultaneously.

#### IP Packets Transmission Mode
1. Unicast: transmission to a single specific destination (HTTP/FTP).
2. Anycast: transmission to closest of multiple nodes with same unicast address assigned.
3. Multicast: transmission to all nodes that have subscribed. Limited to UDP protocol.
4. Broadcast: transmission to all nodes on subnet. Limites to UDP on IPv4 only.

**Data Transmission Flow**
Data sent in individually labeled packets in no particular order. Compiled in correct order.

#### IP Addresses

**IP Address** is an identifier to logically identify a device on a given network.

**IPv4** is a 32 bit binary value ID.
Example: 129.42.56.189

**IPv6** is a 128 bit binary value ID and is the newest protocol of that allows for more unique IP addresses with greater security features.

- Static IP address is manually assigned.
- Dynamic IP address is automatically assigned.
- Public IP address used to communicate publicly.
- Private IP address used to connect securely within an internal provate network.
- Loopback IP addresses are a range reserved for the local host.
- Reserved IP addresses are reserved for IETF/IANA for special purposes.

#### DNS
**DNS** is the phone book of the internet. Client sends request to DNS server (e.g., www.google.com), DNS server responds with IP address, then the client connects to IP address provided. Translates easy-to-remember addresses to number-only network addresses.

#### DHCP
**Dynamic Host Confguration Protocol (DHCP)** automates the configuring of IP network devices. It uses a pool of reserved IP addresses to dynamically assign or allocate IP addresses. Static manually assigns permanent address; dynamic assigns different address everytime a device connects to a network; automatic assigns 'permanent' address for a device automatically.

**Subnetting** breaks large, single networks into smaller subnetworks/subnets. Makes netowkr routing efficient since traffic will travel a shorter distance/through less paths to destination. Subnet masks identify subnets to allow packet routing to correct place.

**Automatic Private IP Addressing (APIPA)** allows computers to self-configure IP address and subnet mask automatically when DHCP server is unavailable. Usually the device can reach other network devices, but not the internet.

#### NAT
**Network Address Translation (NAT)** maps multiple local private addresses to a public address prior to transferring info. Multiple devices use a single IP address, and packets are routed to all devices without revealing their private IP addresses. Intermediary between private network and internet.

**Media Access Control (MAC) Address** physical address of each device on the network. E.g. 00:00:5e:00:53:af
WiFi, bluetooth, and ethernet use MAC addresses. Unique address (UAA) assgined by manufacturer, but can be overridden with locally assigned one (LAA).

*MAC handle physcial computer-to-computer connections, whereas IP addresses handle logical network connection routes.*

## Network Models, Standards, Protocols, and Ports
2 basic types:

1. **OSI** - Open Systems Interconnection conceptual model used to describe the functions of a networking system. 
7 layers: 
- application: users interact directly with software
- presentation: ensures data is in a useable format (encryption occurs here)
- session: controls flow of info between different computers 
- transport: manages delivery and error checking of packets (uses TCP)
- network: interprets addresses and directs path data takes
- data link: defines format of data on network (corrects errors from physcial layer)
- physical: electrically/optically transmits raw, unstructured data over a physical medium

2. **TCP/IP** - Transmission Control Protocol/Internet Protocol allows computers to communicate on a network. Based on the OSI model.

#### Standards
These define rules for data communications needed for interoperability of networking tech/processes.

Dejure/Formal - developed by industry/govt (e.g., HTTP, HTML, IP, Ethernet 302.3d)
Defacto - marketplace domination/practice (e.g., Windows, QWERTY keyboard)

#### Protocol
Set of rules that determines how data is transmitted between devices in the same network. 1,000s of different protocols, but all can be categorized as performing one of three actions:

1. Security
2. Communication
3. Network management

**TCP/IP Suite** collection of protocols which provide a complete networking solution.
![TCP/IP Suite!](/Networking/TCPIP.png)

#### Ports and Sockets
**Ports** are the first and last stop for info sent across a network. Always has associate protocol which leads to application. Port numbers do not change.

**Socket** is a two-way comm channel. A socket is made up of:
- Source IP
- Protocol
- Port number
- Destination IP

## Wireless Networks and Standards
Radio waves for data transmission.

**WPAN** connects devices within the limited range of an individual person. 802.15 standard.
**WLAN** use WiFi signals to connect devices within home, office, small business. 802.11 standard.
**WMAN** spans a geographic area greater than 100m, easy to extend. 802.16 standard.
**WWAN** spans regional, nationwide, or global coverage. 802.20/802.22 standard.

#### Protocol Table
![Ports and their protocols!](/Networking/PortsProtocol.png)