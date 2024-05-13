# About
This project is inspired by a post on the Blizzard forum. It allows a player to see enemy units through fog of war. It is not an exploit or hack but actually a feature built into Warcraft 3: Reforged for custom maps. See [the original post](https://us.forums.blizzard.com/en/warcraft3/t/important%EF%BC%8Cvery-big-bug%EF%BC%8Clocal-file-can-edit-some-config-file/27017), [the original video](https://www.youtube.com/watch?v=BxPuLroFy2Y) and [this post](https://www.hiveworkshop.com/threads/local-files.330849/) for more information.

This project supports 2 different types of revealing: `partial` and `full`. `partial` reveals enemy units and sends but does not show up on the minimap. `full` reveals everything including towers and will show up on the minimap.


# Screenshots 
### PARTIAL 
The minimap looks exactly as it would normally. Enemy units are visible while a round is in progress but are not shown through fog in between rounds. This is the recommended way to use this project.

![partial](https://i.imgur.com/kB5vBtJ.png)

### FULL
The minimap shows all enemy units including buildings. These units are visible at all times. Not recommended because it shows way more than is needed.

![full](https://i.imgur.com/RLHZF1l.png)

### ENEMY SENDS ARE ALWAYS SHOWN IN BOTH TYPES
![send](https://i.imgur.com/3xPw9DG.png)

# Setup

Setup requires 2 steps:     
1) Moving the unit data file to the correct Warcraft 3: Reforged subfolder 
2) Setting a registry key that allows the game to use this file


### **STEP 1: SETTING UP THE UNIT DATA FILE:**
- Download the project as a zip file (top of page → Code → Download ZIP)
- Extract it somewhere you can easily find (such as the Desktop)
- Run `setupunitdata.bat` from the base folder of this project (you need to right click on the file → Run as administrator for it to properly copy the files)

**or if you want to set it up manually:** 

- Download the project as a zip file (top of page → Code → Download ZIP)
- Extract it somewhere you can easily find (such as the Desktop)
- Open a new File Explorer window and navigate to `C:\Program Files (x86)\Warcraft III\_retail_\`
- Drag and drop the `units` folder from either the `partial` (recommended) or the `full` folder of this project into `C:\Program Files (x86)\Warcraft III\_retail_\` from the previous step. 

It should look like this after your done:  
![structure](https://i.imgur.com/ehyibyN.png)


### **STEP 2: ENABLING LOCAL FILES:**
- Run `enable.reg` from the base folder of the project

**or if you want to set it up manually:** 

- Open Registry Editor (Windows Key + R → regedit)
- Navigate to `HKEY_CURRENT_USER\SOFTWARE\BLIZZARD ENTERTAINMENT\`
- Right click on this folder and select `New → Key`
- Name the key `Warcraft III` (case sensitive)
- Right click on the key you just created and select `New → DWORD (32 bit) Value`
- Name this new value `Allow Local Files` (case sensitive)
- Double click on the value and set it to 1
- Restart Warcraft 3

It should look like this after your done: 

![registry](https://i.imgur.com/fjlwgeW.png)





# Q&A
**Q: Is using this bannable?**  
A: No. Allow Local Files is a official feature created by Blizzard for use with custom maps. It has been used for a long time by the map editing community. See [here](https://www.hiveworkshop.com/threads/local-files.330849/) for more information.

**Q: Will custom maps be able to detect if I'm using this feature?**  
A: No. Customs maps can only implement maphack checks that show if a player is using a hack to click units through fog of war. This is not a hack. It does not use any third party program, does not remove fog and does not allow enemy units in fog to be clicked. 
 
**Q: How does it work?**  
A: The `unitdata.slk` file is a sort of spreadsheet thats used by Warcraft 3: Reforged. It contains all units in the game along with various columns determining they're attributes. One of these columns (X;21) is named *fatLOS* which decides whether the unit should be visible even through fog of war. All this project does is provide this file and explain how to use it. 

**Q: How do I disable the unit revealer?**   
A: Either open regedit and change the value of the `Allow Local Files` key to `0` or just run `disable.reg` from the base folder of this project then restart Warcraft III.

**Q: I want to extract and edit the Warcraft 3 local files myself. How can I do this?**  
A: All local files Warcraft 3 uses are packaged into an archive format called CASC. You can view and extract these files (including `unitdata.slk`) by using [CASCView](http://www.zezula.net/en/casc/main.html), selecting `File -> Open Storage` then pointing it to your Warcraft 3 installation. 

**Q: How can I edit unitdata.slk to show or hide certain units?**  
A: Open `unitdata.slk` (under `C:\Program Files (x86)\Warcraft III\_retail_\units`)  with any text editor and find the unit ID you want to show/hide. Then, replace `X;21;K10` with `X;21;K0` to hide a unit or replace `X;21;K0` with `X;21;K10` to show a unit. After editing and saving the file you have to restart Warcraft 3: Reforged for the changes to be visible. A list of unit IDs `reference.txt` is provided in the `extras` folder.
