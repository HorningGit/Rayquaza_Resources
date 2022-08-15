# Cisco IOS Notes
___

## Configuring Routes
#### Static Route
```
Router(config)# ip route <Destination Network Address>
```
  - **Can be either:**
    - Next hop is the interface (Subnet Mask)
    - IP of the next destination (Next Hop IP) or leaving interface!
___
#### Default Route
```
Router(config)# ip route 0.0.0.0 0.0.0.0 <Next Hop>
```
- Tells router to send any traffic out.
___
## Routing Protocols
#### EIGRP
```
Router(config)# router eigrp <Autonomous System Number>
Router(config-router)# network <IPv4 Address> <Wildcard Mask>
Router(config-router)# no auto-summary
Router(config-router)# no passive-interface <Interface>
```
___
## Other Configurations
#### GRE Tunnel (VRF)
```
Router(config)# vrf definition <Name>
Router(config-vrf-af)# address-family ipv4
Router(config-vrf)# vrf fo



Router(config-vrf)# network <IPv4 Address> <Wildcard Mask>
```

#### Virtual Route Forwarding (VRF)
```
Router(config)# vrf definition <Name>
Router(config-vrf-af)# address-family ipv4

Router(config)# router eigrp <Autonomous System Number>
Router(config-router)# address-family ipv4 vrf <Name> autonomous-system <ASN>
Router(config-router)# network <IPv4 Address> <Wildcard Mask>
```
