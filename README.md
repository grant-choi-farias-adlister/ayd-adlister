# Adlister

Adlister is a web application that allows users to create and manage their classified ads. Additionally, users can create an account, log in, create ads, view their ads, edit and delete ads, and browse through existing ads.

## Technologies Used

- Java
- JavaServer Pages (JSP)
- Java Servlets
- JSTL (JavaServer Pages Standard Tag Library)
- HTML
- CSS
- MySQL
- Apache Tomcat (Servlet Container)

## Features

- Users can create an account by providing their username, email, and password. All users have their unique username and required specific password requirement
- Registered users can log in to their account using their username and password.
- Logged-in users can create new ads by clicking create link in their profile page by providing title and description
- Users can browse and view all the existing ads on the platform.
- Users can edit their own ads by modifying the title and description.
- Delete Ads: Users can delete their own ads, removing them from the platform.
- Users can view their profile information, including their username and email in their profile page.
- Users can edit their profile information, such as updating their username, email address, and password.
- Users can delete their account, which will remove all their ads and related information.

## Setup and Installation

1. Clone the repository in github.com
2. Set up the database:
    - Create a MySQL database.
    - Import the provided SQL file (`adlister.sql`) into the database.
    - Update the database connection details in the `config.properties` file.
3. Configure the project:
    - Update the database connection details in the `config.properties` file.
4. Build and deploy the project:
    - Deploy the generated WAR file to an Apache Tomcat server.
5. Access the application:
    - Open a web browser and visit the URL of the deployed application.

## Usage

1. Open the application in your web browser.
2. Register a new account by providing your username, email, and password.
3. Log in using your registered username and password.
4. Create new ads by providing a title and description.
5. View and manage your ads on the profile page.
6. Edit or delete your ads as needed.
7. Explore existing ads by browsing through the ad listings.
8. Update your user profile information, if desired.
9. Delete your user account if you no longer wish to use the platform.

## Future Enhancements

- Categories and Tags: Add support for categorizing ads and assigning tags for better organization and discoverability.
- Image Uploads: Allow users to upload images for their ads to provide visual representation.
- Messaging System: Implement a messaging system to enable communication between buyers and sellers.
- User Reviews and Ratings: Add a rating system to allow users to leave reviews and ratings for ads and sellers.
- Responsive Design: Make the application responsive to support different devices and screen sizes.

## Contributing

Contributions to the Adlister project are welcome! If you have any ideas, suggestions, or bug reports, please feel free to open an issue or submit a pull request.
