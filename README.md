# My Neovim config
## Notes
### clangd can't find C header files
On Windows 10+, if clangd complains about missing header files,
create a `compile_flags.txt` in your:  
- project root folder (local scope)
- drive root (global scope)

And add the following line, which should point to the path your C lib is located.  
In my case I'm using the lib from gcc:  
`-IC:/<path to mingw>/mingw64/x86_64-w64-mingw32/include`  

*Note 1:*  
```text
-IC:/<path to mingw>/mingw64/x86_64-w64-mingw32/include
 ^
 That "missing" space between "-I" and your drive letter is on purpose
```

*Note 2:*  
If you're using clang as a compiler, the `compile_flags.txt` also applies 
to your build process.
