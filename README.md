<div id="header" align = center>
  <img src="https://github.com/Javisanchezf/media/blob/main/pc-gif.webp" width="200"/>
</div>

<h1 align = center>Get_next_line by javisanchezf</h1>

> School 42 Málaga cursus project.

This repository contains all archives for the project __get_next_line__ in the __School 42 Málaga core cursus__. It's a custom-made library of useful functions in __C language__. The repository includes the `Makefile` and the `get_next_line.h` library.

<h2 align = center>
	<a href="#about">About</a>
	<span> · </span>
	<a href="#index">Index</a>
	<span> · </span>
	<a href="#requirements">Requirements</a>
	<span> · </span>
	<a href="#instructions">Instuctions</a>
	<span> · </span>
	<a href="#testing">Testing</a>
	<span> · </span>
	<a href="#license">License</a>
</h2>

## About

This project is a __C library__ of useful functions that are allowed to be used in future __School 42 cursus__ projects. With access to this library, the coding proccess in incoming projects will be more effective. The aim of rewrite this functions is to get a better understanding of them, and get a whide range of utilities for the next projects. [You can find more information in the subject](https://github.com/Javisanchezf/42pdfs/blob/main/get_next_line_subject.pdf). As it's specified in the subjet, all the archives are in the same folder.

The code in this repository follows [the rules of the Norminette](https://github.com/Javisanchezf/42pdfs/blob/main/norme.pdf).

## Index
Replicates the operation of the printf function.
## Requirements
The library is written in __C language__ and needs the `gcc` compiler, with `<stdlib.h>`, `<fcntl.h>` and `<unistd.h>` standard libraries to run.

## Instructions

### 1. Download the repository
```
git clone https://github.com/Javisanchezf/42Malaga-get_next_line.git 42Malaga-get_next_line
cd 42Malaga-get_next_line
```

### 2. Compiling the library


For __basic__ functions:
```
make all
```

For __bonus__ functions:
```
make bonus
```



### 3. Cleaning all binary (.o) and executable files (.a)

To delete all files generated with make, go to the path and run:
```
make fclean
```

### 4. Using it in your code

To use the library functions in your code, simply include this header:
```
#include "get_next_line.h"
```

## Testing
This library have been tested with the normal mode of [Francinette](https://github.com/xicodomingues/francinette) to the date of 23/03/2023.

## License
This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

You are free to:
* Share: copy and redistribute the material in any medium or format.
* Adapt: remix, transform, and build upon the material.

Under the following terms:
* Attribution: You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
* NonCommercial: You may not use the material for commercial purposes.
* ShareAlike: If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.

<h3 align = right>Share the content!</h3>

[<img src="https://github.com/Javisanchezf/media/blob/main/whatsapp-icon.png" width="50" height="50" align = right></img>](https://api.whatsapp.com/send?text=Hey!%20Check%20out%20this%20cool%20repository%20I%20found%20on%20Github.%20%0ahttps://github.com/Javisanchezf/42-Libft)
[<img src="https://github.com/Javisanchezf/media/blob/main/telegram-icon.webp" width="50" height="50" align = right></img>](https://t.me/share/url?url=https://github.com/javisanchezf/42-Libft&text=Hey!%20Check%20out%20this%20cool%20repository%20I%20found%20on%20Github.)
[<img src="https://github.com/Javisanchezf/media/blob/main/twitter-icon.png" width="50" height="50" align = right></img>](https://twitter.com/intent/tweet?url=https://github.com/Javisanchezf/42-Libft&text=Hey!%20Check%20out%20this%20cool%20repository%20I%20found%20on%20Github)
[<img src="https://github.com/Javisanchezf/media/blob/main/linkedin-icon.png" width="50" height="50" align = right></img>](https://www.linkedin.com/sharing/share-offsite/?url=https://github.com/javisanchezf/42-Libft)