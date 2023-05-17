# ADF to MP3
The ADF file format is used for the radio stations in Vice City. It's basically a XOR-ed MP3 file. You can "decrypt" it by XORing all bytes against 0x22. This is what this program does.

# Install.
- Install Odin. 
- Clone the repository and CD into it.
- Run `odin build .`
- You now have your complied executable!

# Usage
- Grab your `.adf` file. You'll find them in `GTA VICE CITY Installation/Audio`. Google to find out where your GTA Vice City install might be located.
- `adftobin <path to .adf file> <output file name, example: test.mp3>`
- Done!

# License
No need. 
