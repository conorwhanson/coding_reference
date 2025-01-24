# Module 4: Local Storage Devices
**Memory** - RAM and ROM are computer chips that store data.
- RAM is volatile, short-term, deletes data if shut off, but faster data fetching. Background processes and clipboard are examples.
- ROM is non-volatile, long-term, keeps data if shut off, but slower fetching. Computer booting is an example.

**Hard Drive (HD, HDD)**
- Large storage capacity with spinning magnetic plates. Can overheat. These were standard for a long time.

**Solid-state Drive (SSD)**
- Fastest storage option, no moving parts, doesn't need power to retain data, much faster than HDs. Newest method of storage.

**Solid-state Hybrid Drive**
- Integrate SSD and HD and switches based on user activity.

**Optical Disk Drive (ODD)**
- DVDs, Blu-rays, CDs, etc. Reflect light with laser to read data.

**Flash Drives**
- Store data on SSD,, low energy consumption. Small, fast, inexpensive; smaller capacity than HDDs or larger SSDs.

### Hybrid Disk Array
Pysically combine multiple SSD and HDD devices into array of drives working together to achieve the fast performance of SSDs and lower costs of HDDs. Small, fast, low-cost setup; performance concerns and complex to maintain.

### Direct Attached Storage (DAS)
One or more storage units within external enclosure which is directly attached to the computer accessing. External drives are portable DASs.

**Ephemeral storage** is where data is deleted on restart.
**Persistent Storage** keeps data on restart. Most drives are per

### Redundant Array of Independent Disks (RAID)
Spreads data across multiple drives working in parallel. 

**RAID 0/Striping** stores data in blocks. Fast, 100% usable-disk capacity, but if one drive fails all data is lost.

**RAID 1/Mirroring** copies & stores data twice across 2+ drives. Cuts usable space, but ensures data is secure no matter what.

**RAID 10/Combination** combines RAID 1 and RAID 0. Fast, fault tolerant.

**RAID 5/Striping with parity** is most common. Splits data into blocks to store across 3+ drives. Fast, fault tolerant, if 1 drive fails no data is lost.

### Hosted Storage and Sharing
**Storage as a Service (STaaS)** companies sell storage (i.e., cloud).

**Workgroup/Homegroup** is a group of computers on a SOHO network that share folders.

**Repositories** allow code drafts to be saved, versioned, and tracked.

**Active Directory Domain Service (Microsoft)** manages domain elements like user and computers. Can be managed remotely.

**Network drives** are drives on a network and shared with selected users.

### Network Storage Types
**Storage Area Network (SAN)** combines servers, storage systems, switches, software, and services to proved secure and robust data transfers. Better app performance, centrally consolidated, and offsite for data protection.

**Network Attached Storage (NAS)** acts as a hard drive on a local network.

### Cloud-based storage
Files and apps are stored and engaged with via the internet. Cloud companies manage data centers to ensure funcionality and security.

**Public Cloud** provides offsite storage for internet users.
**Private Cloud** provides collab and access to private network users.
**Hybrid Cloud** a mixture. Public sharing and restricted private areas.

### File, Block, and Object Storage
**File** storage saves all data in a single file and is organized in a hierarchical path of folders/subfolders. This is familiar and easy to use for end users.

**Block** storage splits data into fixed blocks and stores them with unique identifiers. Default storage for data that is frequently updated; fast, reliable, and easily changed; no metadata, is not searchable, and is expensive; used primarily in databases and email servers.

**Object** storage divides data into self-contained units stored at the same level (i.e., non-hierarchical). Uses metadata for fast searching; each object i uniquely identified; requires an API to access/manage objects; good for large amounts of unstructured data; important for AI, ML, and BigData.

### Storage Gateway
**File Gateway** is a file server in the cloud that stores data files using the S3 (Simple Storage Service; block data into 'buckets'), NFS (Network File System; server-to-server file sharing), and SMB (Server Message Block; file and print sharing for network users) protocols.

**Tape Gateway** is a backup server in the cloud. S3, Glacier, or Glacier Deep Archive.

**Volume Gateway** uses the iSCSI protocol to allow data transfer between cloud an on-prem. Stored mode (S3 backups of all locally stored content) and Cached mode (only keeps frequently used data on prem).

