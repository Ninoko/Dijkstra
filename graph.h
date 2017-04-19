#ifndef graph_h
#define graph_h
#include "queue.h"

typedef struct list{
	int key;
	struct list *next;
}list;

typedef struct graph{
	int n;
	struct list *ls[MAX];
}graph;

void addEgde(graph *G, int a, int k);
graph* makeGraph(int n);
void showGraph(graph *G);
int fastTrack(graph *G, int a, int b, int tab[]);
int isInside(list *l, int a);
int existTrace(graph *G, list *trace);
void showList(list *l);
int size(list *l);

#endif