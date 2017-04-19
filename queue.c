#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "queue.h"

int empty(queue *Q){
	if(Q->head == NULL && Q->tail == NULL) return 1;
	return 0;
}

void initQueue(queue *Q){
	Q->tail = NULL;
	Q->head = NULL;
}

void push(queue *Q, int n){
	que *current = malloc(sizeof(que));
	current->key = n;
	current->prev = NULL;
	if(empty(Q)){
		Q->head = current;
		Q->tail = current;
	}else if(Q->head == Q->tail){
		Q->tail = current;
		Q->head->prev = Q->tail;
	}else{
		Q->tail->prev = current;
		Q->tail = current;
	}
}

que* pop(queue *Q){
	if(empty(Q)){
		initQueue(Q);
		return NULL;
	}else{
		que *current = Q->head;
		Q->head = Q->head->prev;
		if(Q->head == NULL){
			initQueue(Q);
		}
		return current;
	}
}

void showQueue(queue *Q){
	que *current = Q->head;
	printf("Kolejka:\n");
	while(current!=NULL){
		printf("%d ", current->key);
		current = current->prev;
	}
	printf("\n");
}

/*
int main(){
	srand(time(NULL));
	queue *Q = malloc(sizeof(queue));
	initQueue(Q);
	if(!empty(Q)) showQueue(Q);
	for(;;){
		int move = rand()%2;
		if(move){
			printf("Dodawanie...\n");
			int a = rand()%10;
			push(Q, a);
			printf("Dodano element: %d\n", a);
		}else{
			printf("Usuwanie...\n");
			que *a = pop(Q);
			int b = (a!=NULL ? a->key : -1);
			printf("Usunieto glowe: %d\n", b);
		}
		if(!empty(Q)) showQueue(Q);
	}
	return 0;
}
*/