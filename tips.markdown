Tips
=========
[tmux]
[osxscreenshot]
[misc]
[bashtips]
[urls]

URLs [urls]
============
[Git Ignores](https://github.com/github/gitignore)

Misc [misc]
===========


tar
-------
compress:
tar -czvf name.tgz subdir 
extract:
tar -xzvf tar.file

formats:
z for tgz 
j for bz2


symlink
------------
ln -s REAL-target-to-link-to NAME-of-new-link

Unified Diff
-------------
diff -u f1 f2 

Dynamic Port Forward
----------------------
ssh -D <localportnumber> user@remotehost

Temporary Devicec Files
---------------------------
Rather than:
  find /etc | sort > local-etc
  find /mnt/remote/etc|sort > remote-etc
  diff local-etc remote-etc
  rm local-etc remote-etc
You can create a temp dev file:
  diff <(find /etc | sort) <(find /mnt/remote/etc|sort)

tmux [tmux]
============
C-b     Default Command Key
C-o     rotate
C-z     suspend
!       break window out
#       ls paste buffer
$       rename session
%       split l/r
&       kill window
"       select window
_       rename window
w       choose window
-       move window (index)
0-9     select window
:       prompt
;       move to prev
=       paste to buffer
?       key bindings
[       copy
]       paste
c       new window
f       search text
n       next window
p       prev window
l       left pane
o       right pane
x       kill pane
M-Arrow resize client
(       client left
)       client right

OSX Screenshot [osxscreenshot]
===============================
⌘ ⇧ 3             Fullscreen to Desktop
⌘ ⇧ 4             Rectangle to Desktop
⌘ ⇧ 4  + space    Window to Desktop
Add Control (^) to go to clipboard instead of Desktop
 

Bash Scripting Tips [bashtips]
=================================
Math
------
echo $((3 * 37 + 12)) # Outputs 123
echo $((0xdeadbeef)) # Outputs 3735928559

XArgs: Better for loop
------------------------
find . -iname ' * .php' -print0 | xargs -0 svn add

For loop
-----------
for file in ./ * .php; 
 do echo -n “$file”:\ ;
 grep ‘while’ “$file” | wc -l;
done


Conditionals
------------
The man page for shell does a better job explaining this.
To see conditionals, search for /\[ expression \]
To see control: /Flow-Control
For reference:
if [ -f /var/log/messages ]
then stuff
fi

fi

Shell Cheat sheet
------------------
http://www.cheat-sheets.org/saved-copy/shellscripcheatsheet.pdf


