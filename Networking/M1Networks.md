# Networks

### Types/Typologies
Connected computing devices and an array of IoT devices that communicat with each other.

#### Network types
**PAN**: Personal Area Network. Wired or wireless, enables comms between devices around a physical person (e.g., bluetooth keyboard)
**LAN**: Local Area Network. Limited to a local area like a single building or office. Group of computers/peripheral devices sharing a connection to a server. Network devices can share resources (e.g., printers, storage). Cables, switches, routers are required.
**MAN**: Metropolitan Area Network. Larger area than a LAN, usually city blocks, university campuses, or entire cities. 
**WAN**: Wide Area Network. Large geographic network, internet itself is a WAN.
**WLAN**: Wireless LAN. Links 2 or more devices to form a LAN. Gateway device can give access to wider internet. (e.g., gaming consoles)

#### Topology
- Defines a network's structure (physical layout and virtual shape)
- Chosen by specific needs of group

**Physical topology** descrbes how devices are physically connected.
1. Star - central computer acts as hub, devices connect with single cable (backbone cable).
2. Ring - connect all devices in circular ring pattern and data can only flow clockwise.
3. Bus - connect all devices with single cable/transmission line. Simplest and used for small networks.
4. Tree - combine bus and star. E.g., University campus building has star network, whole campus connected via bus.
5. Mesh - connect all devices on network to eachother. Dynamic routing chooses fastest route to recipient. Called dynamic routing. NOT used in LAN. Internet itself is mesh.

**Logical topology** describes how data flows across physically connected devices

#### Virtual Networks
Software-based networks. Control/direct comms across existing physical networks. 
- Any physical network location can be assigned to a VN
- Makes network admin easier, increase network efficiency, improve security

**Virtual Private Network (VPN)** creates private network connection across public networks by encrypting traffic, disguise location, safeguard data.

**Virtual Local Area Nerwork (VLAN)** is a software-based network made up of locations from other networks. This breaks networks into smaller groups and allows users to be located anywhere. Useful when sharing data securely.

### Wireless
Users connect without cables.

**WPAN** - for nearby peripheral devices, such as a bluetooth keyboard, RFID device, NFC for short-range data transfer, IrDA for line-of-sight connectivity.

**WLAN** - for mobile extension of wired networks. WiFi (802.11 a/b/g/n/ac), WiFi 6 (802.11 ax) standards.

**WMAN** - for fixed wireless between internet and homes/businesses. Proprietary, IEEE 802.16, WIMAX standards.

**WWAN** - for mobile access to internet from outdoor areas. LTE, LoRaWAN, cellular (4g/5g) standards.

### Wired
Most computer networks depend on cables/wires.

Older internet connections used phone, or transmitted data digitally on phone lines (DSL).

Newer internet connectins used cable, fiber optic (fastest), satellite, or cellular.

**Cables**
- Hard drive cables: connects a CPU to storage. SATA, IDE, SCSI
- Network cables: connects devices to transmit data. Coaxial, fiber optic, ethernet
- Serial cables: transferring power/data slowly over distance
- Video cables: transmits video signals. VGA, HDMI, DisplayPort
- Multipurpose cables: fast data/power transfers. USB, lightning, thunderbolt

Network cables are determined by topology. protocol, and size of the network.

**Coaxial** originally developed to TVs to home antennas. Now used to connect internet to home modems. Inner copper surrounded by shielding, supports greater cable length between devices, 10Mbps capacity, uses DOCSIS standard. RG6, RG59, F types.

**Fiber optic** work over long distances (WAN) without much interference, handles heavy traffic volume, very high speeds. Single mode carries 1 light path, typically a laser, long distance; multimode carries multiple light paths using LED, multiple signals.
LC, ST, SC connector types.

**Ethernet** contain 4-pairs of twisted wires to reduce interference. Shielded and unshielded. Category numbers increase with speed and bandwidth. RJ11, RJ45 connector types. 

### Wired/Wireless comparison
![Network Comparison!](/Networking/wiredWireless.png)

### Latest network trends
WiFi 6 gives faster throughput speeds, better battery life, less congestion

Network Analytics uses AI/ML for insight and debugging

Network Automation for automating operations.

SASE (secure access service edge) addresses combined network/security challenges.

### Pros/Cons of Network Types
