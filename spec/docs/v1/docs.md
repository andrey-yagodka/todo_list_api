

# Group Authentication


## Authentication [/auth]


### Sign In [POST /api/v1/sign_in]


+ Request signs in user
**POST**&nbsp;&nbsp;`/api/v1/sign_in`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            username=felton.becker&password=Vr73M8Xe

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NTY2NzA5MTh9.RjBS5t1h4YM-VFA5HCEYwTli3LmakDsg6mv89xwCsBE"
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

            username=maximo_heel&password=Vr73M8Xe&password_confirmation=Vr73M8Xe

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 2,
              "username": "maximo_heel",
              "password_digest": "$2a$04$guRkAowfDZLXYxSuz1NPlO0UjckBuOMlXWI7ch8OH34NMgdPMQQP2",
              "created_at": "2019-04-30T00:35:18.539Z",
              "updated_at": "2019-04-30T00:35:18.539Z"
            }
