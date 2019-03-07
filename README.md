A Rails APP template where a user admin (business owner) can create "properties" for users to login and rent.


****** I had to take this down due to hosting costs.... but you can see a video walkthrough and description of the project in production here: http://www.anthonygawbill.com/#renttemplate *********


https://group-project-212323.appspot.com/  --- to main page

https://group-project-212323.appspot.com/admin_panel  -- to RAILS ADMIN PANEL

Guests have the ability to rent properties...

GUEST ID: test@mail.com

GUEST PW: 123456

Admins have the ability to create claims and propeties to rent-- also have access to RAILS ADMIN (see description below)

ADMIN ID: test@mail.com

GUEST PW: 123456



Essentially, this is a template for businesses that want to rent properites.

There's an admin user class, and a regular user class. 

Admins can create properties and claims on open rents on properties. Users can rent properties. 

The admin class also has access to "RAILS ADMIN," which is a control panel for admins where they can easily edit/add/delete users, properties, claims, rents... literally everything laid out in an easy to access fashion. I handled the entire backend, setting up RAILS ADMIN, and I also created the forms (to create properties, claims, rents, whatever you see on the user profile page, etc.). I set up CarrierWave to upload images, and images are uploaded to a bucket on Google Cloud Services. Another classmate handled the design aspect. 

I recently deployed it to Google Cloud Services myself. I tweaked it considerably to get it to deploy (changed how the project uploads images, set up a MYSQL database, altered some of the data types in the schema, etc.). There's a video beneath the screenshots where I walk you through/navigate the project if you're interested in learning more.

It includes the following:

Use of APIs.
Complicated backend relationships, and a join table.
Utilization of RAILS ADMIN gem, MYSQL database.
Deployment using Google Cloud Services.
