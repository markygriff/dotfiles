"""Set the wallpaper."""
import os
import shutil
import subprocess

from pywal import util

def set_wallpaper(img):
    """Set the wallpaper."""
    proc = subprocess.Popen(['osascript', '-e', 'tell application \"Finder\" to set desktop picture to POSIX file \"%s\"' % img])
    print("wallpaper: Set the new wallpaper")
