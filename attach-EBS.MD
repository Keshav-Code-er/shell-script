### Attach EBS volume to running EC2 instance


***NOTE:***

* EBS VOLUME SHOULD BE IN SAME AZ WHERE INSTANCE IS RUNNING.

### Steps

By default you can't able to see the volume in Linux server, we need to do some configuration

* You can check the volume is available or not using below command.

````
lsblk

`````

* Create filesystem from volume.

`````
sudo mkfs -t xfs /dev/xvdf

`````



