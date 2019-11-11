# JPA CRUD Project

### Ninth week homework for Skill Distillery
Course Began: 9/9/19

Assigned: 11/8/19

Completed: 11/10/19


## Overview
 This program utilizes a MYSQL database to manipulate data which is mapped to a JPA entity and uses Spring Boot to allow the user to preform full CRUD transactions. The frontend is built with bootstrap, HTML, and css.
 The backend integrates Hibernate and JPA with Spring Boot.

     *It is important to note for anyone testing this project that only 18 players were added to the database at this time. Therefore some team searches will result in -No Players Found. The team with most representation is the Astros*


### Controllers, JSPs, & DAOImpl Information

There are controller methods for mapping each aspect of the program to their appropriate pages and methods.
The following are each page of the program:

index.jsp: The homepage contains two bootstrap cards which map to playerLookup.jsp and playerCreate.jsp.

playerCreate.jsp: playerCreate page displays a form for each of the players attributes. The user is required to enter all data in creating a player so the database does not have incomplete data. The player is then added to the database. This is mapped through the controller to the entity managers persist method.

playerDelete.jsp: playerDelete removes a player from the database using the entity managers remove method.

playerLookup.jsp: The playerLookup page contains buttons for lookupById.jsp & lookupByKeyWord.jsp and a link to return to homepage.

lookupById.jsp: This page prompts the user to enter a players ID then the controller calls the proper select statement query. The webpage is then directed to the results.jsp page.

lookupByKeyword.jsp: This page prompts the user to enter a keyword for displaying a list of films based on keyword searched through title and description.

Results.jsp: This page displays all information about a player or list of players in a table. If the player does not exist, a proper message will be displayed. If the search returns a list of multiple players, a JSTL foreach method is used to iterate through the results.

playerUpdate.jsp: playerUpdate allows the user to change any field they choose for a player. The form is pre-populated with the players previous stats so not everything has to be updated if not desired.
