
# Working with multiple files

## Buffers

[Introduction](https://dockyard.com/blog/2013/10/22/vim-buffers)

* :ls/ :buffers - list buffers with information
* %: buffer in the current window  
* #: alternate buffer, which can be accessed by CTRL-6  
* a: active buffer, loaded and visible  
* h: hidden buffer, loaded but not visible
* -: a buffer that cannot be modified, modifiable off
* =: a buffer that is readonly
* +: a buffer that has been successfully modified
* x: a buffer with read errors
* : if there is no buffer indicator, it signifies a buffer that has not been loaded yet

* :bad <filename>  - open file in hidden buffer
* :e <filename>	 - open buffer

* :b2 - switch to buffer number 2

* gp - move to previous buffer
* gn - move to next buffer
* gl - list all possible buffers

* :bd - close buffer and delete from buffer list

### Layout

* :(v)sp - v: Open File on the left side of current buffer/ on top of current buffer  
* 


### Navigation

--------------

#### Default

:help split

    <Ctrl>w-w                             Cycle through windows  
    <Ctrl>w-[h/j/k/l]                     Fokus certain window
    <Ctrl>w-H                             Go from Horizontal to Vertical Layout
    <Ctrl>w-J                             Go from Vertical to Horizontal Layout
    <Ctrl>w-r                             Swap the two buffers but keep window layout the same

#### Custom


