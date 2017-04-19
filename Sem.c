#include "queue.h"
#include "graph.h"

list* solution(int tab[], int s, int v){
	list *l = malloc(sizeof(list));
	list *empty = NULL;
	l->next = NULL;
	l->key = v;
	v = tab[v];
	while(v!=-1){
		list *newNode = malloc(sizeof(list));
		newNode->key = v;
		newNode->next = l;
		l = newNode;
		if(v == s) return l;
		if(v==-1) return empty;
		v = tab[v];
	}
	if(size(l) == 1) return empty;
	return l;
}

void summary(graph *G, int s, int v, int P[], list* l){
	printf("Listy Sasiedztwa: \n");
	showGraph(G);
	printf("Odleglosc: %d ~ %d = %d\n", s, v, fastTrack(G, s, v, P));
	printf("Tablica P[]:\n");
	for(int i = 0 ; i < G->n ; i++) printf("%d ", P[i]);
	printf("\n");
	printf("Sciezka z %d do %d:\n", s, v);
	showList(l);
}

int main(){
	srand(time(NULL));
	//for(int i = 10 ; ;i++){
		int n = rand()%10+2;
		graph *G = makeGraph(n);
		int s = rand()%n;
		int v = rand()%n;
		while(s==v) v = rand()%n;
		int P[n];
		for(int i = 0 ; i < n ; i++) P[i] = -1;
		fastTrack(G,s,v,P);
		list *l = solution(P, s, v);
		//if((existTrace(G, l) && fastTrack(G, s, v, P) == (size(l) -1))){
			//printf("OK ~ %d\n", i);
		//}else{
			//printf("ALERT\n");
			summary(G, s, v, P, l);
			//break;
		//}
	//}
	return 0;
}