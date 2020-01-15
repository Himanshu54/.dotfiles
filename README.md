### I use arch btw.

Steps involved in installing arch linux.

- Assumptions:
    
    - Live OS is available and able to connect to internet.
1. Creatng Partition
    ```bash
    $ fdisk -l
    
    Disk /dev/sda: 40 GiB, 42949672960 bytes, 83886080 sectors
    Disk model: VBOX HARDDISK   
    Units: sectors of 1 * 512 = 512 bytes
    Sector size (logical/physical): 512 bytes / 512 bytes
    I/O size (minimum/optimal): 512 bytes / 512 bytes
    Disklabel type: dos
    Disk identifier: 0xffa9e3c6

    $ fdisk /dev/sda
    ```
    create a primary partion. Lets assume ```/dev/sda1```

    Format partition as ext4.
    ```bash
    $ mkfs.ext4 /dev/sda1
    ```
2. Mount partitions.
    ```bash
    $ mount /dev/sda1 /mnt
    ```
    In case you have a partition for home, usr etc.
    ```bash
    $ mkdir /mnt/home 
    $ mount /dev/sda2 /mnt/home
    ```
3. Install essential packages [ along with editor and network manager ].
    ```bash
    $ pacstrap /mnt base linux vim networkmanager
    ```
4. Configurations.
    
    define your partition mounts.
    ```bash
    genfstab -U /mnt >> /mnt/etc/fstab
    ```
5. Locale, Network - hostname & hosts , Time updates
6. Bootloader 
    ```bash
    $ pacman -S grub
    $ grub-install --target=i386-pc /dev/sda
    $ grub-mkconfig -o /boot/grub/grub.cfg
    ```
7. exit from chroot and reboot.


### To i3 and beyond.

```bash
$ pacman -S xorg-xinit xorg i3
```
- chose i3wm 
- set .xinitrc , i3 configs [ in this repo]


```bash
$ paccman -S rxvt-unicode rxvt-unicode-terminfo 
# copy .Xdefaults from here.
$ xrdb -merge .Xdefaults
```

