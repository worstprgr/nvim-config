# My Neovim config
## Shortcuts

```text
  ~Misc
File explorer             <space>pv
Fuzzy finder              <space>pf

Brackets around word      N: yswb
Brackets around mark      V: S)
     *curly brackets      V: S}

Move line up              V: K
        down              V: J

Copy to OS clipboard      V: <space>c

Show vertical diff        :vert diffs <filename>
```

```text
  ~Comments
Comment line out          N: gcc
Combine motions           N: gc<motion>
Comment marked            V: gc
Uncomment                 N: gcgc
```

```text
  ~Panes
New pane                  :new
                          :vnew

Split pane                :sp
                          :vsp

Change pane               <C-w>hjkl (or arrow keys)
Close pane                :q

Change pane size          <space>, (horizontal)
                          <space>.
                          <space>+ (vertical)
                          <space># 

Reset pane size           <space>-
```

```text
  ~Module :Ex
Toggle hidden files       gh
Create file               %
Create directory          d
Delete file/directory     D
Rename file/directory     R

Assign target dir         mt
Mark file/dir for cp/mv   mf
Copy marked to target     mc
Move marked to target     mm
Run ext. cmd on marked    mx
```

```text
  ~Module fugitive
Open Git cmd              <space>gs

stage (add) file          s
unstage                   u
toggle stage/unstage      -
unstage everything        U

create commit             cc
amend commit (w/ msg)     ca
amend commit (w/o msg)    ce

toggle inline diff        =
insert inline diff        >

Git diff split            dd
close diff buffer         dq

open in new hsplit        gO
open in new tab           O
```

```text
  ~Module telescope
Find files                <space>pf
Find files (git)          <C-p>
Grep                      <space>ps
```

```text
  ~Module coc
Go to definition          gd
Go to type def            gy
Go to implementation      gi
Go to references          gr
Jump back                 <C-o>
```


## Notes
### clangd can't find C header files
On Windows 10+, if clangd complains about missing header files,
create a `compile_flags.txt` in your:  
- project root folder (local scope)
- drive root (global scope)

And add the following line, which should point to the path, where your C lib is located.  
In my case I'm using the lib from gcc:  
`-IC:/<path to mingw>/mingw64/x86_64-w64-mingw32/include`  

**Hint**  
If you want to know, where your `gcc` is installed, use `where gcc` on the Windows command line.  

*Note 1:*  
```text
-IC:/<path to mingw>/mingw64/x86_64-w64-mingw32/include
 ^
 That "missing" space between "-I" and your drive letter is on purpose
```

*Note 2:*  
If you're using clang as a compiler, the `compile_flags.txt` also applies 
to your build process.
