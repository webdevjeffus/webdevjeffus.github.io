# Command Line Cheat Sheet

#### apropos [keyword] - Apropos
Searches help files for instances of the keyword. Somewhat useful when you’ve forgotten the command that does something you want to do, like search for a file. In that cast, you’d enter apropos search, and bash will return a list of files containing the keyword for your consideration. (You’re probably better off Googling something like “bash search for file”, though.)

#### cat [filename] - “Cat” (Catalog?)
Prints entire contents of file to terminal.

#### cat > [new-filename]
Reads whatever the user types, and writes it to the new file “new-filename”. End input by pressing CTRL-d.

#### cd [directory-name] - Call Directory
* cd [path] Jump directly to specified directory.
* cd -  Jump back to last directory.

chmod - (Add entry)
chown - (Add entry)

#### cp [old-filename] [new-filename] - Copy file
Creates a copy of the original file “old-filename” named “new-filename”.
* cp [filename] [path]
  Copies file to new directory at “path” with same name.
* cp [filename] [path][new-filename]
  Copies file to new directory and also gives copy a new name.
* cp -r [path] [different-path]
  Recursively copies all contents of directory at “path” to directory at “different-path”, creating new directory at “different-path”. (Do not us “.” as the path argument to copy the contents of the current directory to “different-path” — this sets up an infinite recursive loop. Nothing good can come of that.)

#### echo [argument] - Echo
Prints the argument to the terminal.
* echo $[VARIABLE-NAME]
  Prints the value of the shell variable, such as USER or HOME, to the terminal. The $ symbol flags the following string as a variable name.

#### env - Environment
Prints variables and values defining the shell environment to screen.

#### env | grep -i [keyword]
  Prints only environmental information containing the keyword. For example, env | grep -i color will return every variable that has anything to do with the colors in my shell environment. (The -i flag makes grep case insensitive.)

#### exit - Exit
Terminates the terminal session.

#### export [VARIABLE-NAME]=[value] - Export
Creates and assigns a value to a shell variable. Shell variable names must be all-caps. There can be no spaces between the variable name, the equal sign, and the value. String values must be in quotes.
#### file [filename] - File
Prints file type.

#### find [startdir] -name [wildcard] -print — Find file
Starts in “startdir” and searches for all files with names matching “wildcard”, and prints them to the terminal with their path relative to “startdir”.

#### grep [string] [filename] - “Grep” (or Search)
Searches for text “string” in text file “filename”. If the target string includes spaces, it must be entered using quotes (e.g. “The Rolling Stones”); if it’s a single word, quotes are not necessary.
* grep -i [string] [filename]
  Case insensitive search for string; grep is case sensitive by default(?).
* grep -n [string] [filename]
  Includes line number in file where string appears.
* grep [string] [filename] > [new-filename]
  Redirects output to new file “new-filename”, instead of displaying on terminal; new file can then be displayed using less or edited with subl.
* grep [string] [filename] | wc -l
  Pipes output to second bash command (in this case Word Count), and returns the output of the second command, operating on the output of the first command.

#### head [filename] - Head
Prints first ten lines of file to terminal.
* head -[integer] Prints first “integer” lines of file to terminal.

#### hostname - Hostname
Prints name of computer (not the user!) hosting terminal session.

#### info [command-name] - Information
Prints help listing for command; press q to return to command prompt. Similar to man.

#### kill [PID] - Kill
Terminates process identified by PID. (Use ps to find PID of process to be terminated.)
* kill -9 [PID] Forces terminal to terminate identified process immediately; use only if regular kill doesn’t work. Does not allow process to clean up temp files, etc., before ending.

#### less [filename] - “Less” Pager
Prints contents of file to screen, one screen at a time. Holds at end of file, and allows you to page back through the file.
Commands within pager:
* Spacebar  Page down to next screen.
* Return  Advance (move down) one line.
* /[string] Go to next instance of “string” in file.
* ?[string] Go to previous instance of “string” in file.
* n   Repeat previous search (“/” or “?”).
* q   Exit pager, return to terminal prompt.
* w   Page up to previous screen.

