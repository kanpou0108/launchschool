# Question 5
# Given the following nested data structure, and without running the code, select all the options that would set the value for :completed to true for all of the todos in the 'Homework' list.

todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  },
  {
    id: 2,
    list_name: 'Homework',
    todos: [
      { id: 1, name: 'Math', completed: false },
      { id: 2, name: 'English', completed: false }
    ]
  }
]

p todo_lists

todo_lists[1][:todos][0][:completed] = true
todo_lists[1][:todos][1][:completed] = true

p todo_lists
