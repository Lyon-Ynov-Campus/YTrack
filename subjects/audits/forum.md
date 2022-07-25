# Audit - Forum

### Objective 

The goal is to review the code of your classmate for the Forum project.

### Restrictions

Has the requirement for the allowed packages been respected? 
Reminder for this project :
> - [standard go](https://pkg.go.dev/std)
> - [go-sqlite3](github.com/mattn/go-sqlite3)
> - [bcrypt](golang.org/x/crypto/bcrypt)
> - [go uuid](github.com/satori/go.uuid)


### Forum Principal Subject

**Answer all these questions :**

> - Does the website have a database with SQLite ?
> - Does the website have an API with a GO public route (for html content) and GO private routes (for data management) ?
> - Does the website call the private route using Javascript ```fetch``` ?
> - Does the website have an authentification system ?
> - Does the website allows users to create or delete posts which every registered or non-registered user can see ?

### Authentication

**Answer this question :**

> - Does the website allows you to register or login using at least Google and Github authentication tools ?

### Advanced-features

**Answer all these questions :**

> - Can registered users like or dislike posts ?
> - Do the likes and dislikes of a post are visible by all users ?
> - Do posts have comments that every registered users or not can see ?
> - Can a post be associated with one or several categories ?
> - Does the website displays all user infos (created posts, posts/comments where the user left a like/dislike, comments from the user) in a profile page ?

### Image-upload

**Answer all these questions :**

> - Can a post contain images as text with a max size of 20mb and several extensions with at least : JPEG, PNG, GIF ?
> - If image can't be uploaded, does it show an error message ?

### Moderation

Does the website have implemented at least 4 types of users ?
To remind you :

**Guests**
> - These are unregistered-users that can neither post, comment, like or dislike a post. They only have the permission to see those posts, comments, likes or dislikes.

**Users**
> - These are the users that will be able to create, comment, like or dislike posts.

**Moderators**
> - Moderators, as explained above, are users that have a granted access to special functions :
> > - They should be able to monitor the content in the forum by deleting or reporting post to the admin
> - To create a moderator the user should request an admin for that role

**Administrators**
> - Users that manage the technical details required for running the forum. This user must be able to :
> > - Promote or demote a normal user to, or from a moderator user.
> > - Receive reports from moderators. If the admin receives a report from a moderator, he can respond to that report
> > - Delete posts and comments
> > - Manage the categories, by being able to create and delete them.

### Filters

Does the website implemented a filter mechanism with at least these four filters :
> - filter by categories (if implemented)
> - filter by number of comments (if implemented)
> - filter by creation date
> - filter by number of likes

### Herokuize

> - Is the website deployed ? (It can be with heroku or not)

### Basic

> - Does the project runs quickly and effectively? (Favoring recursive, no unnecessary data requests, etc)
> - Does the code obey the good practices?
> - Is there a test file for this code?
> - Are the tests checking each possible case?
> - Is the output of the program well structured? Are the characters displayed correctly in line?
> - Does the project respect the [good practices](https://public.01-edu.org/subjects/good-practices/) ?
> - Does the website respect the principles of a good website design ?
> - Does the website manage all errors ?

### Social

> - Did you learn anything from this project?
> - Can it be open-sourced / be used for other sources?
> - Would you recommend/nominate this program as an example for the rest of the school?
<br>