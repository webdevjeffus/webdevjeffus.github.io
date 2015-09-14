# Command Line Cheat Sheet
### Prepared by Jeff George, Sept. 10, 2015, for Dev Bootcamp

## Commands

#### apropos [KEYWORD] - *Apropos*
Searches help files for instances of the keyword. Somewhat useful when you’ve forgotten the command that does something you want to do, like search for a file. In that cast, you’d enter apropos search, and bash will return a list of files containing the keyword for your consideration. (You’re probably better off Googling something like “bash search for file”, though.)

#### cat [FILENAME] - *Catenate*
Prints entire contents of file to terminal.

* cat > [NEW_FILENAME]
Reads whatever the user types, and writes it to the new file NEW_FILENAME. End input by pressing **CTRL-d**.

#### cd [directory-name] - *Call Directory*
* **cd [path]** Jump directly to specified directory.
* **cd** -  Jump back to last directory.

#### chmod - (Add entry)

#### chown - (Add entry)

#### cp [OLD_FILENAME] [NEW_FILENAME] - *Copy file*
Creates a copy of the original file “old-filename” named “new-filename”.
* **cp [FILENAME] [PATH]**
  Copies file to new directory at “path” with same name.
* **cp [FILENAME] [PATH][new-filename]**
  Copies file to new directory and also gives copy a new name.
* **cp -r [CURRENT_DIR_PATH] [NEW_DIR_PATH]**
  Recursively copies all contents of directory at “path” to directory at “different-path”, creating new directory at “different-path”. (Do not us “.” as the path argument to copy the contents of the current directory to “different-path” — this sets up an infinite recursive loop. Nothing good can come of that.)

#### echo [ARGUMENT] - *Echo*
Prints the argument to the terminal.
* **echo $[VARIABLE_NAME]**
  Prints the value of the shell variable, such as USER or HOME, to the terminal. The $ symbol flags the following string as a variable name.

#### env - *Environment*
Prints variables and values defining the shell environment to screen.

* **env | grep -i [KEYWORD]**
  Prints only environmental information containing the keyword. For example, **env | grep -i color** will return every variable that has anything to do with the colors in the shell environment. (The **-i** flag makes **grep** case insensitive.)

#### exit - *Exit*
Terminates the terminal session.

#### export [VARIABLE-NAME]=[value] - *Export*
Creates and assigns a value to a shell variable. Shell variable names must be all-caps. There can be no spaces between the variable name, the equal sign, and the value. String values must be in quotes.

#### file [FILENAME] - *File*
Prints file type.

#### find [START_DIR] -name [WILDCARD] -print — *Find file*
Starts in directory START_DIR and searches for all files with names matching WILDCARD, and prints them to the terminal with their path relative to “startdir”.

#### grep [STRING] [FILENAME] - *"Grep” (or Search)*
Searches for text “string” in text file FILENAME. If the target string includes spaces, it must be entered using quotes (e.g. “The Rolling Stones”); if it’s a single word, quotes are not necessary.
* **grep -i [STRING] [FILENAME]**
  Case insensitive search for string; grep is case sensitive by default(?).
* **grep -n [STRING] [FILENAME]**
  Includes line number in file where string appears.
* **grep [STRING] [FILENAME] > [NEW_FILENAME]**
  Redirects output to new file NEW_FILENAME, instead of displaying on terminal; new file can then be displayed using **less** or edited with **subl**.
* **grep [STRING] [FILENAME] | wc -l**
  Pipes output to second bash command (in this case Word Count), and returns the output of the second command, operating on the output of the first command.

#### head [FILENAME] - *Head*
Prints first ten lines of file to terminal.
* **head -[INTEGER] [FILENAME]** Prints first INTEGER lines of file to terminal.

#### hostname - *Hostname*
Prints name of computer (not the user!) hosting terminal session.

#### info [CMD_NAME] - *Information*
Prints help listing for command CMD_NAME; press **q** to return to command prompt. Similar to man.

#### kill [PID] - *Kill*
Terminates process identified by PID. (Use ps to find PID of process to be terminated.)
* kill -9 [PID] Forces terminal to terminate identified process immediately; use only if regular kill doesn’t work. Does not allow process to clean up temp files, etc., before ending.

#### less [filename] - *“Less” Pager*
Prints contents of file to screen, one screen at a time. Holds at end of file, and allows you to page back through the file.
**_Commands within pager:_**
* **Spacebar**  Page down to next screen.
* **Return**  Advance (move down) one line.
* **/[STRING]** Go to next instance of “string” in file.
* **?[string]** Go to previous instance of “string” in file.
* **n** Repeat previous search (“/” or “?”).
* **q** Exit pager, return to terminal prompt.
* **w** Page up to previous screen.

