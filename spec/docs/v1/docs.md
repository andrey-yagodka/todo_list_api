

# Group Users


## Users [/users]


### Create user [POST /api/v1/users]


+ Request creates new user
**POST**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            username=kerry.aufderhar&password=VwFz7cCi&password_confirmation=VwFz7cCi

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 1,
              "username": "kerry.aufderhar",
              "password_digest": "$2a$04$HkseMFLL8d6WtCJXi8OIp./jeAlYJV9LLpIgfJX1kEmDkb7oUz..S",
              "created_at": "2019-04-28T22:35:16.840Z",
              "updated_at": "2019-04-28T22:35:16.840Z"
            }
