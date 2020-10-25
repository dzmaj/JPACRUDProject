# JPACRUDProject
## Overview
This project is a simple full stack web application consisting of a 1 table SQL database linked to a Spring Boot project. The data consists of a table of "people" and some simple attributes which can be used to display a (bad) visual representation (SVG stick figure) of the person on the front end.

For me, this project about getting more familiar with integrating all the different parts of a full stack application in Spring while trying to do something simple but creative and fun.

## Topics
- JPA
- Spring
- SQL
- JUnit
- JSP/HTML

## How to Use
From the index page, the user has several options:
- Look up a perosn by their ID
- Search for a person by their first or last name
- Display a list of all people
- Create a new person
Looking up by ID will take the user directly to the page for the person if they exist. Searching by name or displaying all will take the user to a page with a list of people. Creating a new person will allow the user to specify the attributes for their new person, before taking them to the new person's page.

Once at an individual person's page, the person's name and ID will be displayed along with a visual representation or the person. There are also options for updating/deleting the person or returning to the index page.

Deleting a person will bring the user to a page indicating whether the deletion was successful or not. Updating will bring the user to a page similar to the create page. All attributes other than ID can be changed.
