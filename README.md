# ddd_flutter_example
 Flutter Domain Driven Design Example.

# Still working mostly functional except registration 

### Project Description
This project is nothing than a simple login and home screen with a logout button. But it have a high level use of OOP. And have some funconal programming. It's have dependency injection , Software design pattern which you can use in our own project. Better error handling. Testable code and loosely coupled.
You can see a [prototype](https://github.com/MuktadirM/ddd_flutter_example/blob/master/prototype/Prototype.xd) what i am building (Adobe XD CC file)

### What have used here ?
* Domain Driven Design
* Functional programming (Dartz)
* State management (Flutter Bloc)
* Dependency injection (Injectable)
* Prototype
* Custom page route
* Custom error handling
* Firebase (Which is replaceable with any data soure)

#### Domain Driven Design ?
Domain-driven design is the concept that the structure and language of software code should match the business domain. For example, if a software processes loan applications, it might have classes such as LoanApplication and Customer, and methods such as AcceptOffer and Withdraw. Refer this e-book (Domain-Driven Design: Tackling Complexity in the Heart of Software by eric evans)
#### Now question arrised what is the uses here ? Does it possible develop software without this approach ?
Yes its possible to develop a software without using this pattern. 
###### why its useful
For example you are building a house but you don't have a blueprint you just start build the house suddenly you relised that it's not the things you want to develop. So what you have to do break the building an build it from scratch again. But what if you have a nice stucture you do something wrong you can break the wrong thing and build it from there again. Same goes in programming crate a blueprint and make seperation of code. It can be useable in any object oriented programming which i have shown in my repo (DDD example Kotlin and Java) Check that out

### let's say i have four folder or package in lib at the top 
* application (this foler cantains the appliaction logic which is handling different event from my presentation(UI) package or folder)
* domain (its contains the business logic then the sub-folder cantains the feature specefic logic which make a clear goal what i am building ) 
* infrastructure (its a similar of repository implementation the data source it can be replace by any data source there will be no effect of changing this app will be work fine)
* presentation (it's contains UI related code)

So it's possibale to develop a app without touching a ui code which can be develop later. Or if you work in team you can divide the work to different person once you have the domain. 

## Functional Programming 
I have use some functional programming here, now let's talk about Either which have a left and right but what is it ? let's say i have a data type which have two sides left and right and can hold value of any types. it would be more nicer if one single variable can have error or correct value. it's like a warper class which can hold diffrent states combain with a data. in this case either plays a good role. for data validation or any succes or error case we can use Either to hold fail or success(data). You can check out (Java and kotlin where i have introduce this data type in my own way although java either have some less features but it useful)
