
// --------------------------------------------------------------
// Assignment 1
// Part 2
// Question 6, 7 and 8: Linked Lists
// Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
// --------------------------------------------------------------
// 

#include <stdio.h>
#include <stdlib.h>

typedef enum { ATOM, LIST } eltype;
typedef char atom;
struct _listnode;

typedef struct {
	eltype type;
	union {
		atom a; 
		struct _listnode* l; 
	};
}element;

typedef struct _listnode {
	element el; 
	struct _listnode* next; 
} * list;

const element NIL = { .type = LIST, .l = NULL };

//Return element containing the atom passed
element aasel(atom a){
	element e; 
	e.type = ATOM;  
	e.a = a; 
	return e; 
}
//Return element containing the list passed 
element lasel(list l){
	element e;
	e.type = LIST; 
	e.l = l;
	return e;
}

//Prints the complete list of element
void print(element e){

	printf(" ( head");
	while (!(e.l == NULL)) {
		if (e.type == ATOM)
			printf(" -> %c", e.a);
		if (e.type == LIST)
			print(lasel(e.l));
	}
	printf(" -> NULL ) ");
}

//Return head element
element car(element e){
	if (e.type != LIST) {
		element temp = {LIST, NULL};
		return temp;
	}
	else{
		return e.l->el;
	}
}
//Return tail of a list (so everything except the head)
list cdr(element e){
	if (e.type != LIST) {
		return NULL;
	}
	else{
		return e.l->next;
	}
}
//Return the tail of the tail of a list
list cddr(element e){
	return cdr(lasel(cdr(e)));
}

//Return 1 list containing the elements of both lists passed
list append(list* l1, list* l2){
	struct _listnode *ptr1;
	struct _listnode *ptr2;
	ptr1 = * l1;
	ptr2 = * l2;

	while (!(ptr1 == NULL)) {
		ptr1 = ptr1->next;

	}

	while (!(ptr2 == NULL)) {
		ptr1 = ptr2;
		ptr2 = ptr2->next;
		ptr1 = ptr1->next;
	}
	ptr1->next = NULL;

	return *l1; 
}

//Return list with head e and tail l
list cons(element e, list l){
	struct _listnode * headNewList = (struct list*) malloc(sizeof(struct _listnode));
	headNewList->el = e;
	headNewList = headNewList->next;
	headNewList->next = l;
	return headNewList;
}

//Frees the memory of a list
void lfreer(list l){
	while (l != NULL) {
		if (l->el.type == LIST) {
			lfreer(l->el.l);
		}
		list temp = l->next;
		free(l);
		l = temp; 
	}
	l = NULL;
}




// ########################
//          Main 
// ########################

int main(){

	//  Testing Functions of Question 6
	// ##################################

	printf( "\nLinked Lists \n\n");
	element user_list  = { .type = LIST, .l = NULL};
	element user_list2 = { .type = LIST, .l = NULL};

	// Creating list of each element containing our atoms
	element e_a; 
	element e_b;
	element e_c;
	element e_d; 
	element e_e;  

	e_a.type = ATOM;
	e_b.type = ATOM; 
	e_c.type = ATOM;
	e_d.type = ATOM; 
	e_e.type = ATOM;

	e_a.a = 'a';
	e_b.a = 'b';
	e_c.a = 'c';
	e_d.a = 'd';
	e_e.a = 'e';

	element l_a = { .type = LIST, .l = &e_a};
	element l_b = { .type = LIST, .l = &e_b};
	element l_c = { .type = LIST, .l = &e_c};
	element l_d = { .type = LIST, .l = &e_d};
	element l_e = { .type = LIST, .l = &e_e};

	//Initializing the lists
	append(&user_list.l, &l_a);

	printf( "\n\nList #1: \n");  
	print(user_list);

	append(&user_list.l, &l_b); 
	append(&user_list.l, &l_c); 
	append(&user_list.l, &l_d);

	printf( "\n\nList #1 with added elements: \n"); 
	print(user_list);

	append(&user_list2.l, &l_e);

	printf( "\n\nList #2: \n"); 
	print(user_list2);


	append(&user_list.l, &user_list2.l);

	printf( "\n\nFinal list: \n"); 
	print(user_list2);

	append(&user_list2.l, &l_e);






	//  Implementing Question 7
	// ###############################
	printf( "\n\nQUESTION 7:\n\n"); 
	printf( "List of Question 7: \n");


	element list7 = { .type = LIST, .l = NULL};
	element list7bc = { .type = LIST, .l = NULL};

	append(&list7.l, &l_a);
	append(&list7bc.l, &l_b);
	append(&list7bc.l, &l_c);
	append(&list7.l, &list7bc);
	append(&list7.l, &l_d);
	append(&list7.l, &l_e);

	print(list7);





	//  Printing Output of Question 8
	// ###############################
	printf( "\n\nQUESTION 8:\n\n"); 

	print(car(list7));
	print(lasel(cdr(list7)));
	print(car(car(list7)));
	lfreer(list7.l);

	printf( "\n\nEnd of Program \n\n");
	return 0;
}
