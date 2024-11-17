# Mixpost Project

Welcome to the Mixpost project developed by Shakib Uz Zaman.

Mixpost is a robust and versatile social media management software, designed to streamline social media operations and enhance content marketing strategies.

Overview
The software allows users to create, organize, and schedule their content for times when their audience is most engaged and active. Mixpost's user-friendly scheduling system ensures that content publishing is seamless and efficient.

## Project Languages & Tools

-   **Laravel** 10
-   **PHP** 8.2
-   **Composer** 2+
-   **Tailwind CSS**
-   **Mixpost Package**

## Installation Instructions

1. **Clone the repository:**

    ```bash
    git clone https://github.com/shakibzaman/laravel-mixpost-docker.git

    ```

2. **Navigate to your project directory:**

    ```bash
    cd your-laravel-project

    ```

3. **Install Docker Compose:**
    ```bash
    docker compose up –build
    ```
4. **Set up environment configuration:**

    ```bash
    docker compose exec -it app sh
    cp .env.example .env
    php artisan key:generate

    ```

5. **Edit the .env file to match your database configuration:**

    ```bash
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=your_database_name
    DB_USERNAME=your_database_username
    DB_PASSWORD=your_database_password

    ```

6. **Run migrations for a fresh project:**
    ```bash
    php artisan migrate
    ```
7. **Default Login for Superadmin**
   admin@gmail.com/12345678
