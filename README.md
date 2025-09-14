# Robot Framework Demo Project

### 📦 Project Structure
- `tests/` - Test case files
- `resources/` - Reusable keywords
- `variables/` - Variable files
- `results/` - Robot output logs
- `drivers/` - Store WebDrivers like ChromeDriver

### 🚀 How to Run
```bash
robot -d results tests/sample_test.robot
```

### 💡 Setup
1. Install Python
2. Install Robot Framework:
    ```bash
    pip install -r requirements.txt
    ```
3. Make sure ChromeDriver is in PATH or placed inside `drivers/`.

### 🔍 Reports
Check `results/log.html` and `results/report.html` after test run.
