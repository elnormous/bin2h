# bin2h
Utility for converting binary files to C headers.

## Usage

    bin2h [-i <input>] [-o <output>] [-n <name>] [-d] [-e] [-s] [-z]
    OPTIONS:
    	-d				Print decimal instead of hex literals
    	-e				Output variable that holds a pointer to the last element of the data
    	-i <input>			Specify input file
    	-n <name>			Specify variable name
    	-o <output>			Specify output file
    	-s				Output variable for data size
    	-z				Add zero to the end of the array

## License
bin2h is released to the Public Domain.
