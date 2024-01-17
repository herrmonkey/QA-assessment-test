# Automated Testing with Docker and SeleniumBase QA Testing Engineer Profile Test Ricardo Gonzalez

This project demonstrates automated testing using SeleniumBase and Docker. The provided test script (`test_google_search.py`) automates Google search scenarios.

## Prerequisites

Before running the tests, ensure you have the following installed:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Python (if not already installed): [Install Python](https://www.python.org/downloads/)

## Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/herrmonkey/QA-assessment-test.git
   cd QA-assessment-test
   ```

2. Build the Docker image:

   ```bash
   docker build -t seleniumbase .
   ```

## Running the Tests

Run the tests inside the Docker container:

```bash
docker run -it --rm seleniumbase pytest test_google_search.py
```

This command mounts the current directory into the Docker container, where the tests are executed.

## Test Script (`test_google_search.py`)

The test script `test_google_search.py` contains two test scenarios using SeleniumBase. It simulates user interactions with the Google search page.

- **Scenario 1**: Searches for "test automation" and verifies that the first 3 results contain the word "automation".
- **Scenario 2**: Searches for "test automation," clicks on the first result, and verifies that the page title contains the word "automation".

## Notes

- Make sure to customize the test script or Dockerfile if your project structure or requirements differ.
- Ensure your Docker daemon is running before executing the Docker commands.

Feel free to explore and modify the project according to your testing needs. Happy testing!
