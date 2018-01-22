#include <stdio.h>
#include <stdlib.h>

//Used code from https://www.programiz.com/c-programming/examples/read-file
int read_file(char* filename, char** buffer) {
	
	FILE* file_pointer;

	if((fptr = fopen("output.txt", "r"))=NULL){
		fprintf(stderr, "File could not be opened!");
		return 1;
	}	
	
	fscanf(file_pointer, "%[^\n]", c);
	
	printf("\n%s", c);
	fclose(file_pointer);

	return 0;	

}

int write_file(char* filename, char* buffer, int size) {

}
