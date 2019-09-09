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




