# Sun-Capture-Script
Script to Capture most recent images of the sun and automatically set new image as my desktop

## Usage
I currently use this script through cron on Linux. On Windows or Mac, this process may be a little different. If you're unfamiliar with the process, see below:  
In the terminal:
```
$ crontab -e   # Let's me edit the cron file
```
My cron command:  
```
30 * * * * /$PATH/Pictures/Sun/Sun-Capture-Script/get_new_sun_image.sh >/dev/null 2>&1
```
This will run my script every 30 minutes of every day. 

## What it does
The biggest issue I was having with this script was actually setting my desktop background through the terminal since none of the options I was finding online seemed to be working for me. I finally found a technique that worked for me and have implemented it here:  
```
$ dconf write "/org/gnome/desktop/background/picture-uri" "'file://$PATH/Pictures/latest_4096_0304.jpg'"
$ dconf write "/org/gnome/desktop/background/picture-options" "scaled"
```
When this executes, it will write the file path for the desktop image I want in place. I'm making a copy of the newest image from the Sun and storing them separately, however I point `gnome` to the most recent one every time. Additionally, I execute this every 30 minutes in the script primarily to make sure it updates. The second line is for the scaling of the image on my desktop. If I don't do this, I end up with something like this:  
![Image of desktop not scaled well](https://github.com/JohnsonClayton/Sun-Capture-Script/edit/master/media/desktop_not_scaled.png)  
However, with this 'scaled' addition, we can see the full image with the timestamp in the bottom left. I found this option while perusing the `dconf-editor`. 
![Image of desktop scaled well](https://github.com/JohnsonClayton/Sun-Capture-Script/edit/master/media/desktop_scaled.png)
