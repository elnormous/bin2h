# bin2h
Utility for converting binary files to C headers.

## Usage

    bin2h [-i <input>] [-o <output>] [-n <name>] [-d] [-e] [-s] [-z]
    OPTIONS:
    	-d				Print decimal instead of hex literals
    	-e				Output a variable that holds a pointer to the last element of the data
    	-i <input>			Specify the input file (default: stdin)
    	-n <name>			Specify the variable name (default: data)
    	-o <output>			Specify the output file (default: stdout)
    	-s				Output a variable for data size
    	-z				Add a zero to the end of the array

## License
bin2h is released to the Public Domain.
