Vim�UnDo� J�4�Uǂ�u9&��߃�*��Z�^T'XB�   &   1		if (!strcmp(".", dir) && ! strcmp("..", dir)) {            1       1   1   1    `�Z   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             `��     �                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��     �                  �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��     �                 �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��     �          	       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        `��     �                void DirFind(char *dir) {     DIR *dp = opendir(dir);   }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        `��     �      
       �             5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                  V        `��     �   	          5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                  V        `��     �                     DIR *dp;         struct dirent *dirp;           if(argc==1)           dp = opendir("./");         else           dp = opendir(argv[1]);       )    while ( (dirp=readdir(dp)) != NULL)     )            printf("%s\n", dirp->d_name);           closedir(dp);  5�_�                 	          ����                                                                                                                                                                                                                                                                                                                                                  V        `��     �             �      	       5�_�   	      
                  ����                                                                                                                                                                                                                                                                                                                                                V       `��     �                    if(argc==1)           dp = opendir("./");         else           dp = opendir(argv[1]);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `��     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       `��     �                       dp = opendir("./");  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       `��     �                       dp = opendir(argv[1]);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `��     �                    closedir(dp);  �                )            printf("%s\n", dirp->d_name);�                )    while ( (dirp=readdir(dp)) != NULL)  �   	                   struct dirent *dirp;�      
               DIR *dp;�      	            DIR *dp = opendir(dir);5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                V       `��     �      	          		DIR *dp;5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                V       `��     �   	   
           5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `��     �               		�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�     �               		}    �               	�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�     �               	�             5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                V       `�	     �   
            &	while ( (dirp=readdir(dp)) != NULL)  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `�
     �               }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�     �                		�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�     �                		printf("%s\n", dirp->d_name);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `�!     �         !      			�              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�3     �         !      			DirFind(dirp->d_name5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�4    �         "      			�         !    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `��     �         "    �         "    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       `��     �         #      8			printf("IN DIR %s, file is %s\n", dir, dirp->d_name);5�_�                           ����                                                                                                                                                                                                                                                                                                                                         "       v   +    `��    �         #      ;			printf("recursing %s, file is %s\n", dir, dirp->d_name);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v   )    `��    �         #      /			printf("recursing %s\n", dir, dirp->d_name);5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                 v   )    `��    �         #      		if (dirp->d_type == DT_DIR) {5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                         2       v   8    `��     �         #      6		if (dirp->d_type == DT_DIR && dirp->d_type != ".") {5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                         2       v   8    `��    �                			DirFind(dirp->d_name);5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                         2       v   8    `��     �         $       �         #    5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                         2       v   8    `��    �                 5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                             `�"     �         #      #include <string.h>5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             `�(    �         #      #include5�_�   &   )           '          ����                                                                                                                                                                                                                                                                                                                                                             `��    �         #      		if (dirp->d_type == DT_DIR) {5�_�   '   *   (       )           ����                                                                                                                                                                                                                                                                                                                                          G       v   M    `�     �         #      K		if (dirp->d_type == DT_DIR && !strcmp(".", dir) && ! strcmp("..", dir)) {5�_�   )   +           *      #    ����                                                                                                                                                                                                                                                                                                                                          G       v   M    `�     �         $      		�         #    5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                          G       v   M    `�     �         $      		if (�         $    5�_�   +   -           ,      .    ����                                                                                                                                                                                                                                                                                                                                          G       v   M    `�     �         $      .		if (!strcmp(".", dir) && ! strcmp("..", dir)5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                v   %    `�%   	 �         &      #		if (dirp->d_type == DT_DIR && ) {5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                                         '       v   0    `�T     �         &      1		if (!strcmp(".", dir) && ! strcmp("..", dir)) {�         &    5�_�   .   0           /      6    ����                                                                                                                                                                                                                                                                                                                                         '       v   0    `�V     �         &      =		if (!strcmp(".", dirp->d_namedir) && ! strcmp("..", dir)) {�         &    5�_�   /   1           0      B    ����                                                                                                                                                                                                                                                                                                                                         '       v   0    `�W     �         &      I		if (!strcmp(".", dirp->d_namedir) && ! strcmp("..", dirp->d_namedir)) {5�_�   0               1          ����                                                                                                                                                                                                                                                                                                                                         '       v   0    `�Y   
 �         &      F		if (!strcmp(".", dirp->d_namedir) && ! strcmp("..", dirp->d_name)) {5�_�   '           )   (      &    ����                                                                                                                                                                                                                                                                                                                                                             `�     �         #       5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                  V        `��     �      	        5��