#!/bin/bash

# echo -e "\n\n-------------"
# echo        "Pushing Music"
# echo        "-------------"
# rsync --size-only -avsh --progress /mnt/hdd/Pictures/ 192.168.2.22:/home/juggy1233/Pictures/


# echo -e "\n\n----------------"
# echo        "Pushing Pictures"
# echo        "----------------"
# rsync --size-only -avsh --progress --delete --exclude={/.sync/*,/.sync} /mnt/hdd/Music/ 192.168.2.22:/home/juggy1233/Music/


# echo -e "\n\n---------------------------------"
# echo        "Pushing Minecraft Servers"
# echo        "---------------------------------"
# rsync --size-only -avsh --progress --delete /home/juggy1233/Documents/minecraft/servers/ 192.168.2.22:"/home/juggy1233/mc/servers/"


# rsync -a --progress --exclude={ .android,.cache,.minecraft,.steam,.w3m,.wine,.local/share/Steam,.local/share/Terraria} /home/juggy1233/ /mnt/hdd/backups/manjaro/juggy1233/
rsync -a --progress --exclude-from=/home/juggy1233/scripts/backup_ignore /home/juggy1233/ /mnt/hdd/backups/manjaro/juggy1233/
# rsync -av --progress --delete homeserver:/home/juggy1233/minecraft/ /mnt/hdd/backups/bigbois_server
