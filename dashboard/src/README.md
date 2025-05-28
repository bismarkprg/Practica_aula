# Crypto Nexus Dashboard

## Overview
The Crypto Nexus Dashboard is a React-based application designed to provide users with a comprehensive interface for managing their cryptocurrency balances and transactions. The dashboard features a clean and modern design, allowing users to easily navigate through different sections and perform various actions related to their cryptocurrency holdings.

## Project Structure
The project is organized into the following main directories and files:

- **public/**: Contains the main HTML file for the React application.
  - **index.html**: The entry point for the web application.

- **src/**: Contains all the source code for the application.
  - **assets/**: Contains image assets used in the application.
    - **images/**: Directory for image files.
      - **icon/**: Directory for icon images.
      - **logo.png**: The logo image used in the application.
  - **components/**: Contains reusable React components.
    - **ActionButton.jsx**: Represents a button in the main actions section of the dashboard.
    - **BalanceBox.jsx**: Displays the total balance and related information.
    - **MainActions.jsx**: Contains the main action buttons for deposit, send, and receive.
    - **Menubar.jsx**: Contains the top navigation bar with user actions and logo.
    - **Navbar.jsx**: Contains the tab navigation for different sections of the dashboard.
    - **TabContent.jsx**: Displays the content for each tab based on the selected tab.
  - **styles/**: Contains CSS styles for the application.
    - **App.css**: Styles for the main container, menubar, navbar, and other components.
  - **App.jsx**: The main component of the application, setting up the layout and state management.
  - **index.js**: The entry point of the React application, rendering the `App` component.

- **package.json**: Configuration file for npm, listing dependencies, scripts, and metadata for the project.

## Setup Instructions
1. Clone the repository:
   ```
   git clone <repository-url>
   cd crypto-nexus-dashboard
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Start the development server:
   ```
   npm start
   ```

4. Open your browser and navigate to `http://localhost:3000` to view the application.

## Usage
Once the application is running, users can:
- View their total cryptocurrency balance.
- Navigate through different sections using the tab navigation.
- Perform actions such as deposit, send, and receive cryptocurrencies.

## Contributing
Contributions are welcome! Please submit a pull request or open an issue for any suggestions or improvements.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.