

# Group Authentication


## Authentication [/auth]


### Sign In [POST /api/v1/sign_in]


+ Request signs in user
**POST**&nbsp;&nbsp;`/api/v1/sign_in`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            username=holley&password=827wPz6b

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTY5OTM4Njd9.HGKy85ugCpjqQVzc2A0VmjHeRqc_RMJ3i2yapGdW1Uw"
            }

# Group Projects


## Projects [/projects]


### Create a project [POST /api/v1/projects]


+ Request creates a new project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/json
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=repellat

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1,
              "name": "repellat",
              "user_id": 2,
              "created_at": "2019-05-03T18:17:47.754Z",
              "updated_at": "2019-05-03T18:17:47.754Z",
              "url": "http://www.example.com/api/v1/projects/1"
            }

### Update a project [PUT /api/v1/projects/{id}]

+ Parameters
    + id: `2` (number, required)

+ Request updates project
**PUT**&nbsp;&nbsp;`/api/v1/projects/2`

    + Headers

            Accept: application/json
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=recusandae

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 2,
              "name": "recusandae",
              "user_id": 3,
              "created_at": "2019-05-03T18:17:47.775Z",
              "updated_at": "2019-05-03T18:17:47.782Z",
              "url": "http://www.example.com/api/v1/projects/2"
            }

### Delete a project [DELETE /api/v1/projects/{id}]

+ Parameters
    + id: `3` (number, required)

+ Request deletes project
**DELETE**&nbsp;&nbsp;`/api/v1/projects/3`

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

            task[name]=quisquam&task[deadline]=2019-05-10+21%3A17%3A47+%2B0300&task[project_id]=4

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1,
              "name": "quisquam",
              "deadline": "2019-05-10T18:17:47.000Z",
              "position": 1,
              "is_done": false,
              "project_id": 4,
              "created_at": "2019-05-03T18:17:47.838Z",
              "updated_at": "2019-05-03T18:17:47.838Z",
              "url": "http://www.example.com/api/v1/tasks/1"
            }

### Update a project [PUT /api/v1/tasks/{id}]

+ Parameters
    + id: `2` (number, required)

+ Request updates project
**PUT**&nbsp;&nbsp;`/api/v1/tasks/2`

    + Headers

            Accept: application/json
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]=nihil&task[deadline]=2019-05-10+21%3A17%3A47+%2B0300&task[project_id]=5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 2,
              "name": "nihil",
              "deadline": "2019-05-10T18:17:47.000Z",
              "position": 1,
              "is_done": false,
              "project_id": 5,
              "created_at": "2019-05-03T18:17:47.858Z",
              "updated_at": "2019-05-03T18:17:47.871Z",
              "url": "http://www.example.com/api/v1/tasks/2"
            }

### Delete a project [DELETE /api/v1/tasks/{id}]

+ Parameters
    + id: `3` (number, required)

+ Request deletes project
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/3`

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

            username=jacquelynn&password=827wPz6b&password_confirmation=827wPz6b

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 8,
              "username": "jacquelynn",
              "password_digest": "$2a$04$7CY8ys5DSGeaAA3eMo9ORu5Z6sV3wiX2EiI/KRF7gG7T7Zt2gbOru",
              "created_at": "2019-05-03T18:17:47.916Z",
              "updated_at": "2019-05-03T18:17:47.916Z"
            }
