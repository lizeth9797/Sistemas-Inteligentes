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
