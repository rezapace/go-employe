# Employee CRUD API

This project is an advanced Employee CRUD (Create, Read, Update, Delete) API designed using Go as the primary programming language, leveraging the Gorilla Mux router for handling HTTP requests, and MySQL for database management. It provides a robust backend solution for managing employee data efficiently.

## Project Structure

```
employe/
├── main.go
├── go.mod
├── go.sum
├── controllers/
│   └── employee.go
├── models/
│   └── employee.go
├── config/
│   └── db.go
├── router/
│   └── router.go
└── migrations/
    └── 000001_create_tables.up.sql
    └── 000001_create_tables.down.sql
```

## Prerequisites

- Go 1.21.3
- MySQL
- [Golang Migrate](https://github.com/golang-migrate/migrate)

## Setup

1. **Clone the repository:**
    ```sh
    git clone <repository-url>
    cd employe
    ```

2. **Install dependencies:**
    ```sh
    go mod tidy
    ```

3. **Set up the database:**
    - Create a MySQL database named `goblog`.
    - Update the `.env` file with your database credentials.

4. **Run migrations:**
    ```sh
    go run main.go
    ```

To run the migrations for setting up your database, execute the following command in your terminal:

```sh
migrate -database "mysql://root:pass@localhost:3306/employe" -path migrations up
```


## Running the API

Start the server:
```sh
go run main.go
```

The API will be available at `http://localhost:8080`.

## API Endpoints

- **Create Employee**
    ```http
    POST /employee
    Content-Type: application/json
    Body: { "name": "John Doe", "city": "New York" }
    ```

- **Get Employee**
    ```http
    GET /employee/{id}
    ```

- **Update Employee**
    ```http
    PUT /employee/{id}
    Content-Type: application/json
    Body: { "name": "Jane Doe", "city": "Los Angeles" }
    ```

- **Delete Employee**
    ```http
    DELETE /employee/{id}
    ```

## Postman Collection

Import the `postman_collection.json` file into Postman to test the API endpoints.

## License

This project is licensed under the MIT License.

