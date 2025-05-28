# lfs

VirtualBox, minimalistic lnux, iso downlaod, setup, partitioning, ubuntu/debian, arch..

archlinux
https://archlinux.org/download/ 
select closest country 
or debian 
,
choosed debian, iso from 42Yerevan born2beroot, base memeory 8192, 20gb, 4 + cores, connected in storage to port 0, as host 
added in storade new disk vdi, dynamical, 30gb as sdb, connected to port 1, for lfs,
manula disk partitioning sda(host), 3 partitions.
Создайте новую таблицу разделов
В появившемся меню выберите Create a new empty partition table → Yes.

Сделайте три раздела на /dev/sda

/boot: Free space → Create a new partition → 500 MB → Primary → Beginning → Use as Ext4 → Mount point /boot → Bootable flag on → Done

swap: Free space → Create a new partition → 4 GB → Primary → Beginning → Use as swap area → Done

/: Free space → Create a new partition → оставшийся объём → Primary → Beginning → Use as Ext4 → Mount point / → Done

Закончите разметку
После того как все три раздела созданы, выберите Finish partitioning and write changes to disk → Yes.
, sdb оставляем свобпдным и не тронутым.

продолжаем установку дебиан.
