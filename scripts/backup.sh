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


# rsync -av --delete --exclude={/juggy1233/.cache/*,/juggy1233/.steam*} /home/juggy1233 /mnt/wd/Legion\ Backup/manjaro
rsync --size-only -av --progress --exclude={juggy1233/.cache,juggy1233/.steam,juggy1233/.local/share/Steam} /home/juggy1233 /mnt/hdd/backups/manjaro
rsync -av --progress --delete homeserver:/home/juggy1233/minecraft/ /mnt/hdd/backups/bigbois_server
