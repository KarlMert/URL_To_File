URL_To_File

This package contains only only one function at this time: `url2file`.

This function was created to streamline the process of downloading files from URLs. The usual approach is to download a file onto OS storage, then drag and drop or copy and paste. This can create duplicate files, incomplete or incorrect transfer; this is a fragile, low fidelity processs. Another benefit, in terms of reproducability is that the URL where the data was aquired can be a part of the markdown file. This makes the URL clear and accessable when generating citations and easily updated when needed. 

Here's the info from the documentation. Also note there is  vignette if you want a more in depth discription of functionality. 

Download a file from a URL into your working directory

This is a fuction to streamline downloading files from a URL to a new or existing folder in the working directory.

urlfile provide a URL adddress in quotes of the file to download stored in a vector

dirID provide the name of an existing or new folder (default = "Downloaded_files")

By executing "url2file("https://page.com")" will download the page into a file called "Downloaded_files" in your working directory.

You can specify an existing folder in the working directory (dirID="myfolder") or specify a new folder (dirID="newfolder")
