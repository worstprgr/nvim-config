# My Neovim config
## Notes
### clangd can't find C header files
On Windows 10+, if clangd complains about missing header files,
add a `compile_flags.txt` to your project (=local scope) or home directory 
(=global scope).  

And add the following line:  
`-IC:/<path to mingw>/mingw64/x86_64-w64-mingw32/include`

*Note:*  
```text
-IC:/<path to mingw>/mingw64/x86_64-w64-mingw32/include
 ^
 That "missing" space between "-I" and your drive letter is on purpose
```
