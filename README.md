# Auto update commands

Uses a monthly scheduled task to run our script. 
This script renames the html file to a random number and pushes this change to
the remote git server.

## Setup

### Executable script

Mark our script as an executable.
```
$ chmod +x update_filename.sh 
```

### Schedule task 

We will be using crontab to schedule this task on a user basis.
The following command will open a file on which we will add our task's 
schedule.
```
$ crontab -e
```

> Hint current folder path is displayed using the `pwd` command.

> Hint : By default your system might be using the vi text editor, here are
>        some of it's basic usage.

> Hint : Use `Esc+I` to enter into text insert mode, and `Esc` to exit it.

Enter insert mode and write to the file while replacing FILEPATH with your 
current directory path.
```
0 10 1 * * FILEPATH/update_filename.sh
```
> Hint : To save the file and exit the file editor type `:x`

Exit the insert mode and save, exit the file editor.

To verify cron task has been correctly setup use :
```
$ crontab -l 
```


