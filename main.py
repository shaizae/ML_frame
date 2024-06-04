import subprocess
import webbrowser

if __name__ == '__main__':
    subprocess.run("python manage.py runserver 0.0.0.0:8000")
    webbrowser.open_new("http://0.0.0.0:8000")
