# WebDriverIO Automation Framework Guide

Welcome to our WebDriverIO Automation Framework! This guide is designed to help you get started, even if you're not familiar with technical setups like this. We'll walk you through each step, explaining what you need to do to run our automated tests on your system.

## What You'll Need

Before we begin, make sure you have these installed:

- **Node.js (version 16.20)**: This is the programming environment we use. You can download it from [Node.js official website](https://nodejs.org/).
- **Docker**: Docker allows us to create a controlled environment for our tests. Download Docker from [Docker's official website](https://www.docker.com/).

## Getting Started

### 1. Understanding Docker Compose

First, let's talk about Docker Compose. This tool helps us set up multiple containers (think of them as lightweight, portable environments) with our necessary applications. For our project, these containers are:

- **WordPress and a Database**: We've got a WordPress site with a pre-configured database ready to be tested against.
- **Report Portal**: This is where the results of our tests will be displayed. We've set up projects, users, API keys, and everything else needed. You won't have to touch any settings here.

### 2. Running Docker Compose

To set up these environments, you'll need to run Docker Compose. Here's how:

1. Open your terminal or command prompt.
2. Navigate to the folder where you've saved our project.
3. Type `docker-compose up` and press Enter. This command pulls the necessary images and sets up the containers based on our configuration.

### 3. Insert Users Script

After setting up the containers, you need to run a script that inserts user data into our Report Portal. This step ensures everything is ready for your tests. The script you run depends on whether you're using Windows, macOS, or Linux. Here's what to do:

1. In the terminal, stay in the project folder.
2. Run the `insert_users` script applicable to your operating system. (We'll provide specific commands in the final README.md)

### 4. Running the Tests

Now, with everything set up, you're ready to run the tests! Here's how:

1. Still in the project's folder in your terminal, type `npm run test` (assuming npm is the package manager we're using).
2. Press Enter. Our tests will now run against the WordPress site, and results will be sent to Report Portal.

## Conclusion

That's it! You've successfully set up and run your tests. If you encounter any issues or have questions, feel free to reach out for support. We're here to help!
