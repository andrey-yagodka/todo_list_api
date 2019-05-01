

# Group Authentication


## Authentication [/auth]


### Sign In [POST /api/v1/sign_in]


+ Request signs in user
**POST**&nbsp;&nbsp;`/api/v1/sign_in`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            username=agustin_pacocha&password=YbX02pEh

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTY4MTIyNjd9.aM4UdMrCbzbssTc6ewhNlXlnTo0RkIQR3ZGeYHBkGeI"
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

            project[name]=voluptates

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "user_id": 2,
              "id": 1,
              "name": "voluptates",
              "created_at": "2019-05-01T15:51:07.792Z",
              "updated_at": "2019-05-01T15:51:07.792Z",
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

            project[name]=eaque

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "user_id": 3,
              "id": 2,
              "name": "eaque",
              "created_at": "2019-05-01T15:51:07.812Z",
              "updated_at": "2019-05-01T15:51:07.819Z",
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

# Group Users


## Users [/users]


### Sign up [POST /api/v1/sign_up]


+ Request signs up user
**POST**&nbsp;&nbsp;`/api/v1/sign_up`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            username=lannie&password=YbX02pEh&password_confirmation=YbX02pEh

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 5,
              "username": "lannie",
              "password_digest": "$2a$04$givirB0zxFuTST7xXfZiqeLZQSmHo1YEyS58zJ0.eh14fOFFGt.Ua",
              "created_at": "2019-05-01T15:51:07.866Z",
              "updated_at": "2019-05-01T15:51:07.866Z"
            }
