# ProgressBar

## 1. Information
This 1980is styled progress bar works when you are able to input your currentState(for eg. processed pages/rows/etc) and totalState(for eg. total amount of pages/rows/etc).

## 2. Usage
Import the function, start the progressbar with:
```
ProgressBar $_currentState $_totalState
```

This must be done for every loop/process that have been made. This is to make a nice flow of updates on the screen.

You can also use ProgressBar with an optional third argument, to change the "Progress :" prefix string to something else, like:
```
ProgressBar $_currentState $_totalState "Disk Usage"
```

**Note:** Calling ProgressBar just once like this does eat a newline, so preceding it with a `printf '\n'` is necessary if you want it to appear adjacent to something else.

## 3. Notice
Please note that all output from your application must be sent to ">> /dev/null 2>&1" so no output will interrupt the output from the progressbar.