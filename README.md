## This is experiment to write simple ansible script for Raspberry Pi.

# Issues

- By default Raspberry does not have any `Default Gateway` configuration. Run `sudo route add default gw <gateway ip address>`
```
sudo route add default gw 172.30.0.20
```

- Also I suggest to configure enthenet in such way
[`172.30.0.20` is our internal default gateway](./imgs/network-preferences.png)