#### GET /todos


| Param | Value |
| ----- | ----- |


Response: 200
```json
{
  "todos": [
    {
      "id": 1,
      "title": "disintermediate cutting-edge technologies",
      "is_completed": true
    },
    {
      "id": 2,
      "title": "disintermediate cutting-edge technologies",
      "is_completed": true
    },
    {
      "id": 3,
      "title": "disintermediate cutting-edge technologies",
      "is_completed": true
    },
    {
      "id": 4,
      "title": "disintermediate cutting-edge technologies",
      "is_completed": true
    },
    {
      "id": 5,
      "title": "disintermediate cutting-edge technologies",
      "is_completed": true
    },
    {
      "id": 6,
      "title": "disintermediate cutting-edge technologies",
      "is_completed": true
    },
    {
      "id": 7,
      "title": "disintermediate cutting-edge technologies",
      "is_completed": true
    },
    {
      "id": 8,
      "title": "disintermediate cutting-edge technologies",
      "is_completed": true
    },
    {
      "id": 9,
      "title": "disintermediate cutting-edge technologies",
      "is_completed": true
    },
    {
      "id": 10,
      "title": "disintermediate cutting-edge technologies",
      "is_completed": true
    }
  ]
}
```
#### POST /todos


| Param | Value |
| ----- | ----- |
| todo | {"title"=>"Valid title", "is_completed"=>false} |

Response: 200
```json
{
  "todo": {
    "id": 11,
    "title": "Valid title",
    "is_completed": false
  }
}
```
#### POST /todos


| Param | Value |
| ----- | ----- |
| todo | {"title"=>"Valid title", "is_completed"=>false} |

Response: 200
```json
{
  "todo": {
    "id": 11,
    "title": "Valid title",
    "is_completed": false
  }
}
```
#### DELETE /todos/10


| Param | Value |
| ----- | ----- |
| id | 10 |

Response: 200
```json
{
}
```
#### PUT /todos/11


| Param | Value |
| ----- | ----- |
| todo | {"title"=>"Valid title", "is_completed"=>false} |
| id | 11 |

Response: 200
```json
{
  "todo": {
    "id": 11,
    "title": "Valid title",
    "is_completed": false
  }
}
```
#### PUT /todos/11


| Param | Value |
| ----- | ----- |
| todo | {"title"=>"Valid title", "is_completed"=>false} |
| id | 11 |

Response: 200
```json
{
  "todo": {
    "id": 11,
    "title": "Valid title",
    "is_completed": false
  }
}
```
