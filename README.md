# md5hasher
A simple bash script for the HTB Emdee five for life challenge.

This was more difficult than I expected. I got the framework down pretty quickly but got very tripped up in the details.
First, I know a little regex but have not really had to implement it so figuring out the correct way to use it with grep was a challenge.
Then, there were a lot of finicking things, like needing to use double quotes for bash to expand variables and finding out about echo newlines. I ended up echoing each import step to the screen. That ended up not being enough so at the end there is a commented out proxy argument. I was passing the POST request through Burp's proxy in order to see exactly what was being sent and how it was different than it should have been. This was critical in getting the script working correctly.

Potential improvements:
- Removing some of the debug echoes
- Extracting the flag from the final HTML via regex and displaying it
- Consolidating extracting the string and hashing into one line. (I had this in the first version but split this out when I was debugging)