#### ls - *List*
Prints listing of contents of current directory to terminal.
* **ls**  Lists, by name only, unhidden files and directories in specified directory.
* **ls /etc** Lists, by name only, all files in special directory “etc”.
* **ls [path]** Lists contents of specified directory.
* **ls -d** (Not quite sure what this does.)
* **ls -f** Lists hidden and unhidden files and directories in specified directory.
* **ls -l** Lists directory contents with additional details (permissions, owner, size, date modified), one item per line.
* **ls -l [FILENAME]**
  Prints details about specified file.
* **ls -R** Recursive. Lists all subdirectories, to the end of the directory tree.

#### man [CMD_NAME] - *Manual*
Prints help listing for command CMD_NAME; press **q** to return to command prompt. Similar to **info**.

#### mkdir [NEW_DIR_NAME] - *Make Directory*
Creates a new, empty directory within the current directory.
* **mkdir [PATH]** Create a new directory within the specified directory.
* **mkdir -p [PATH]**
  Create all the missing directories in the specified path. For example, **mkdir tom/dick/harry** (without the -p flag) will create directory “tom/dick/harry” if and only if directories “tom” and “tom/dick” already exist. However, if “tom”, “tom/dick” and “tom/dick/harry” do not exist, **mkdir -p tom/dick/harry** will create "tom", then “tom/dick”, and then “tom/dick/harry”.

#### more [FILENAME] - *“More” Pager*
Prints contents of file to screen, one screen at a time. At end of file, returns user to bash prompt automatically, without allowing you to page backwards through the file.

**_Commands within pager:_**
* **Spacebar**  Page down to next screen.
* **q**   Exit pager, return to terminal prompt.
* **w**   Page up to previous screen.

#### mv [OLD_FILENAME] [NEW_FILENAME] - *Move (or rename)*
Changes name of existing file from OLD_FILENAME to NEW_FILENAME.
* **mv [OLD_PATH][FILENAME] [NEW_PATH]**
  Moves file FILENAME from one directory OLD_PATH to another directory NEW_PATH.
* **mv [OLD_PATH][OLD_FILENAME] [NEW_PATH][NEW_FILENAME]**
  Simultaneously moves file from one directory OLD_PATH to another directory NEW_PATH, and changes name from OLD_FILENAME to NEW_FILENAME.

#### popd - *Pop Directory*
Pop the last (most recent) directory from the list of directories (created by **pushd**), and jump to that directory. Similar to **pop** methods in programming languages; see also **pushd**.

#### ps - *Processes*
Lists all currently-running processes started by the user, by Process ID (PID).

#### pushd [PATH] - *Push Directory*
Save the current directory to the end of a list (array) of directories, then jump to the specified directory. Similar to **push** methods in programming languages; see **popd**.

#### pwd - *Print Working Directory*
Prints path of current directory to terminal

#### rm [FILENAME] - *Remove File*
Deletes the specified file from the directory.
* **rm -rf [PATH]** Recursively removes specified directory and all contents. *Caution! You’re playing with dynamite here.*

#### rmdir [DIR_NAME] - *Remove Directory*
Deletes directory DIR_NAME, provided that the directory is empty.
* **rmdir [PATH]**    Remove directory at specified location.

#### strings [FILENAME] - *Strings*
Finds and prints to the terminal all strings within an executable file.

#### subl - *Sublime text editor*
Opens Sublime Text, if it has been specified in .gitconfig as preferred text editor.
* **subl [FILENAME]** Opens specified file in Sublime.
* **subl .** (subl /<dot/>) Opens current directory, along with all files and subdirectories, in Sublime.

#### sudo - *(Add entry)*

#### tail [FILENAME] - *Tail*
Prints last ten lines of file to terminal.
* tail -[INTEGER] Prints last INTEGER lines of file to terminal.

#### top - *Top*
Lists processes running on system.
* **q** Exits top screen and returns to prompt.

#### touch [FILENAME] - *Touch*
Create a new file FILENAME in the current directory.

#### unset [VARIABLE-NAME] - *Unset*
Removes the value from the named environmental variable, effectively deleting the variable from the environment.

#### wc [FILENAME] - *Word Count*
Counts words in the specified file.
* **wc -l** Returns line count instead of word count.

#### wget [PATH_NAME][FILENAME] - *“W-Get” (or Retrieve)*
Retrieves specified file into memory. Can be used with a URL as PATH_NAME to download file from internet.

#### xargs - *(Add entry)*

## Symbols, operators and wildcards

#### !$ - *Bang Dollar*
Reuses argument from previous command.

#### [CMD_1] | [CMD_2] — *Pipe*
Takes output from command CMD_1 and feeds (“pipes”) it directly into command CMD_2.

#### [CMD_NAME] < [FILENAME] — *Indirect*
Takes input from file FILENAME and sends it into command CMD_NAME. (UNIX only; doesn’t work in Windows.)

#### [CMD_NAME] > [FILENAME] — *Redirect*
Takes output from command CMD_NAME and writes it into file FILENAME, instead of sending it to the terminal.

#### [CMD_NAME] >> [FILENAME] — *Append*
Takes output from command CMD_NAME and appends it into file FILENAME, instead of sending it to the terminal.
