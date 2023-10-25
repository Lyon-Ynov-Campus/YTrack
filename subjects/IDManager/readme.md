# ID Manager

## Objectives
Create a form to enter personal data using TView  
Save that data in a structure  
Display the data in the terminal

## Documentation
- [TView]([TView](https://github.com/rivo/tview))
- [Golang Structure](https://gobyexample.com/structs)
- [Golang Structure 2](https://www.w3schools.com/go/go_struct.php)

## instructions

### Data Structure
- You have to create a Person structure able to contain those informations :  
  - Title (Mr, Ms, Mrs, Dr...)
  - FirstName
  - LastName
  - Age
  - Password

### TView form
- You have to make a TView form with the following inputs :
  - Title (Mr, Ms, Mrs, Dr...) -> DropDown menu
  - Firstname -> InputField
  - LastName -> InputField
  - Age -> InputField
  - Password -> PasswordField
  - Quit -> Button

### Data storage
- Make a function "Save" that save all form input in the **Person** structure  
  - To get a value from a form, you have to use [Type asertion](https://go.dev/tour/methods/15)  :   
        ```form.GetFormItemByLabel("Title").(*tview.DropDown).GetCurrentOption()```

### Display data
- Make a function "Display" that displays **all Person** structure values in terminal or a TView table

## Constraints
- You have to register a minimum 2 of persons
- Do not use AI tools
