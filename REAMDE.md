# Website Specification

The website will have the following specification:

- Show a list of bookmarks
- Add new bookmarks
- Delete bookmarks
- Update bookmarks
- Comment on bookmarks
- Tag bookmarks into categories
- Filter bookmarks by tag
- Users are restricted to manage only their own bookmarks

As a user
So that I can see a list of bookmarks
I want to be able to see a rendered list of bookmarks on the webpage

Client
   Get request for Bookmark list
- Controller
      App.rb request to bookmark model, list of bookmarks
               Model
                 Bookmark returns stored list of bookmarks to app.rb(controller)
                     Views
                       list rendered in erb view - returned to client 

As a <Stakeholder>,
So that <Motivation>,
I'd like <Task>.


# Database
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
