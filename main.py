import os

from ML_frame.manage import main

if __name__ == '__main__':
    os.chdir(os.path.join(os.path.dirname(__file__), "ML_frame"))
    main()
