# College Course Application

This project is a College Course Application built with React (Frontend) and Spring Boot (Backend). The MySQL database is Dockerized for easy setup.
React Routers

## Prerequisites
- Docker & Docker Compose installed
- Java 23
- Node.js & npm

## Running the MySQL Database with Docker
1. Clone the repository.
2. Navigate to the project directory.
3. Run the following command to start the MySQL database with Docker:
   ```bash
   docker-compose up

## Frontend Routes

The frontend application utilizes React Router for navigation between different views. Below are the key routed paths:

### Routes Overview

| Path                      | Component              | Description                                                 |
|---------------------------|-----------------------|--------------------------------------------------------------|
| `/colleges`               | `CollegesList`        | Displays List of Colleges with details. |
| `/colleges/courses`       | `CollegeCourseList`   | Shows a list of all colleges along with courses details.     |

## Running the Frontend
1. Navigate to the `frontend` directory.
2. Install dependencies: `npm install`.
3. Start the React app: `npm start`.

The React application will be accessible at `http://localhost:3000`.