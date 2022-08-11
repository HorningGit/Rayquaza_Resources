## Cisco IOS Notes

#### Static Route
```
Router(config)# ip route <Destination Network Address>
```
- Next hop is the interface (Subnet Mask)
- IP of the next destination (Next Hop IP) or leaving interface!

#### Default Route
```
Router(config)# ip route 0.0.0.0 0.0.0.0 <Next Hop>
```
- Tells router to send any traffic out.
