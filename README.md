# CubeDemoDay

App to check is day is Latvian holiday or not.

# Deploy:

## Database

Use PostgreSQL, add role to database.yml
run -> rails db:create

## Google calendar integration

1) Use first step from https://developers.google.com/calendar/quickstart/ruby
To create API access, get client_id and secret.

2) Use https://github.com/northworld/google_calendar#setup to find your calendar_id

3) Use https://github.com/northworld/google_calendar#usage
Add client_id, secret and calendar_id to ruby script.
Save it to file and run from console, to get refresh_token

4) Modify credetials and add client_id, secret, calendar_id and refresh_token, like in example:

(you can use vim like in example)

run -> EDITOR=vim rails credentials:edit

credentials_example:

```yml
google_calendar_api:
  client_id: YOUR_CLIENT_ID
  secret: YOUR_SECRET
  calendar_id: YOUR_CALENDAR_ID
  refresh_token: REFRESH_TOKEN
```
