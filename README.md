### Santander Cycles - Graduation Project ###

#### Intro ####

I am returning to Santander Cycles / Boris Bikes as want to make a return to Ruby and ensure I have a firm grasp of the fundamentals of OOP.  Whilst at Maker's I did not reach the end of the project and know that there were some interesting challenges at the end which I think will be a good test.

#### Project ####

The aim of Santander Cycles is to build up a model example of the system in place e.g. docking stations, bikes, infrastructure and so forth.  

#### User Stories ####

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```

#### Domain Model ####

Objects  | Messages
------------- | -------------
Person  |
Bike  | working?
DockingStation | release_bike
