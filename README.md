# Intro-Replacer
A simple batch script to bunch replace sections from TV series.

This is my first attempt of scripting in Windows Batch.
If you still doesn't know what this script does then here's the explanation: I wanted to have Shaun The Sheep with dubbed intro but original audio in rest of the episode. As the every series has 40+ episodes, do it manually would take large amount of time. Every episode has exactly the same lenght of intro. That's why i made this script.

With MkvMerge, this script is able to cut out the original intro part and replace it with dubbed one. You'll achieve to have dubbed intro + original lang rest of episodes.

##Folder structure
```
\temp
  \mka output\
    \[merged audio].mka
  \mka source after split\
    \[original part].mka
  \mka source intro\
    \[dubbed intro].mka
  \mkv output\
    \[finished and merged].mkv
```

##Steps to get it working
1. Create folder structure like mentioned above (only folders, not files) 
2. Download Intro Replacer.bat
3. Put it into MkvTooNix folder (or somewhere where's the MkvToolNix is installed)
4. Open it via text editor
5. Edit sections that you're supposed to edit by the legend.

##Conclusion
As i never tried to make batch scripts before, this script took me around 12 hours with fixing issues, bugs, errors and learning a ton of new stuff.
This repo is pretty much upload-and-forget so don't expect active maintanance and enhancements to come.
