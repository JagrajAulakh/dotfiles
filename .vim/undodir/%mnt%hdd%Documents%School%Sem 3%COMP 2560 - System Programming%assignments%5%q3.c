Vim�UnDo� iK�oa����w�Tj	R�j�nНN2��:�ף   )   +		puts("result written to \"result.txt\"");   &   (      2       2   2   2    _�MV   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             _�J     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�J     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�J     �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�J     �             "   
	int p[2];   		pipe(p);       	int c1, c2;   	if ( (c1 = fork()) < 0) {   		perror("Couldn't fork");   		return 1;   	}       	if (c1 == 0) {   		if ( (c2 = fork()) < 0) {   			perror("Couldn't fork");   			return 1;   		}       '		if (c1 == 0 || c2 == 0) { // c1 or c2   			close(p[0]);    			for (int i = 0; i < 5; i++) {   				int r = rand() % 100;   !				write(p[1], &r, sizeof(int));   			}   		}   	}   	else { // parent   		close(p[1]);   		puts("10 random numbers: ");    		for (int i = 0; i < 10; i++) {   				int r;   			read(p[0], &r, sizeof(int));   			printf("%d ", r);   		}   		puts("");   
		exit(0);   	}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�J    �      	   	      	�             5�_�      	                 	    ����                                                                                                                                                                                                                                                                                                                                                             _�J%     �      	         
	pipe(fd);    �      
         	�      
   
    5�_�      
          	          ����                                                                                                                                                                                                                                                                                                                                                             _�J@     �      
         	�         
    5�_�   	              
   	       ����                                                                                                                                                                                                                                                                                                                                                             _�JM     �      
         !		puts("Please supply an argument5�_�   
                 	   '    ����                                                                                                                                                                                                                                                                                                                                                             _�JO     �               '		puts("Please supply a single argument5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�JS     �               	�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�Jl     �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�Jn     �                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�Ju    �               		command = argc[1];5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�J|     �               		char *command = argc[1];5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�J}     �               		char *command = argb[1];5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�J�     �               		�             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�J�     �               !		execlp(command, command, NULL);    �               		�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�J�    �                		execlp5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�L    �               		�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�L(     �               	�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�L+     �               	else if (pid == 0) {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�L-     �               	else {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�L/     �               	else { //parent    �               		�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�Lc     �         !      		�              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�Lj     �         !    �         !    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�Lj     �         "      		close(fd[1]);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�Lj     �         "      		close(fd[2]);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�Lj    �         "      		close(fd[1]);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�Ly    �          #      			�          "    5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                             _�L�     �         $      		�         #    5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                             _�L�     �         %    �         %    5�_�   !   #           "      
    ����                                                                                                                                                                                                                                                                                                                                                             _�L�     �         &      #include <unistd.h>5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                             _�L�     �          &      		int output_file = 5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                         *       v   0    _�L�     �          &      >		int output_file = open(const char *__file, int __oflag, ...)5�_�   $   &           %      '    ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�L�     �          &      8		int output_file = open("result.txt", int __oflag, ...)5�_�   %   '           &      @    ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�L�     �          &      @		int output_file = open("result.txt", O_CREAT|O_TRUNC|O_WRONLY)5�_�   &   (           '   "       ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�L�    �   !   #   &      			printf("%c", c);5�_�   '   )           (   #       ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�L�     �   #   %   '      		�   #   %   &    5�_�   (   *           )   $   (    ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�L�    �   #   %   '      *		puts("result written to \"result.txt\");5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�M     �       "   (      		�       "   '    5�_�   *   ,           +   #       ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�M     �   #   %   )      			�   #   %   (    5�_�   +   -           ,   &   (    ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�M     �   %   '   )      +		puts("result written to \"result.txt\"");5�_�   ,   .           -   &   4    ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�M     �   %   '   )      9		puts("result written to \"result.txt\", size of %d\n");5�_�   -   /           .   &   9    ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�M     �   %   '   )      @		puts("result written to \"result.txt\", size of %d bytees\n");5�_�   .   0           /   &       ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�M     �   %   '   )      ?		puts("result written to \"result.txt\", size of %d bytes\n");5�_�   /   1           0   &   ?    ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�M   	 �   %   '   )      A		printf("result written to \"result.txt\", size of %d bytes\n");5�_�   0   2           1   &       ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�MN     �   %   '   )      G		printf("result written to \"result.txt\", size of %d bytes\n", size);5�_�   1               2   &   G    ����                                                                                                                                                                                                                                                                                                                               '          6       v   <    _�MU   
 �   %   '   )      M		printf("result of %s written to \"result.txt\", size of %d bytes\n", size);5�_�              	         	    ����                                                                                                                                                                                                                                                                                                                                                             _�J?     �         
       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�J     �                5��