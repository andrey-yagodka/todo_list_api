

# Group Authentication


## Authentication [/auth]


### Sign In [POST /api/v1/sign_in]


+ Request signs in user
**POST**&nbsp;&nbsp;`/api/v1/sign_in`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            username=denny&password=Qt2wM6Uu

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTcyNzA2MTR9.k9zwU1qqnU3mXR_SV54onL7fCjoPO8Vi4-MTzBgUo2g"
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

            comment[body]=Unde+est+dolor+mollitia.&comment[task_id]=1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "1",
                "type": "comment",
                "attributes": {
                  "body": "Unde est dolor mollitia.",
                  "file": {
                    "name": "file",
                    "record": {
                      "id": 1,
                      "body": "Unde est dolor mollitia.",
                      "task_id": 1,
                      "created_at": "2019-05-06T23:10:14.764Z",
                      "updated_at": "2019-05-06T23:10:14.764Z"
                    },
                    "dependent": "purge_later"
                  }
                },
                "relationships": {
                  "task": {
                    "data": {
                      "id": "1",
                      "type": "task"
                    }
                  }
                }
              }
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

            project[name]=sint

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3",
                "type": "project",
                "attributes": {
                  "name": "sint"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "4",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
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

            project[name]=placeat

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4",
                "type": "project",
                "attributes": {
                  "name": "placeat"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "5",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
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

            task[name]=facere&task[deadline]=2019-05-14+02%3A10%3A14+%2B0300&task[project_id]=6

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3",
                "type": "task",
                "attributes": {
                  "name": "facere",
                  "deadline": "2019-05-13T23:10:14.000Z",
                  "position": 1,
                  "is_done": false
                },
                "relationships": {
                  "comments": {
                    "data": [
            
                    ]
                  }
                }
              }
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

            task[name]=consequatur&task[deadline]=2019-05-14+02%3A10%3A14+%2B0300&task[project_id]=7

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4",
                "type": "task",
                "attributes": {
                  "name": "consequatur",
                  "deadline": "2019-05-13T23:10:14.000Z",
                  "position": 1,
                  "is_done": false
                },
                "relationships": {
                  "comments": {
                    "data": [
            
                    ]
                  }
                }
              }
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

            username=lavada.thompson&password=Qt2wM6Uu&password_confirmation=Qt2wM6Uu

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 10,
              "username": "lavada.thompson",
              "password_digest": "$2a$04$bd0bf7u/EIwuFRYbE.ManuaYqx.cRuKu5aR..ayyjI7sgLj./LGTq",
              "created_at": "2019-05-06T23:10:14.980Z",
              "updated_at": "2019-05-06T23:10:14.980Z"
            }