#### ls - List
Prints listing of contents of current directory to terminal.
* ls  Lists, by name only, unhidden files and directories in specified directory.
* ls /etc Lists, by name only, all files in special directory “etc”.
* ls [path] Lists contents of specified directory.
* ls -d (Not quite sure what this does.)
* ls -f Lists hidden and unhidden files and directories in specified directory.
* ls -l Lists directory contents with additional details (permissions, owner, size, date modified), one item per line.
* ls -l [filename]
  Prints details about specified file.
* ls -R Recursive. Lists all subdirectories, to the end of the directory tree.

#### man [command-name] - Manual
Prints help listing for command; press q to return to command prompt. Similar to info.

#### mkdir [new-directory-name] - Make Directory
Creates a new, empty directory within the current directory.
* mkdir [path]    Create a new directory within the specified directory.
* mkdir -p [path]
  Create all the missing directories in the specified path. For example, mkdir tom/dick/harry will created directory “tom/dick/harry” if and only if directories “tom” and “tom/dick” already exist. However, if “tom” exists but “tom/dick” and “tom/dick/harry” do not, mkdir -p tom/dick/harry will create “tom/dick”, and then “tom/dick/harry”.

#### more [filename] - “More” Pager
Prints contents of file to screen, one screen at a time. At end of file, returns user to bash prompt automatically, without allowing you to page backwards through the file.

Commands within pager:
Spacebar  Page down to next screen.
* q   Exit pager, return to terminal prompt.
* w   Page up to previous screen.

#### mv [old-filename] [new-filename] - Move (or rename)
Changes name of existing file from “old-name” to “new-name”.
* mv [old-path][filename] [new-path][filename]
  Moves file from one directory “old-path” to another directory “new-path”.
* mv [old-path][old-filename] [new-path][new-filename]
  Simultaneously moves file from one directory “old-path” to another directory “new-path”, and changes name from “old-filename” to “new-filename”.

#### popd - Pop Directory
Pop the last (most recent) directory from the list of directories (created by pushd), and jump to that directory. Similar to pop methods in programming languages; see also pushd.

#### ps - Processes
Lists all currently-running processes started by the user, by Process ID (PID).

#### pushd [path] - Push Directory
Save the current directory to the end of a list (array) of directories, then jump to the specified directory. Similar to push methods in programming languages; see popd.

#### pwd - Print Working Directory
Prints path of current directory to terminal

#### rm [filename] - Remove File
Deletes the specified file from the directory.
* rm -rf [path] Recursively removes specified directory and all contents. Caution! You’re playing with dynamite here.

#### rmdir [directory-name] - Remove Directory
Deletes named directory, provided that the directory is empty.
rmdir [path]    Remove directory at specified location.

#### strings [filename] - Strings
Finds and prints to the terminal all strings within an executable file.

#### subl - Sublime text editor
Opens Sublime Text, if it has been specified in .gitconfig as preferred text editor.
* subl [filename] Opens specified file in Sublime.
* subl . Opens current directory, along with all files and subdirectories, in Sublime.

#### sudo - (Add entry)

#### tail [filename] - Tail
Prints last ten lines of file to terminal.
* tail -[integer] Prints last “integer” lines of file to terminal.

#### top - Top
Lists processes running on system.
* q Exits top screen and returns to prompt.

#### touch [filename] - Touch
Create a new file “filename” in the current directory.

#### unset [VARIABLE-NAME] - Unset
Removes the value from the named environmental variable, effectively deleting the variable from the environment.

#### wc [filename] - Word Count
Counts words in the specified file.
* wc -l Returns line count instead of word count.
#### wget [pathname][filename] - “W-Get” (or Retrieve)
Retrieves specified file into memory. Can be used with URL as pathname to download file from internet.

#### xargs - (Add entry)

## Symbols, operators and wildcards

#### !$ - Bang Dollar
Reuses argument from previous command.

#### [command-1] | [command2] — Pipe
Takes output from “command-1” and feeds (“pipes”) it directly into “command-2”.
#### [command] < [file] — Indirect
Takes input from “file” and sends it into “command”. (UNIX only; doesn’t work in Windows.)
#### [command] > [file] — Redirect
Takes output from “command-1” and writes it into “file”, instead of sending it to the terminal.
#### [command] >> [file] — Append
Takes output from “command” and appends it into “file”, instead of sending it to the terminal.
