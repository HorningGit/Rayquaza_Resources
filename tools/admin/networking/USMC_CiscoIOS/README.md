# Cisco IOS Notes

## Configuring Routes
___
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
___
#### EIGRP
```
Router(config)# router eigrp <Autonomous System Number>
Router(config)# network <IPv4 Address> <Wildcard Mask>
Router(config)# no auto-summary
Router(config)# no passive-interface <Interface>
```
