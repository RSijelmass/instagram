# README

Last: Creating table Posts Tags (many to many)
Still to fix: 
- inlcude username
- use poststags table
- make hashes clickable
- read more than one hash per title

* Ruby version

* System dependencies
- Next to the standard rails setup, a few gems are installed:
	- Paperclip, for image upload
	- Clearance, for User setup
	- 

* Configuration
- Time is set to London. This can be changed in config/application.rb by changing
  'London' to the desired city / area.

* Database creation
Models in db:
- User
	- email
	- password

- Posts
	- title
	- image
	- created_at
	- user_id

* Database initialization
- To initialise the database, run 'rake db:create' once. After that, only run 'rake
  db:migrate' if a model is altered.

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
