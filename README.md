# GT-i8530
Repo for GT-i8530 galaxy beam cyanogenmod 11.0 based on Team Canjica sources for janice ( https://github.com/TeamCanjica )

To build:
repo init -u git://github.com/TeamCanjica/android.git -b cm-11.0 

remove the line with platform/external/svox from .repo/@manifest.xml, then

repo sync 


(it is gonna take a few hours) then get the sources from this repository.
Then apply patch.sh.
