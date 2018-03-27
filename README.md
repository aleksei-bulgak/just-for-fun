## This is experiment to write simple ansible script for Raspberry Pi.
Idea of this project was to simplify raspberry Pi OS reinstallation. From time to time some team members switch it off just by turn off power and in some cases this causes OS crashes and corruptions. 

And each time to configure it again was a real pain. 

As a result we wrote simple ansible script that:
- installs chrome
- disables option that switch off a screen when mouse is in inactive state
- creates cron job that switches off raspberry at 7PM

### Issues

- By default Raspberry does not have any `Default Gateway` configuration. 
Run this command `sudo route add default gw <gateway ip address>` to set it up.
```
sudo route add default gw 172.30.0.20
```

- Also I suggest to configure ethernet in the following way:

![`172.30.0.20` is our internal default gateway](./imgs/network-preferences.png)

- [Chec this article to get more info about cec-client configuration](https://blog.gordonturner.com/2016/12/14/using-cec-client-on-a-raspberry-pi/)
- [Another article with good explanation how to use cec-client](https://www.endpoint.com/blog/2012/11/08/using-cec-client-to-control-hdmi-devices)



#### To run this playbook you need to execute command
```
ansible-playbook -i "hosts" -c local -t <TAGS> main.yaml 

ansible-playbook -i "localhost," -c local -t <TAGS> main.yaml 
```
