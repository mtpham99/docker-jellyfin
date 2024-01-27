# My Jellyfin Docker Setup

My Jellyfin w/ Nvidia GPU setup using docker running on a macvlan/ipvlan network to avoid host port clashes.

Includes additional network bridge setup to allow host-container communication.

Be sure to read the links under [resources](#resources). They contain install/configuration instructions.

### Dependencies

Tested on openSUSE Tumbleweed.

1) docker (tested 24.0.7_ce-2.1)
2) docker-compose (tested 2.24.1-1.1)
3) nvidia-container-toolkit (tested 1.14.4-1)
4) nvidia drivers (tested 545.29.06-18.1)
5) cuda (tested 12.3)

### Resources
1) [Jellyfin Docker Docs](https://jellyfin.org/docs/general/installation/container/)
2) [Jellyfin Docker Nvidia Docs](https://jellyfin.org/docs/general/administration/hardware-acceleration/nvidia#configure-with-linux-virtualization)
2) [Nvidia Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)
3) [Macvlan Setup for host-container access](https://kcore.org/2020/08/18/macvlan-host-access/)
4) [Ipvlan vs Macvlan Info](https://hicu.be/macvlan-vs-ipvlan)
