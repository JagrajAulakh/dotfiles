Vim�UnDo� Yl6o�	1إ�O"Qt�����|�ɗ��T              .      )       )   )   )    _���    _�                     
       ����                                                                                                                                                                                                                                                                                                                                                             _��    �   	            !	fd = fopen(argv[1], "r+");      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _��    �               '		ch=getc(fd);  //printf("ch=%c ", ch);5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             _��|    �   	            	�   	          5�_�                    
   9    ����                                                                                                                                                                                                                                                                                                                                                             _���     �   	            9	// This is a potential problem. If a file is not given, 5�_�                    
   :    ����                                                                                                                                                                                                                                                                                                                                                             _���     �   	            :	// This is a potential problem. If a file is not given, a5�_�                    
   9    ����                                                                                                                                                                                                                                                                                                                                                             _���     �   	            9	// This is a potential problem. If a file is not given, 5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             _���     �   
            <	// will not run properly (Segmentation fault (core dumped))5�_�      	                 -    ����                                                                                                                                                                                                                                                                                                                                                             _���    �   
            /	// will not run properly (Segmentation fault )5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             _��    �                	fd = fopen(argv[1], "r");      5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             _��
    �               	fd = fopen(argv[1], "r");5�_�   
                       ����                                                                                                                                                                                                                                                                                                                                                             _��     �               ,	// ORIGINAL CODE: fd = fopen(argv[1], "r");5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _��     �               ,	 * ORIGINAL CODE: fd = fopen(argv[1], "r");5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _��     �               	 * �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _��%    �               	 */5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _��'     �               	*/5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _��(     �               	�             5�_�                       
    ����                                                                                                                                                                                                                                                                                                                               
                 v       _��@     �               	if (argc == 1) {5�_�                       
    ����                                                                                                                                                                                                                                                                                                                               
                 v       _��O    �               	if (argc < 2) {5�_�                       
    ����                                                                                                                                                                                                                                                                                                                               
                 v       _��T     �               	if (argc <= 2) {5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 v       _��X   	 �               	if (argc <= 2) {5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 v       _��Y   
 �               	if (argc <= 1) {5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 v       _��]     �               		puts("Please5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 v       _��l     �         !    �         !    5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 v       _��m     �         "      	 * fd = fopen(argv[1], "r");5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 v       _��m     �         "      	* fd = fopen(argv[1], "r");5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 v       _��m    �         "      	 fd = fopen(argv[1], "r");5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       _��q    �                	/*   	 * ORIGINAL CODE:   	 *   	 * fd = fopen(argv[1], "r");   	 *   	 */5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                       
           V       _��v     �   	   
          D	// This is a potential problem. If a file is not given, the program   .	// will not run properly (Segmentation fault)5�_�                            ����                                                                                                                                                                                                                                                                                                                            
           
           V       _��x     �   
          �             5�_�                            ����                                                                                                                                                                                                                                                                                                                            
           
           V       _��x     �             5�_�      "                      ����                                                                                                                                                                                                                                                                                                                            
           
           V       _��y     �                	//5�_�       #   !       "          ����                                                                                                                                                                                                                                                                                                                            
           
           V       _��{    �               	�             5�_�   "   $           #      4    ����                                                                                                                                                                                                                                                                                                                               -          4       V   7    _���    �   
            D	// This is a potential problem. If a file is not given, the program�                .	// will not run properly (Segmentation fault)5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                               -          4       V   7    _��9     �                  #include <stdio.h>       #int main(int argc, char *argv[]){     
	FILE *fd;   	   	int ch;       	int fileSize=-1;           C	// The potential problem may be checking for how many inputs files   A	// The original program opened argv[1], assuming it was provided       	if (argc <= 2) {   6		puts("Please supply an input file and output file");   		return 1;   	}   	fd = fopen(argv[1], "r");       	do{   		ch=getc(fd);   		printf("ch=%c ", ch);   		fileSize++;   $		printf("fileSize=%d\n", fileSize);   	} while( ch != EOF);   	   1	printf("Size of %s is %d\n", argv[1], fileSize);   }    5�_�   $   &           %      -    ����                                                                                                                                                                                                                                                                                                                               -          4       V   7    _��;     �               -	// The corrected code checks to make sure th5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                v       _��@     �               	if (argc <= 2) {5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                v       _��N    �               6		puts("Please supply an input file and output file");5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                v       _���    �                		printf("ch=%c ", ch);5�_�   (               )      .    ����                                                                                                                                                                                                                                                                                                                                                             _���    �               .	// The corrected code checks to make sure th 5�_�               "   !          ����                                                                                                                                                                                                                                                                                                                            
           
           V       _��z     �                5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             _��     �               	// �               	if (5��