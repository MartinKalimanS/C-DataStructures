//
// Pepe Gallardo, Data Structures, UMA.
//

#include "Task.h"

#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

struct Task* Task_new(unsigned int id, const char name[], unsigned int quantum) {
  struct Task* new_task = malloc(sizeof(struct Task)); // allocates enough memory for the task.

  assert(new_task != NULL && "Not enough memory");
  assert(strlen(name) <= MAX_NAME_LEN && "name too long"); // checks if name is not longer than the constant.
  new_task ->id = id; // Initialize the id and set it to value id.
  strcpy(new_task ->name, name); // String copy function.
  new_task -> quantum = quantum; // Initialize quantum and set it to quantum
  
  return new_task;
}

// Passes a pointer to a pointer because if i only pass a pointer is not possible to modify the pointer because its a copy
void Task_free(struct Task** p_p_task) { 
  assert(p_p_task != NULL && "Pointer of the first element is NULL");
  assert(*p_p_task != NULL && "Pointer to the pointer of the first element is NULL");
  free(*p_p_task);
  *p_p_task = NULL;
}

struct Task* Task_copyOf(const struct Task* p_task) {
  assert(p_task != NULL && "Task is NULL");
  return Task_new(p_task ->id, p_task->name, p_task ->quantum);
}

void Task_print(const struct Task* p_task) {
  assert(p_task != NULL && "Task_print: NULL p_task");
  printf("Task(ID: %u, Name: %s, Quantum: %u)", p_task->id, p_task->name, p_task->quantum);
}
