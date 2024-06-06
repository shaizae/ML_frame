import os
import subprocess
import webbrowser

if __name__ == '__main__':
    path = os.path.join(os.path.dirname(__file__), "ML_frame", "manage.py")
    subprocess.run(f"python {path} runserver 0.0.0.0:8000")
    webbrowser.open_new("http://0.0.0.0:8000")
