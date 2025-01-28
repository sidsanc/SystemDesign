# Roman Numeral Converter

A robust, scalable, and performant Spring Boot application designed to convert integers (1–3999) into Roman numerals. Built with a focus on clean architecture, modularity, and adherence to best practices, this project demonstrates advanced Java development skills.

---

## Features

- **RESTful API**: Exposes endpoints for seamless integer-to-Roman numeral conversion.
- **Error Handling**: Implements global exception handling for a user-friendly experience.
- **Database Integration**: Stores previously converted values using JPA and an H2 in-memory database.
- **CORS Configuration**: Pre-configured to support cross-origin requests, enabling frontend integration.
- **Containerization**: Docker support for easy deployment.
- **Unit Testing**: Comprehensive tests to ensure reliability.

---

## Tech Stack

- **Framework**: Spring Boot 3.4.2
- **Languages**: Java 21
- **Database**: H2 (in-memory)
- **Build Tool**: Maven
- **Containerization**: Docker
- **Libraries**:
  - Lombok
  - Spring Boot Actuator
  - Spring Boot DevTools

---

## Endpoints

### Base URL
`http://localhost:8080`

### API Endpoints
- **Home**: `GET /`
  - Displays a welcome message.
- **Convert Integer**: `GET /romannumeral/{number}`
  - Converts the given integer (1–3999) to a Roman numeral.
  - Example: `GET /romannumeral/10` → `{ "input": 10, "output": "X" }`

---

## Setup and Run

### Prerequisites
- Java 21
- Maven 3.8+
- Docker (optional for containerized deployment)

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/niveditasancheti11/roman-numeral-converter.git
   cd roman-numeral-converter
   ```

2. Build the application:
   ```bash
   ./mvnw clean install
   ```

3. Run the application:
   ```bash
   ./mvnw spring-boot:run
   ```

4. Access the application:
   - Open `http://localhost:8080` in your browser.

### Run with Docker
1. Build the Docker image:
   ```bash
   docker build -t roman-numeral-converter .
   ```
2. Run the Docker container:
   ```bash
   docker run -p 8080:8080 roman-numeral-converter
   ```

---

## Code Highlights

### Roman Numeral Conversion Logic
The `RomanNumeralService` class uses a `TreeMap` to recursively map integers to Roman numerals, ensuring high performance and readability.
```java
public String toRoman(int number) {
    if (number < 1 || number > 3999) {
        throw new IllegalArgumentException("Number out of range (1-3999)");
    }
    int l = map.floorKey(number);
    if (number == l)
        return map.get(number);
    return map.get(l) + toRoman(number - l);
}
```

### Persistent Storage
Previously converted results are cached using JPA for improved efficiency:
```java
public RomanNumeralEntity getOrSaveRomanNumeral(int number) {
    return repository.findById(number).orElseGet(() -> {
        String roman = toRoman(number);
        RomanNumeralEntity entity = new RomanNumeralEntity(number, roman);
        repository.save(entity);
        return entity;
    });
}
```

---

## Testing
Run unit tests:
```bash
./mvnw test
```
The application includes comprehensive tests to ensure the reliability of core functionality and API endpoints.

---

## Future Enhancements
- Add support for converting Roman numerals back to integers.
- Implement authentication for secure API access.
- Integrate with a frontend React application for enhanced user experience.

---

## Author
**Nivedita Sancheti**  
LinkedIn: [Profile](https://www.linkedin.com/in/niveditasancheti11)  
GitHub: [niveditasancheti11](https://github.com/niveditasancheti11)

---

## License
This project is licensed under the MIT License. See the LICENSE file for details.
