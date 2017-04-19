#include "queue.h"
#include "graph.h"
#include <time.h>

void addEgde(graph *G, int a, int k){
	list *l = G->ls[a];
	list *node = malloc(sizeof(list));
	node->key = k;
	node->next = l;
	G->ls[a] = node;
}

graph* makeGraph(int n){
	graph *G = malloc(sizeof(graph));
	G->n = n;
	for(int i = 0 ; i < n ; i++){
		int b = n;
		while(b >= 0){
			b -= rand()%4+1;
			if(b >= 0 && b!=i){
				//printf("%d\n", b);
				addEgde(G, i, b);
			}
		}
	}
	return G;
}

void showGraph(graph *G){
	for(int i = 0 ; i < G->n ; i++){
		printf("%d: ", i);
		list *l = G->ls[i];
		while(l!=NULL){
			printf("%d ", l->key);
			l = l->next;
		}
		printf("\n");
	}
}

int fastTrack(graph *G, int a, int b, int tab[]){
	int visited[G->n];
	int distance[G->n];
	for(int i = 0 ; i < G->n ; i++){
		visited[i] = 0;
		distance[i] = -1;
	}
	visited[a] = 1;
	distance[a] = 0;
	queue *Q = malloc(sizeof(queue));
	initQueue(Q);
	push(Q, a);
	while(!empty(Q)){
		int v = pop(Q)->key;
		list *l = G->ls[v];
		while(l!=NULL){
			if(!visited[l->key]){
				visited[l->key] = 1;
				tab[l->key] = v;
				distance[l->key] = distance[v]+1;
				push(Q, l->key);
			}
			l = l->next;
		}
		if(distance[b]!=-1) break;
	}
	return distance[b];
}

int isInside(list *l, int a){
	list *current = l;
	while(current!=NULL){
		if(current->key == a) return 1;
		current = current->next;
	}
	return 0;
}

int existTrace(graph *G, list *trace){
	if(trace == NULL) return 1;
	list *current = trace;
	int a = current->key, b = current->next->key;
	int ans = isInside(G->ls[a], b);
	while(current->next!=NULL && ans){
		a = current->key, b = current->next->key;
		list *lista = G->ls[a];
		ans = isInside(lista, b);
		current = current->next;
	}
	if(ans==1) return 1;
	return 0;
}

void showList(list *l){
	list *current = l;
	while(current!= NULL){
		printf("%d ", current->key);
		current = current->next;
	}
	printf("\n");
}

int size(list *l){
    int len = 0;
    while(l != NULL){
       len++;
       l = l->next;
    }
    return len;
}