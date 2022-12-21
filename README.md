# my_mpv

## my_file_ratings.lua
Script to apply a rating for currently playing file

in input.conf add:
```
KP0 script-message-to my_file_rating rate-file 0
KP1 script-message-to my_file_rating rate-file 1
KP2 script-message-to my_file_rating rate-file 2
KP3 script-message-to my_file_rating rate-file 3
KP4 script-message-to my_file_rating rate-file 4
KP5 script-message-to my_file_rating rate-file 5
SHIFT+KP0 script-message-to my_file_rating rate-file_shift 0
SHIFT+KP1 script-message-to my_file_rating rate-file_shift 1
SHIFT+KP2 script-message-to my_file_rating rate-file-shift 2
SHIFT+KP3 script-message-to my_file_rating rate-file-shift 3
SHIFT+KP4 script-message-to my_file_rating rate-file-shift 4
SHIFT+KP5 script-message-to my_file_rating rate-file-shift 5
```

then you can apply file ratings of from 0/0.5 up to 5 stars, which can be displayed, for example in dolphin file manager in the column 'rating'
