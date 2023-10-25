# ID Manager

## Objectives
Save people informations in a structure

## Documentation
- [TView]([TView](https://github.com/rivo/tview))
- [Golang Structure](https://gobyexample.com/structs)
- [Golang Structure 2](https://www.w3schools.com/go/go_struct.php)

## instructions

### Datas structure
- You have to create a Person structure able to contain those informations :  
  - Title (Mr, Ms, Mrs, Dr...)
  - FirstName
  - LastName
  - Age
  - Password

### TView form
- You have to make a TView form with thoses input :
  - Title (Mr, Ms, Mrs, Dr...) -> DropDown menu
  - Firstname -> InputField
  - LastName -> InputField
  - Age -> InputField
  - Password -> PasswordField
  - Quit -> Button

### Datas storage
- Make a function "Save" that save all form input in the **Person** structure  
  - To get a value from a form, you have to use [Type asertion](https://go.dev/tour/methods/15)  :   
        ```form.GetFormItemByLabel("Title").(*tview.DropDown).GetCurrentOption()```

### Display datas
- Make a function "Display" that display **all Person** structure values in terminal or in a TView table

## Constraints
- You have to register minimum 2 persons
- Do not use AI tools

