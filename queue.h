#ifndef queue_h
#define queue_h
#include <stdlib.h>
#include <stdio.h>
#define MAX 1000
typedef struct que{
	int key;
	struct que *prev;
}que;

typedef struct queue{
	struct que *head;
	struct que *tail;
}queue;

int empty(queue *Q);
void initQueue(queue *Q);
void push(queue *Q, int n);
que* pop(queue *Q);
void showQueue(queue *Q);

#endif