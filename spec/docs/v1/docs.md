

# Group Authentication


## Authentication [/auth]


### Sign In [POST /api/v1/sign_in]


+ Request signs in user
**POST**&nbsp;&nbsp;`/api/v1/sign_in`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            username=franklin.hilll&password=VoSv18V8

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTcxNTgxNjl9.W7KYuav-msouw5xKvpLKbcqZrOUlrSgm6YCk_OpxGm0"
            }

# Group Comments


## Comments [/comments]


### Create a comment [POST /api/v1/comments]


+ Request creates a comment
**POST**&nbsp;&nbsp;`/api/v1/comments`

    + Headers

            Accept: application/json
            Content-Type: application/x-www-form-urlencoded

    + Body

            comment[body]=Consequatur+id+quis+at.&comment[task_id]=1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1,
              "body": "Consequatur id quis at.",
              "file": {
                "name": "file",
                "record": {
                  "id": 1,
                  "body": "Consequatur id quis at.",
                  "task_id": 1,
                  "created_at": "2019-05-05T15:56:09.345Z",
                  "updated_at": "2019-05-05T15:56:09.345Z"
                },
                "dependent": "purge_later"
              },
              "task_id": 1,
              "created_at": "2019-05-05T15:56:09.345Z",
              "updated_at": "2019-05-05T15:56:09.345Z",
              "url": "http://www.example.com/api/v1/projects/1"
            }

### Delete a comment [DELETE /api/v1/comments/{id}]

+ Parameters
    + id: `2` (number, required)

+ Request deletes a comment
**DELETE**&nbsp;&nbsp;`/api/v1/comments/2`

    + Headers

            Accept: application/json
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json

# Group Projects


## Projects [/projects]


### Create a project [POST /api/v1/projects]


+ Request creates a new project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/json
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=excepturi

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 3,
              "name": "excepturi",
              "user_id": 4,
              "created_at": "2019-05-05T15:56:09.409Z",
              "updated_at": "2019-05-05T15:56:09.409Z",
              "url": "http://www.example.com/api/v1/projects/3"
            }

### Update a project [PUT /api/v1/projects/{id}]

+ Parameters
    + id: `4` (number, required)

+ Request updates project
**PUT**&nbsp;&nbsp;`/api/v1/projects/4`

    + Headers

            Accept: application/json
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=eos

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 4,
              "name": "eos",
              "user_id": 5,
              "created_at": "2019-05-05T15:56:09.440Z",
              "updated_at": "2019-05-05T15:56:09.449Z",
              "url": "http://www.example.com/api/v1/projects/4"
            }

### Delete a project [DELETE /api/v1/projects/{id}]

+ Parameters
    + id: `5` (number, required)

+ Request deletes project
**DELETE**&nbsp;&nbsp;`/api/v1/projects/5`

    + Headers

            Accept: application/json
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json

# Group Tasks


## Tasks [/tasks]


### Create a task [POST /api/v1/tasks]


+ Request creates a new task
**POST**&nbsp;&nbsp;`/api/v1/tasks`

    + Headers

            Accept: application/json
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]=sunt&task[deadline]=2019-05-12+18%3A56%3A09+%2B0300&task[project_id]=6

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 3,
              "name": "sunt",
              "deadline": "2019-05-12T15:56:09.000Z",
              "position": 1,
              "is_done": false,
              "project_id": 6,
              "created_at": "2019-05-05T15:56:09.510Z",
              "updated_at": "2019-05-05T15:56:09.510Z",
              "url": "http://www.example.com/api/v1/tasks/3"
            }

### Update a task [PUT /api/v1/tasks/{id}]

+ Parameters
    + id: `4` (number, required)

+ Request updates project
**PUT**&nbsp;&nbsp;`/api/v1/tasks/4`

    + Headers

            Accept: application/json
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]=et&task[deadline]=2019-05-12+18%3A56%3A09+%2B0300&task[project_id]=7

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 4,
              "name": "et",
              "deadline": "2019-05-12T15:56:09.000Z",
              "position": 1,
              "is_done": false,
              "project_id": 7,
              "created_at": "2019-05-05T15:56:09.558Z",
              "updated_at": "2019-05-05T15:56:09.570Z",
              "url": "http://www.example.com/api/v1/tasks/4"
            }

### Delete a task [DELETE /api/v1/tasks/{id}]

+ Parameters
    + id: `5` (number, required)

+ Request deletes project
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/5`

    + Headers

            Accept: application/json
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json

# Group Users


## Users [/users]


### Sign up [POST /api/v1/sign_up]


+ Request signs up user
**POST**&nbsp;&nbsp;`/api/v1/sign_up`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            username=lise_marks&password=VoSv18V8&password_confirmation=VoSv18V8

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 10,
              "username": "lise_marks",
              "password_digest": "$2a$04$MYtMXmnR02UJgsSQ4y4QeOqkyEzV3t31D6CHg5IxVyldqdgB7XEia",
              "created_at": "2019-05-05T15:56:09.618Z",
              "updated_at": "2019-05-05T15:56:09.618Z"
            }
