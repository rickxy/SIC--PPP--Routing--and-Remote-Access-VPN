# SIC--PPP--Routing--and-Remote-Access-VPN
SIC: PPP, Routing, and Remote Access VPN

Addressing Table

![0](https://user-images.githubusercontent.com/36708000/136677331-3b921250-70fc-4606-a10e-635cfbce59f5.png)

Note: All device console passwords are cisco. All device enable passwords are class.

Step 1 Configure HDLC on router Secure.

Configure the WAN link from router Secure to ISP_1  using HDLC encapsulation.

Step 2 Configure PPP to connect HQ to ISP_1.

Configure the WAN link from router HQ to ISP_1  using PPP encapsulation and CHAP authentication.

Create a user ISP_1 with the password of cisco123.

Step 3 Configure eBGP routing.

a.  Configure router HQ with eBGP routing.

Configure HQ to peer with ISP_1.

Add only HQ 10.1.1.0/24 internal network to BGP.

b.  Configure router Branch with eBGP routing.

Configure Branch to peer with ISP_1.

Add the Branch internal network to BGP

Step 4 Configure GRE Tunneling.

a.  Configure router HQ with a tunnel interface to send IP traffic over GRE to Branch.

Configure Tunnel 1 with appropriate addressing information.

Configure the tunnel source with the local exit interface.

Configure the tunnel destination with the appropriate endpoint IP address.

b.  Configure router Branch with a tunnel interface to send IP traffic over GRE to HQ.

Configure Tunnel 1 with appropriate addressing information.

Configure the tunnel source with the local exit interface.

Configure the tunnel destination with the appropriate endpoint IP address.

Step 5 Configure OSPF Routing.

The Branch LAN must have connectivity to the HQ LAN. Configure OSPF across the GRE tunnel.

Configure OSPF process 10 on the Branch router.

Backup should advertise the LAN network via OSPF.

Backup should be configured to form an adjacency HQ over the GRE tunnel.

Disable OSPF updates on appropriate interface(s).

Step 6 Configure OSPF Routing.

The HQ LAN must have connectivity to the Branch LAN. Configure OSPF across the GRE tunnel.

Configure OSPF process 10 on the HQ router.

HQ should advertise both LAN networks via OSPF.

HQ should be configured to form an adjacency with Branch over the GRE tunnel.

Disable OSPF updates on appropriate interface(s).

Step 7 Connectivity.

a.  Verify full connectivity from Main_PC1 to the Web_Server in the Secure network.

b.  Verify full connectivity from Teleworker1 to Web_Server in the Secure network.
