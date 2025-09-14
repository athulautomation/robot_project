# Robot Framework Demo Project

## 📦 Project Structure

```
tests/       - Robot Framework test case files
resources/   - Reusable keywords
variables/   - Variable files
results/     - Robot output logs
drivers/     - Optional: store local WebDrivers like ChromeDriver
```

---

## 🚀 How to Run

### 1. Local Run (Selenium Grid only)

Make sure you have a Selenium Grid running (standalone Chrome):

```bash
docker run -d -p 4444:4444 selenium/standalone-chrome:latest
```

Run your Robot tests:

```bash
robot -v BROWSER:chrome -v HEADLESS:true -v SELENIUM_GRID_URL:http://localhost:4444/wd/hub -d results tests/sample_test.robot
```

* `BROWSER` → Browser to use (`chrome`)
* `HEADLESS` → `true` or `false`
* `SELENIUM_GRID_URL` → URL of your Selenium Grid

---

## 💡 Setup

1. Install Python (3.11 recommended)
2. Install dependencies:

```bash
pip install -r requirements.txt
pip install robotframework
pip install robotframework-seleniumlibrary
```

3. Ensure ChromeDriver version matches Chrome (only required for local debugging, optional for Grid).

---

## 🔍 Reports

After a test run, check:

* `results/output.xml` → Test execution XML
* `results/log.html` → Detailed test logs
* `results/report.html` → Summary report

---

## ⚡ Notes

* This project is **configured to run on Selenium Grid only**.
* Headless mode is optional and controlled by `HEADLESS` variable.
* Unique Chrome profiles (`--user-data-dir`) are **not needed for Grid**.
* Use the `results/` folder to store all test artifacts.

---

## 🤖 GitHub Actions Workflow (Selenium Grid)

You can run this workflow manually via GitHub Actions:

## 📌 Summary

* ✅ Fully compatible with **Selenium Grid**
* ✅ Headless mode supported
* ✅ GitHub Actions workflow included for CI execution
* ✅ Reports generated in `results/`
