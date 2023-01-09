# C# SFML Project

## Objective   
The objective of this project is to make an SFML project of your choices using C# and state machine design pattern.  
SFML is mostly used for 2D games, but you are free to make software, simulations, engine or some other kind of original project.

## Requirements  
* [C# SFML](link)

## Notions  
[C# Documentation](https://www.w3schools.com/cs/index.php)  
[C# Documentation : Class](https://www.tutorialsteacher.com/csharp/csharp-class)  
[C# Documentation : Accessor](https://bpesquet.developpez.com/tutoriels/csharp/programmation-orientee-objet-csharp/?page=principaux-concepts-objets)  
[C# Documentation : Polymorphism](https://blog.alphorm.com/le-polymorphisme-dans-loriente-objet/)  
[C# Documentation : Polymorphism example](link to my doc)  
[C# Documentation : Abstract Class](https://waytolearnx.com/2019/09/classe-abstraite-en-csharp.html)  
[C# Documentation : Virtual Method](https://www.web-dev-qa-db-fra.com/fr/c%23/quelles-sont-les-methodes-virtuelles/957784952/)  
[C# Documentation : Interface](https://www.tutorialsteacher.com/csharp/csharp-interface)  
[C# Documentation : multidimensional array](https://learn.microsoft.com/fr-fr/dotnet/csharp/programming-guide/arrays/multidimensional-arrays)  
[C# Documentation : enum](https://www.tutorialsteacher.com/csharp/csharp-enum)  
[C# Documentation : struct](https://www.tutorialsteacher.com/csharp/csharp-struct)  
[C# Documentation : delegate](https://www.tutorialsteacher.com/csharp/csharp-delegates)  
[C# Documentation : event](https://www.tutorialsteacher.com/csharp/csharp-event)  
[C€ Documentation : State Machine](https://r0d.developpez.com/articles/dp-state-fr/)  
[SFML Documentation : State Machine](https://www.binpress.com/creating-city-building-game-with-sfml-state-manager/)  
[SFML Documentation : Tutorial](https://www.sfml-dev.org/tutorials/2.5/index-fr.php) ⚠️ not in C#  
[SFML Documentation : 2nd Tutorial](http://sdz.tdct.org/sdz/creez-des-applications-2d-avec-sfml.html) ⚠️ not in C#  
[Design pattern : State](https://refactoring.guru/design-patterns/state)  
[Design pattern : Singleton](https://fr.wikipedia.org/wiki/Singleton_(patron_de_conception))  

## Instructions
* Create a new repository on the github classroom
* Install dotnet core and SFML
* Crate you first SFML window
* Setup you state machine
* Add your functionalities

## Constraints
* You have to use C# and SFML
* You have to use the state machine design pattern
* You have to use the singleton design pattern
* You have to use abstract class
* You have to make inheritance
* You have to make events
* You have to clean 

You also had to implement one of those POO notions :
* Polymorphism
* Interface
* Delegate
* async function
* You have to use virtual method
* operator overloading


## SFML Window
The SFML window is used to open a window and display graphics on it with the "game" loop.
To create a window, you need to create a class to render this window.
```using SFML.Window;

namespace MyGame
{
    class Game
    {
        static void Main(string[] args)
        {
            // Create the window
            RenderWindow window = new RenderWindow(new VideoMode(800, 600), "My Game");

            // Run the game loop
            while (window.IsOpen)
            {
                // Handle events
                window.DispatchEvents();

                // Update the game

                // Draw the game
                window.Clear();
                // ... draw your game here ...
                window.Display();
            }
        }
    }
}
```  
You can find more information about the SFML window [here](https://www.sfml-dev.org/tutorials/2.5/window-window.php).  

⚠️ Do not forget to manage your framerate correctly. ⚠️

## State Machine
The state machine is a design pattern used to manage the different states of your game and some object of your game.  
For example a game can have different states (this is example, you can have more or less states in your project) :
* Menu
* Settings
* Game
* Pause
* Game Over
* Credits
* ...

If you have an object in your game, you can also have different states for this object.  
For example, a player can have different states :
* Idle
* Move
* Jump
* Attack
* Crouch
* Climb
* ...

Thoses states are used to manage the different actions of your object.  
For example, if the player is in the "Idle" state, he can't move, jump, attack, crouch or climb.  
If you want to move, you need to change the state of the player to "Move".  

## Release

### <ins>Project Release</ins>
You have to make a release of your project and add it to your repository.
To make a release of your project, you need to use the command line.  
```dotnet publish -c Release -r win-x64 --self-contained false```   
This command will create a folder named "bin" in your project folder.  
In this folder, you will find a folder named "Release" and a folder named "netcoreapp3.1".  
In the "netcoreapp3.1" folder, you will find a folder named "win-x64" and a folder named "publish".  
In the "publish" folder, you will find your executable file.

### <ins>Release Branch</ins>
It's best practice to create a separate branch for your release, rather than releasing from your master branch. This allows you to continue working on new features in the master branch while the release is being prepared.

To create a new release branch, follow these steps:

* Open a terminal window and navigate to your project directory
* Run the following command: git checkout -b release/**release-name**
* Replace **release-name** with a descriptive name for your release (e.g. v1.0, v2.0, etc.)  
* Push Your release project

### <ins>Release Github</ins>
Now that you have prepared your release branch, you can create a release on GitHub. To do this, follow these steps:

* Go to your repository on GitHub and click on the Releases tab
* Click on the Create a new release button
* In the Tag version field, enter the same release name you used in Step 2 (e.g. v1.0, v2.0, etc.)
* In the Release title field, enter a descriptive title for your release (e.g. "Version 1.0", "Major update", etc.)
* Optionally, you can add a description of the changes included in this release in the Describe this release field
* Select the release/**release-name** branch as the Target for your release
* Click on the Publish release button to create your release

## Evaluation
You are mainly evaluated on the following points :
* The quality of your code
* The quality of your **deliverable document**
* The good use of the design pattern
* The good use of the POO

[Here is the evaluation table]()

### <ins>Deliverable document</ins>
You had to make a document with at least 15 pages about your project.
This document must contain :
* The description of your project
* A litle project specification
* A minimum of 2 diagrams (UML, State Machine, ...)
  * A class diagram
  * A flowchart
  * A network diagram
  * A state machine diagram
  * An activity diagram
  * A sequence diagram
  * ...
* schemas
* Sreenshots

If you make a game you can get inspired by Game Design Document (GDD). Somes of them are accessible on internet.

## Bonus
You can earn somes point by implementing the following features :
* POO Interface
* Polymorphism




