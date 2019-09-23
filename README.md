## Implementando el algoritmo Depth-First Search

```
funcion dopth(){
queue=[];
state=root_node;
while (true){
if is_goal(state)
then return SUCCESS
else add_to_front_of_queue(SUCCESSORS (state));
if queue==[]
then report FAILURE;
state=queue[0];
remove_first_item_from(queue);
}}
```


## Implementando el algoritmo Breadth-First Search

```
funcion dopth(){
queue=[];
state=root_node;
while (true){
if is_goal(state)
then return SUCCESS
else add_to_the_back_of_queue(SUCCESSORS (state));
if queue==[]
then report FAILURE;
state=queue[0];
remove_first_item_from(queue);
}}
```


## Algoritmo Hill Climbing

```
function hill(){
queue=[];
state=root_node;
while(true){
if is_goal(state){
then return success }
else{
sort(successors(state));
add_to_front_of_queue(successors(state));   }

if queue==[]{
then return failure }
state=queue[0];
remove_first_item_from(queue);
}

```



## Algoritmo Best First Search

```
funcion dopth(){
queue=[];
state=root_node;
while (true){
if is_goal(state)
then return SUCCESS
else {
add_to_front_of_queue(SUCCESSORS (state));
sort(queue);}
if queue==[]
then report FAILURE;
state=queue[0];
remove_first_item_from(queue);
}//fin del while
} //fin del programa
```

## Algoritmo Beam Search
#### Problema: Existen muchos. El factor de bifurcación del arbol que se genera es muy grande como en el caso del ajedrez o Go. La busqueda ya NO será completa. Algoritmos no deterministicos. La solución son los Algoritmos Genéticos->Aprendizaje
```
funcion dopth(){
queue=[];
state=root_node;
while (true){
if is_goal(state)
then return SUCCESS
else {
add_to_front_of_queue(SUCCESSORS (state));
select_best_paths(queue,n);}
if queue==[]
then report FAILURE;
state=queue[0];
remove_first_item_from(queue);
}//fin del while
} //fin del programa
```


## Algoritmo Random Search
#### Agrega de manera aleatoria los sucesores de cada estado
```
funcion dopth(){
queue=[];
state=root_node;
while (true){
if is_goal(state)
then return SUCCESS
else {
add_randomly_to_queue(SUCCESSORS (successor(state));}
if queue==[]
then report FAILURE;
state=queue[0];
remove_first_item_from(queue);
}//fin del while
} //fin del programa
```

