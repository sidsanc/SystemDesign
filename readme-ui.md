# Roman Numeral Converter UI

<img src="https://github.com/user-attachments/assets/569708c7-ae61-4e22-bb2e-3037517f78e1" width="500" height="250"/>
<img src="https://github.com/user-attachments/assets/e8d38416-1e55-4ae4-916f-6ea00f714993" width="500" height="250"/>

A modern and responsive React-based frontend application for converting integers (1–3999) into Roman numerals. Designed with an elegant UI and clean architecture, this project demonstrates expertise in frontend development and integration with a RESTful backend.

---

## Features

- **Interactive UI**: User-friendly interface for inputting integers and displaying Roman numeral results.
- **Dark Mode**: Toggle between light and dark themes for better usability.
- **Real-Time Conversion**: Converts numbers instantly using a REST API.
- **Error Handling**: Displays descriptive error messages for invalid inputs or API failures.
- **Mobile-Responsive Design**: Fully responsive and optimized for various screen sizes.

---

## Reference Specification
Roman numeral specifications were referenced from [Wikipedia: Roman Numerals](https://en.wikipedia.org/wiki/Roman_numerals).

---

## Tech Stack

- **Framework**: React 18
- **Styling**: Bootstrap 5, Bootstrap Icons
- **HTTP Client**: Axios
- **Build Tool**: Vite
- **Language**: TypeScript
- **State Management**: React Hooks

---

## Setup and Run

### Prerequisites
- Node.js 18+
- npm or yarn

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/niveditasancheti11/roman-numeral-converter-ui.git
   cd roman-numeral-converter-ui
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Start the development server:
   ```bash
   npm run dev
   ```

4. Open the application:
   - Navigate to `http://localhost:3000` in your browser.

### Build for Production
1. Build the application:
   ```bash
   npm run build
   ```

2. Preview the build:
   ```bash
   npm run preview
   ```

### Run with Docker
1. Build the Docker image:
   ```bash
   docker build -t roman-numeral-converter-ui .
   ```
2. Run the Docker container:
   ```bash
   docker run -p 3000:3000 roman-numeral-converter-ui
   ```

---

## Engineering and Testing Methodology

- **Engineering Practices**:
  - Modular design with reusable components (`ConverterForm`, `ResultDisplay`, etc.).
  - State management using React Hooks and a custom hook (`useRomanNumeralConverter`) for API calls.
  - Responsive design using Bootstrap for cross-device compatibility.

- **Testing**:
  - Unit tests implemented in `App.test.tsx` to validate core functionalities.
  - Manual testing of edge cases like invalid inputs (e.g., numbers outside 1–3999).
  - Error handling tested for API failures and input validation.

---

## File Structure

Below is an overview of the essential files and folders in the project:

```
.
├── Dockerfile              # Simplifies containerization for deployment.
├── README.md
├── eslint.config.js        # ESLint configuration for linting TypeScript and React code.
├── index.html              # Entry point for the Vite app.
├── package.json            # Project metadata and dependencies.
├── public
│   ├── favicon.ico         # Favicon for the app.
│   ├── index.html          # Public HTML template.
│   ├── logo192.png         # Logo for PWA setup.
│   ├── logo512.png         # High-resolution logo for PWA.
│   ├── manifest.json       # PWA configuration.
│   └── robots.txt          # Instructions for web crawlers.
├── src
│   ├── App.css             # Global styles for the application.
│   ├── App.test.tsx        # Unit tests for the main app component.
│   ├── App.tsx             # Root component of the application.
│   ├── components          # Reusable UI components.
│   │   ├── ConverterForm.tsx     # Input form for number conversion.
│   │   ├── Footer.tsx            # Footer component with credits.
│   │   ├── Header.tsx            # Header with theme toggle functionality.
│   │   └── ResultDisplay.tsx     # Component to display conversion results.
│   ├── constants.ts        # Contains application constants like API base URL.
│   ├── hooks
│   │   └── useRomanNumeralConverter.tsx  # Custom hook for API integration and state management.
│   ├── index.css           # Base styles for the app.
│   ├── index.tsx           # Entry point for React app rendering.
│   ├── logo.svg            # Application logo.
│   ├── pages
│   │   └── Home.tsx        # Main page displaying the Roman numeral converter.
│   └── setupTests.ts       # Configuration for testing setup.
├── tsconfig.app.json       # TypeScript configuration for the app.
├── tsconfig.json           # Base TypeScript configuration.
├── tsconfig.node.json      # TypeScript configuration for Node.js.
├── vite-env.d.ts           # Vite-specific TypeScript declarations.
└── vite.config.ts          # Vite configuration for development and build.
```

### Highlights
- **`components`**: Houses reusable UI components, ensuring modularity and reusability.
- **`hooks`**: Contains a custom hook for handling API calls and state, encapsulating logic cleanly.
- **`pages`**: Organizes different application pages, starting with `Home.tsx` as the main page.
- **`public`**: Stores static files directly served by the application.
- **`Dockerfile`**: Simplifies containerization for deployment.

---

## Dependency Attribution

- **React**: JavaScript library for building user interfaces.
- **Bootstrap**: Framework for responsive design.
- **Axios**: HTTP client for API integration.
- **Vite**: Frontend build tool for fast development.
- **TypeScript**: Superset of JavaScript for static typing.
- **ESLint**: Tool for identifying and fixing problems in JavaScript/TypeScript code.

---

## Key Components

### `ConverterForm`
Interactive form with increment/decrement buttons and direct input to handle integer values (1–3999).

### `ResultDisplay`
Displays the converted Roman numeral or error messages dynamically based on API responses.

### `useRomanNumeralConverter`
Custom React Hook for seamless API integration and state management.

### `Header` and `Footer`
Includes branding, theme toggle, and credits for a polished look and feel.

---

## API Integration
The application communicates with the backend Roman Numeral Converter API using Axios:
- Endpoint: `GET /romannumeral/{number}`
- Base URL: Configurable via `BASE_URL` constant.

---

## Enhancements
- Add unit tests for all components.
- Deploy the application on a cloud platform (e.g., AWS, Netlify, or Vercel).
- Implement localization for multi-language support.
- Enhance accessibility (ARIA-compliant components).

---

## Author
**Nivedita Sancheti**  
LinkedIn: [Profile](https://www.linkedin.com/in/niveditasancheti11)  
GitHub: [niveditasancheti11](https://github.com/niveditasancheti11)

---

## License
This project is licensed under the MIT License. See the LICENSE file for details.
