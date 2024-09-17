<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>To-Do App - README</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1, h2 {
            color: #333;
        }
        code {
            background-color: #f1f1f1;
            padding: 2px 4px;
            border-radius: 4px;
            font-family: monospace;
        }
        pre {
            background-color: #f1f1f1;
            padding: 10px;
            border-radius: 4px;
            overflow-x: auto;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>To-Do App</h1>
        <p>This is a simple and visually appealing To-Do application built with a customized app bar and intuitive features such as slide-to-delete. The app is connected to a local database using Hive for seamless offline functionality.</p>

        <h2>Features</h2>
        <ul>
            <li><strong>Custom UI</strong>: A clean and good-looking user interface with a personalized app bar for easy navigation.</li>
            <li><strong>Slide to Delete</strong>: Easily remove tasks by sliding them to delete.</li>
            <li><strong>Local Database (Hive)</strong>: The app is connected to a local database (Hive) ensuring persistent data storage without the need for internet connectivity.</li>
            <li><strong>Task Management</strong>: Add, update, and delete tasks quickly.</li>
        </ul>

        <h2>Screenshots</h2>
        - [Try it now](https://monish-todoapp.web.app/))

        <h2>Installation</h2>
        <p>1. Clone the repository:</p>
        <pre><code>git clone https://github.com/yourusername/todo-app.git
cd todo-app</code></pre>

        <p>2. Install dependencies:</p>
        <pre><code>flutter pub get</code></pre>

        <p>3. Run the application:</p>
        <pre><code>flutter run</code></pre>

        <h2>Dependencies</h2>
        <ul>
            <li><strong>Hive</strong>: Local database for storing to-do items.</li>
            <li><strong>Flutter</strong>: UI framework used to develop the application.</li>
        </ul>

        <p>Make sure to add these dependencies in your <code>pubspec.yaml</code>:</p>
        <pre><code>dependencies:
  flutter:
    sdk: flutter
  hive: ^2.0.4
  hive_flutter: ^1.1.0</code></pre>

        <h2>Usage</h2>
        <ul>
            <li><strong>Add Tasks</strong>: Use the input field to add new tasks.</li>
            <li><strong>Delete Tasks</strong>: Swipe left or right on a task to delete it.</li>
            <li><strong>Persist Data</strong>: All tasks are stored locally using Hive, ensuring the data is available even when offline.</li>
        </ul>

        <h2>Contributing</h2>
        <p>Contributions are welcome! If you'd like to contribute, feel free to fork the repository and create a pull request.</p>

        <h2>License</h2>
        <p>This project is licensed under the MIT License - see the <a href="LICENSE">LICENSE</a> file for details.</p>
    </div>
</body>
</html>
