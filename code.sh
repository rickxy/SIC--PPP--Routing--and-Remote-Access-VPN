//////////Router: Secure / Storage / OffSite
//////////////User Access Verification

cisco  <~~~~Password is: cisco
en
class    <~~~~Password is: class
conf ter
int s0/0/0
encapsulation hdlc


//////////////Router: HQ / Corp / Main
/////////////User Access Verification

cisco  <~~~~Password is: cisco
en
class    <~~~~Password is: class
conf ter
username ISP_1 password cisco123
int s0/0/0
encapsulation ppp 
ppp authentication chap 
exit

router bgp 65530
network 10.1.1.0 mask 255.255.255.0
neighbor 209.165.200.242 remote-as 65500
exit


interface tunnel 1
ip address 192.168.1.1 255.255.255.248
tunnel source s0/0/0
tunnel destination 209.165.201.17
exit


router ospf 10
network 10.1.1.0 0.0.0.255 area 0
network 10.1.2.0 0.0.0.255 area 0
network 192.168.1.0 0.0.0.7 area 0
passive-interface g0/1
passive-interface g0/2

//////////////Router: Branch / Remote / Backup
//////////////User Access Verification

cisco  <~~~~Password is: cisco
en
class    <~~~~Password is: class
conf ter
router bgp 65532
network 10.2.1.0 mask 255.255.255.0
neighbor 209.165.201.18 remote-as 65500
exit 

interface tunnel 1
ip address 192.168.1.2 255.255.255.248
tunnel source s0/0/1
tunnel destination 209.165.200.241
exit

router ospf 10
network 10.2.1.0 0.0.0.255 area 0
network 192.168.1.0 0.0.0.7 area 0
passive-interface g0/1