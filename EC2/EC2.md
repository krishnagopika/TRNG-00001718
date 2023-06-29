# EC2

Elastic compute cloud --> *Infrastructure as a Service*

- Renting VM (EC2)
- Storing data on virtual drives (EBS)
- Distributing loas accross machines (ELB)
- Scaling the services using an auto-scaling group (ASG)


## EC2 sizing & configuring

1. OS: linux windows, mac
2. compute power and cores (CPU)
3. random access memory (RAM)
4. Storage space
   - Network Attached (EBS & EFS)
   - Hardware (EC2 Instance storage)
5. Network card : speed of the card, Public IP
6. Firewall rules( security groups)
7. Bootstrap script (configure at the first launch) : EC2 user data (runs with root user (sudo(Superuser do) rights)).
    - boostrap means launching commands when the instance first starts
    - EC2 user data can be used to:
       - Install updated
       - Install software
       - Downloading common files from the internet etc.  


Examples:

1. t2.micro 1cpu, 1GiB, EBS, low to moderate (750 hours free per month, upto 30GB of EBS storage)


EC2 Instance types:

[EC2 instance types](https://aws.amazon.com/ec2/instance-types/)

Instance naming: t2.micro

t : instance type
2: generation (AWS improved over time)
micro: size within instance class

1. General Purpose:

   - great diversity of work loads
   - balance among compute, memory and networking

2. Compute optimized
  - compute intensive tasks that require high performace
  - Batch processing
  - Media transcoding
  - High performace web servers
  - High performace computing
  - Scientific modeling and Machine learing
  - Dedicated gaming servers 

3. Memory Optimized (RAM)
  - Fast performance for workloads that process large data sets.
  - use cases:
     - High performace dbms
     - BI


4. Storage Optimized
   - Great for storage intensive taks that require high, sequenctial read and write access to large data sets on loacal storage.
   - Use cases:
      - High performace online transactions
      - DMS
      - Cache for in-memory databases
      - Distributed systems


### Security groups


- Network security in AWS
- Control how traffic is allowed in or out of the ec2 instances (inbound and outbound)
- only contain allow rules
- reference y IP or by security group.
- one security group can be attached to multiple instances and an instance can have multiple security groups
- locked down to region/VPC combination
- SSH in seprate security group


**Most common ports:**

- SSH : 22 (linix)
- FTP : 21
- SFTP : 22
- HTTP : 80
- HTTPS :443
- RDP : 3389 (windows)


### SSH

- MAC
- Linux
- Windows >=10

Note: Windows <10 uses putty, EC2 insatance connect.

SSH with MAC and linix: 

```
ssh -i filename.pem ec2-user@publicip
``` 

Note: chmod 0400 filename.pem to resolve the unprotected file error.

SSH with Windows 10:
- powershell
  
```
ssh -i filename.pem ec2-user@publicip
``` 

Note: if there are any permission issues rectify security setting role in pem file properties


- EC2 Instance connect can be used to connect to ec2 instance in aws.


**EC2 roles:**

- Permissions to an EC2 instance


Note: Never prowide aws configure credentials to EC2 instnce because nayone wo connect to the instance can get your credentaials.

**EC2 instances purchasing options:**

- On Demand Instances : short load, predictable pricing, pay by second (linux and windows per second after a minute. others biling per hour, highest cost but no upfront payment, no longterm commitment)
- Reserved ( 1 & 3 years)
   - Reserved Inatnces - long workloads
   - Convertable Reserved Instances - long workloads with flexible insatnces
   - upto 72% discount compared to On-demand
   - Can specify instance attributes (Instance Tyoe, Region, Tenancy, OS) 
   - no upfront, partial upfront, app upfront
   - Reserved Instance scopes : Regional or Zonal
   - Convertable: chnage instance properties 
- Savings plans (1&3) years : commit to an ammount of usage, long workload
- Spot Instances: shprt workloads, cheap, can loose instances (less reliable)
- Capacity reservations: reserve capacity in a specific AZ for any duration



























