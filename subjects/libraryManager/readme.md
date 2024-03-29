# Library Manager

## Objectives
You are in charge of developping a simplified **library manager** for a reader community. Your program must be able to **store** and **get** informations about books.

## Instructions
### Datas structure
- You have to create a `Book` structure able to contain those informations on a book :  
  - Title
  - Author
  - Publication Date
  - Genre
- Create a `Library` structure that contain a **list of books**  
  
### Files manipulation
- Write a function which **loads a library** from a file, parse the file and return an instance of `Library`. If the file doesn't exist, return an error.  
This function **must have a filename parameter**.  
- Write a function which **saves** the current state of the library in a file and return an error if the file wasn't saved correctly.

### Features
- Write a function which **allows users** to create new book in a library from the user interface.
- Write a function which deletes a book from a library
- Write a function which returns a list of all books ordered by title.

### User interface
- Make an user interface menu to let the user choose between **Add**, **Delete** a book or **Read** the list of book of a library.

## Evaluation
- Features
- The readability and cleanliness of the code
- Error management
- Ability to search for information and read documentation

## Contraints
You are not allowed to use ChatGPT or others IA tool to make this exercice.

