

# Group Authentication


## Authentication [/auth]


### Sign In [POST /api/v1/sign_in]


+ Request signs in user
**POST**&nbsp;&nbsp;`/api/v1/sign_in`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            username=cassaundra&password=password

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTg3MDUxMTZ9.j8uBy95SWoxklkCmHikhstXQKsy4yny2FD1Q4_4TD3w"
            }

# Group Comments


## Comments [/comments]


### Create a comment [POST /api/v1/comments]


+ Request creates a comment
**POST**&nbsp;&nbsp;`/api/v1/comments`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE1NTg3MDUxMTZ9.TNKJGUCFl37Wc65TTMQ996JfUxuIr6scqOC3H2tWvzs
            Content-Type: application/x-www-form-urlencoded

    + Body

            comment[body]=Qui+soluta+nihil+quia+tempora+nihil+architecto.&comment[task]&comment[task_id]=1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "1",
                "type": "comment",
                "attributes": {
                  "body": "Qui soluta nihil quia tempora nihil architecto.",
                  "file": {
                    "name": "file",
                    "record": {
                      "id": 1,
                      "body": "Qui soluta nihil quia tempora nihil architecto.",
                      "task_id": 1,
                      "created_at": "2019-05-23T13:38:36.361Z",
                      "updated_at": "2019-05-23T13:38:36.361Z"
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE1NTg3MDUxMTZ9.26cNliGBJVfOn-Xc0zqZPQw-Yrw-TXMcMXjJ5S9qfTI
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "deleted": true
            }

# Group Projects


## Projects [/projects]


### Create a project [POST /api/v1/projects]


+ Request creates a new project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE1NTg3MDUxMTZ9.sgJ96eDEACra25pZJ4le_xstQIoimHrvcbWy5rpXK5I
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=ipsa

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3",
                "type": "project",
                "attributes": {
                  "name": "ipsa"
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE1NTg3MDUxMTZ9.ROygZ3i4P2QXkQsWrp4axaZG3D6bgcsDKCIMGF9Ck-Q
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=exercitationem

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4",
                "type": "project",
                "attributes": {
                  "name": "exercitationem"
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJleHAiOjE1NTg3MDUxMTZ9.C6mZM9i7SPqFmRMyhbAW24Ft9N48YPZsFL2Uc-Nlxjo
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "deleted": true
            }

# Group Tasks


## Tasks [/tasks]


### Create a task [POST /api/v1/tasks]


+ Request creates a new task
**POST**&nbsp;&nbsp;`/api/v1/tasks`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE1NTg3MDUxMTZ9.BeiQKGDfVUm_6HRidhFzEp3obKyJRyNcOQxy8jAc3VI
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]=placeat&task[deadline]=2023-05-23+13%3A38%3A36+UTC&task[project_id]=6

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3",
                "type": "task",
                "attributes": {
                  "name": "placeat",
                  "deadline": "2023-05-23T13:38:36.000Z",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo4LCJleHAiOjE1NTg3MDUxMTZ9.aoC08Hw8U0lxXKeLbH4eDJe3ktHoi38oiM_Ff-gOw88
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]=adipisci&task[deadline]=2028-05-23+13%3A38%3A36+UTC&task[project_id]=7

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4",
                "type": "task",
                "attributes": {
                  "name": "adipisci",
                  "deadline": "2028-05-23T13:38:36.000Z",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo5LCJleHAiOjE1NTg3MDUxMTZ9.0j1-k5Ixo3y6UKz34FK-92iH8_vqD25aB1xKttdXGgM
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "deleted": true
            }

# Group Users


## Users [/users]


### Sign up [POST /api/v1/sign_up]


+ Request signs up user
**POST**&nbsp;&nbsp;`/api/v1/sign_up`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            username=madison&password=password&password_confirmation=password

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 10,
              "username": "madison",
              "password_digest": "$2a$04$19Aj5FAy8Pp/NQZlc5LxNO6qTpH7ilTBrcVV1JBMrw9QtQlkSz1Sq",
              "created_at": "2019-05-23T13:38:36.578Z",
              "updated_at": "2019-05-23T13:38:36.578Z"
            }
