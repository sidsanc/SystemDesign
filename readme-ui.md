# Roman Numeral Converter UI
<img src="https://github.com/user-attachments/assets/e8d38416-1e55-4ae4-916f-6ea00f714993" width="400" height="200"/>
![image](https://github.com/user-attachments/assets/569708c7-ae61-4e22-bb2e-3037517f78e1)



A modern and responsive React-based frontend application for converting integers (1–3999) into Roman numerals. Designed with an elegant UI and clean architecture, this project demonstrates expertise in frontend development and integration with a RESTful backend.

---

## Features

- **Interactive UI**: User-friendly interface for inputting integers and displaying Roman numeral results.
- **Dark Mode**: Toggle between light and dark themes for better usability.
- **Real-Time Conversion**: Converts numbers instantly using a REST API.
- **Error Handling**: Displays descriptive error messages for invalid inputs or API failures.
- **Mobile-Responsive Design**: Fully responsive and optimized for various screen sizes.

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
   - Navigate to `http://localhost:5173` in your browser.

### Build for Production
1. Build the application:
   ```bash
   npm run build
   ```

2. Preview the build:
   ```bash
   npm run preview
   ```

---

## File Structure

Below is an overview of the essential files and folders in the project:

```
.
├── Dockerfile
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

## Key Components

### `ConverterForm`
Interactive form with increment/decrement buttons and direct input to handle integer values (1–3999)【46†source】.

### `ResultDisplay`
Displays the converted Roman numeral or error messages dynamically based on API responses【49†source】.

### `useRomanNumeralConverter`
Custom React Hook for seamless API integration and state management【50†source】.

### `Header` and `Footer`
Includes branding, theme toggle, and credits for a polished look and feel【48†source】【47†source】.

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
