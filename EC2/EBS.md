## EBS

- EBS (Elastic Block Store) vloume is a network drive that can be attached to instances while they run.
- It allows your instances to persist data, even after their temination.
- can be mounted to one insatnce at a time.
- Specific to an AZ
- Its a network drive (ie not a physicial drive)
  - it uses the network to communicate the instance, so theremight be a bit laterncy.
  - Can be detached from an EC2 instcne and attached to another one quickly

- Its locked to AZ (Snapshots can be used to move the EBS from one AZ to other)
- Has providioned capacity (Size and IOPS)
- **Delete on termination**

## EBS Snapshots

- Backup(Snapshot) of your EBS volume at any point of time.
- Not necessary to detach the the vloume but advisable.
- Copy of snapshots across AZ or region.

- EBS Snapshot Archive
  - Move a snapshot to archive tier which is 75% cheaper
  - Takes 24 to 72 hpurs to restore

- Recycle Bin for EBS Snapshots:

  - seting up rules to retain deleted snapshots and recover them from accidental deletion
  - retenction can be specified from day to year

- Fast snapshot restore (FSR)
  - Force full initiallization of snapshot to have no latency on the first use (high cost)


## EC2 instance Store - *Additional Reading*

- EBS are network drives. they are good for limited performace
- For hig performace EC2 instance store can be used. 
- It is a hhigh oerformance hardware disk
- Betwe I/O
- data is lost if instance is stoped.
- Good for cache/buffer/scratch data etc
- backup and risk managemnt should be perfromed.

## EBS Volume types

### General Purpose SSD

- cost effective storage, low latency.
- system boot volumes, virtua; desktops, Dev and Test enviorments.
- 3000 - 16000 IOPS


### Provisioned IOPS

- Critical business applications with sustained IOPS performance
- Applications that need more than 16000 IOPS
- Great for database workloads
- Supports multi attach(Attach same ebs volume to multiple ec2 instances in same AZ, upto 16 instances at a time)

### Hard Disk Drives (HDD)

- cannot be a boot volume
1. throughput optimiszed HDD
   - Big data, data warehouses, log processing
   - Max througput 500MiB/s - max IOPS 500

2. Cold HDD:
    - for data that is infrequently accessed
    - scenarios where lowest cost is important
    - Max throughput 250 MiB/s -max IOPS 250











