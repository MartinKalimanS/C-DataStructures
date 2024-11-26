#include <assert.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

#include "LinkedStructure.h"


/// @brief Constructor for a new Node
/// @param element Element to be stored in node
/// @param p_next Pointer to next to be stored in node
/// @return Pointer to new node
static struct Node* Node_new(int element, struct Node* p_next) {
  struct Node* p_node = malloc(sizeof(struct Node));
  assert(p_node != NULL && "Node_new: not enough memory");

  p_node->element = element;
  p_node->p_next = p_next;
  return p_node;
}

/// @brief Destructor for a Node. Frees memory allocated for node and sets pointer to node to NULL
/// @param p_p_node Pointer to pointer to node to be freed 
static void Node_free(struct Node** p_p_node) {
  free(*p_p_node);
  *p_p_node = NULL;
}

struct Node* LinkedStructure_new() {
  return NULL;
}

struct Node* LinkedStructure_copyOf(const struct Node* p_first) {
  if (p_first == NULL) {
        return NULL;
    }

    // Create the first node of the new list
    struct Node* p_new_first = Node_new(p_first->element, NULL);
    if (p_new_first == NULL) {
        return NULL; // Memory allocation failed
    }

    struct Node* p_current_orig = p_first->p_next;
    struct Node* p_current_new = p_new_first;

    // Iterate through the original list and copy each node
    while (p_current_orig != NULL) {
        struct Node* p_new_node = Node_new(p_current_orig->element, NULL);
        if (p_new_node == NULL) {
            // Free the already allocated nodes in case of memory allocation failure
            LinkedStructure_clear(&p_new_first);
            return NULL;
        }
        p_current_new->p_next = p_new_node;
        p_current_new = p_new_node;
        p_current_orig = p_current_orig->p_next;
    }

    return p_new_first;
}

bool LinkedStructure_isEmpty(const struct Node* p_first) {
  // todo
  return p_first == NULL;;
}

size_t LinkedStructure_size(const struct Node* p_first) {
  int sz = 0;
  const struct Node* p_current = p_first;
  while (p_current != NULL)
  {
    sz++;
    p_current = p_current -> p_next;
  }
  
  return 0;
}

void LinkedStructure_clear(struct Node** p_p_first) {
  struct Node* p_current = *p_p_first;
  struct Node* p_next;
  while (p_current != NULL)
  {
    p_next = p_current -> p_next;
    Node_free(p_current);
    p_current = p_next;
  }

  *p_p_first = NULL;
}

void LinkedStructure_prepend(struct Node** p_p_first, int element) {
  struct Node* p_node = Node_new(element, *p_p_first);
  *p_p_first = p_node;
}

void LinkedStructure_append(struct Node** p_p_first, int element) {
  struct Node* p_current = *p_p_first;
  struct Node* p_node = Node_new(element, NULL);

  if (p_current == NULL){
    *p_p_first = p_current;
  } else {
    while (p_current -> p_next != NULL)
    {
      p_current = p_current -> p_next;
    }
    p_current -> p_next = p_node;
  }
  
}

void LinkedStructure_insert(struct Node** p_p_first, size_t index, int element) {
  struct Node* p_current = *p_p_first;
  struct Node* p_previous = NULL;

  for (int i = 0; i < index; i++)
  {
    assert(p_current != NULL && "Wrong index");
    p_previous = p_current;
    p_current = p_current -> p_next;
  }

  struct Node* p_node = Node_new(element, p_current);
  if (index == 0)
  {
    *p_p_first = p_node;
  } else {
    p_previous -> p_next = p_node;
  }
}

int LinkedStructure_get(const struct Node* p_first, size_t index) {
  const struct Node* p_current = p_first;
  for (int i = 0; i < index; i++)
  {
    assert(p_current != NULL && "Wrong index");
    p_current = p_current -> p_next;
  }
  assert(p_current != NULL && "Wrong index");
  return p_current -> element;
}

void LinkedStructure_set(struct Node* p_first, size_t index, int element) {
  struct Node* p_current = p_first;
  for (int i = 0; i < index; i++)
  {
    assert(p_current != NULL && "Wrong index");
    p_current = p_current -> p_next;
  }
  assert(p_current != NULL && "Wrong index");
  p_current  -> element = element;
}

void LinkedStructure_delete(struct Node** p_p_first, size_t index) {
  struct Node* p_current = *p_p_first;
  struct Node* p_previous = NULL;
  
  for (int i = 0; i < index; i++)
  {
    assert(p_current != NULL && "Wrong index");
    p_previous = p_current;
    p_current = p_current -> p_next;
  }

  if (index == 0)
  {
    *p_p_first = p_current -> p_next;
    Node_free(&p_current);
  } else {
    p_previous -> p_next = p_current -> p_next;
    Node_free(&p_current);
  }
  
}

void LinkedStructure_print(const struct Node* p_first) {
  printf("LinkedStructure(");
  for (const struct Node* p = p_first; p != NULL; p = p->p_next) {
    printf("%d", p->element);
    if (p->p_next != NULL) {
      printf(", ");
    }
  }
  printf(")");
}

