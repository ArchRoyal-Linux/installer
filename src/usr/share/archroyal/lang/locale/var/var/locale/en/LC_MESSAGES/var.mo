��    "      ,  /   <     �  	     
     
     
   $     /     ;     C     P     ]  
   j  
   u     �     �     �     �     �     �     �     �     �               &     7     @     V     l  	   u          �  	   �  	   �     �  :   �  �   �  �   �  �   <  �   �  ^   �  \     6   _  l   �  @   	  x   D	  t   �	  .   2
  �   a
     X  �   �  �   d  �   �  �     g     X   �  p   �  �   K  �   �  �   �  �   +    �  R   �  T   "  l   w  6   �  E     =   a  �   �                	   
                                                                           "                             !                                  deluser_var drive_var drive_var1 drive_var2 drive_var3 efi_mnt_var efi_var encrypt_var0 encrypt_var1 encrypt_var2 f2_err_var fs_err_var gtk3_var install_var manual_new_part_var manual_part_var0 manual_part_var1 manual_part_var2 manual_part_var3 manual_swap_var mnt_var0 mount_warn_var part_confirm_var root_confirm_var root_var software_confirm_var0 software_confirm_var1 sudo_var sudo_var1 user_edit_var user_shell_var user_var0 user_var1 vfat_var Delete user: $user? 

 $a Removes user account from system WARNING! Will erase all data on drive! 

 $a Location: /dev/$DRIVE 
 $a Size: $drive_gigs GiB 
 $a Filesystem: $FS 
 $a Would you like to continue? WARNING! Will erase all data on drive! 

 $a Location: /dev/$DRIVE 
 $a Size: $drive_gigs GiB 
 $a Filesystem: $FS 
 $a Swap space: $SWAPSPACE MiB 
 $a Would you like to continue? WARNING! Will erase all data on drive! 

 $a Location: /dev/$DRIVE 
 $a Size: $drive_gigs GiB 
 $a Filesystem: $FS 
 $a Swap space $SWAPSPACE MiB 
 $a Boot: UEFI 
 $a Would you like to continue? WARNING! Will erase all data on drive! 

 $a Location: /dev/$DRIVE 
 $a Size: $drive_gigs GiB 
 $a Filesystem: $FS 
 $a Boot: UEFI 
 $a Would you like to continue? The EFI partition detected at $esp_part has not been mounted. 

 Mount EFI boot partition now? A mounted EFI system has been detected at $esp_part 

 $a Would you like to enable EFI boot? Warning this will encrypt /dev/$DRIVE! 

 $a Continue? Please enter a new password for /dev/$DRIVE 

 $a Note this password is used to unencrypt your drive at boot New /dev/$DRIVE password again. 

 $a Encryption password again: $error You must create a separate boot partition in order to use an $FS filesystem. 

 $a Returning to partition menu... $error A separate '/boot' partition must be setup when using an $FS filesystem. 

 $a Returning to partition menu... Install $DE gtk3? 

 $a (experimental version) Begin installing Arch-royal Linux base system onto /dev/$DRIVE?

 $a Download size: $software_size 
 $a Estimated install time: $down_min minutes.
 $a Estimated speed: $connection_speed $connection_rate 
 $a Packages to add: 

base${base_install} Would you like to create a new mount point? 

 $a Partition: /dev/$part 
 $a Size: $part_size 

 Edit to create new mount point Partition already mounted. 

 $a Mount point: $part_mount 
 $a Partition: /dev/$part 
 $a Size: $part_size

 Edit to create new mount point Would you like to unmount partition: /dev/$part and remove $part_mount mount point? 

 $a Note will unmount all partitions mounted under Warning: partition: /dev/$part is set as your root filesystem, this will erase all mount point under it. 

 $a Are you sure you want to continue? Would you like to edit the partition scheme now? 

 $a Drive: /dev/$part 
 $a Size: $part_size 

 Edit partition scheme? -Don't forget to 'write' changes Would you like to remove SWAP filesystem from /dev/$part? 

 $a Select 'yes' to remove SWAP filesystem. Select a new mount point for /dev/$part: 

 $a Select 'custom' to create new mount point Warning: disk /dev/$part contains mounted partitions. 

 $a Would you like to unmount and edit partition scheme? Confirm creating mount point? 

 $a Mount point: $mnt 
 $a Partition: /dev/$part 
 $a Size: $part_size 
 $a Filesystem: $FS 

 Write changes to disk? Confirm creating mount point? 

 $a Mount point: '/' Root File System 
 $a Partition: /dev/$part 
 $a Size: $part_size 
 $a Filesystem: $FS 

 Write changes to disk? Create a new root mount point: 
 $a Note: Root mount point must be created first. 

 $a Partition: /dev/$part 
 $a Size: $part_size 

 Create new root mount point? Add the following packages to install list? 

 $a Number of packages: $software_int 
 $a Download size: $software_size 
 $a Packages to add: 

$software_list Proceed with installing software? 

 $a Number of packages: $software_int 
 $a Total download size: $software_size 
 $a Estimated install time: $down_min minutes 
 $a Estimated speed: $connection_speed $connection_rate 
 $a Packages to install: 

$download_list Enable sudo privilege for $user? 

 $a Enables administrative privilege for $user. Disable sudo privilege for $user? 

 $a Disables administrative privilege for $user. Edit user:
 $a Username: $user
 $a Login Shell: $user_sh
 $a Full Username : $full_user
 $a Sudo User: $sudo Select a new shell for $user:
 $a Set user login shell Please enter a new login password for: $user 

 $a Set $user password Re-enter login password for: $user 

 $a $user password again The EFI system mounted at $esp_part does not contain a valid vfat filesystem. 

 $a Would you like to format and create new vfat system? 