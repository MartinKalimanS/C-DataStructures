//
// Pepe Gallardo, Data Structures, UMA.
//

#include "Scheduler.h"

#include <assert.h>
#include <stdlib.h>
#include <stdio.h>

struct Node* Scheduler_new() {
  return NULL;
}

size_t Scheduler_size(const struct Node* p_last) {
  size_t size = 0;
 if (p_last != NULL) // check if the playlist is not empty
 {
  const struct Node* p_first = p_last -> p_next;
  struct Node* p_current = p_first;
  do
    {
      size++;
      p_current = p_current ->p_next;
    } while (p_current != p_first);
  }
 
  return size;
}

void Scheduler_clear(struct Node** p_p_last) {
  assert(p_p_last != NULL && "pointer to the first node is NULL");
  assert(*p_p_last != NULL && "pointer to the pointer of the first node is NULL");
  free(*p_p_last);
  *p_p_last = NULL;
}

struct Task* Scheduler_first(const struct Node* p_last) {
  assert(p_last != NULL && "empty schedule");
  struct Node* p_first = p_last ->p_next;
  return Task_copyOf(&p_first->task); // copy the task that the pointer to the first element is pointing to.
}

void Scheduler_first_v2(const struct Node* p_last, struct Task* p_task) {
  // todo
}

// Adds a new node at the end of the schedule
void Scheduler_enqueue(struct Node** p_p_last, const struct Task* p_task) { 
  assert(p_p_last != NULL && "Null pointer to pointer");
  struct Node* p_last = *p_p_last;
  struct Node* p_node = malloc(sizeof(struct Node));
  p_node ->task = *p_task;
  if (p_last == NULL)
  {
    assert(p_node != NULL && "not enough space");
    p_node->p_next = p_node;
    *p_p_last = p_node;
  } else {
    // non emtpy schedule
    struct Node* p_first = p_last->p_next;
    p_node->p_next = p_first;
    p_last->p_next = p_node;
  }
  *p_p_last = p_node;
}

void Scheduler_dequeue(struct Node** p_p_last) {
  struct Node* p_last = *p_p_last;
  assert(p_p_last != NULL && "NULL first pointer");
  assert(*p_p_last != NULL && "empty schedule");
  if (*p_p_last == p_last ->p_next)
  {
    free(p_last);
    *p_p_last = NULL;
  } else {
    struct Node* p_first = p_last ->p_next;
    p_last ->p_next = p_first ->p_next; //  update where the last pointer to the element after the first node that now is empty.
    free(p_first);
    p_first = NULL;
  }
  
}

void Scheduler_print(const struct Node* p_last) {
  printf("Scheduler(");
  if (p_last != NULL) {
    struct Node* p_first = p_last->p_next;
    struct Node* p_current = p_first;
    do {
      printf("\n  ");
      Task_print(&(p_current->task));
      p_current = p_current->p_next;
      printf(p_current != p_first ? "," : "\n");
    } while (p_current != p_first);
  }
  printf(")");
}
