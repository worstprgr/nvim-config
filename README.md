# My Neovim config
## Shortcuts

```text
Go to definition:         <space>gd
Go back from definition:  <C-o>

File explorer:            <space>pv
Fuzzy finder:             <space>pf

Brackets around word:     N: yswb
Brackets around mark:     V: S)
     *curly brackets:     V: S}

Move line up:             V: K
        down:             V: J

Copy to OS clipboard:     V: <space>c
```

```text
New pane:                 :new
                          :vnew

Split pane:               :sp
                          :vsp

Change pane:              <C-w>hjkl (or arrow keys)
Close pane:               :q

Change pane size:         <space>, (horizontal)
                          <space>.
                          <space>+ (vertical)
                          <space># 

Reset pane size:          <space>-
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
