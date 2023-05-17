package main

import "core:os"
import "core:fmt"

main :: proc() {
	if len(os.args) > 2 {
		if os.exists(os.args[1]) {
			file, err := os.read_entire_file_from_filename(os.args[1])
			if err != true {
				fmt.println("Err: Couldn't read from ADF file.")
			}
			for i := 0; i < len(file); i += 1 {
				file[i] ~= 0x22
			}
			err = os.write_entire_file(os.args[2], file)
			if err != true {
				fmt.println("Err: Couldn't create MP3 file.")
			}
		} else {
			fmt.println("Err: ADF file not found. Check if path is correct.")
		}
	} else {
		fmt.println("usage: adftomp3 <adf file> <output file>")
	}
}