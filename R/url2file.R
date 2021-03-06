#' @title Download a file from a URL into your working directory
#' @description This is a fuction to streamline downloading files from a URL to a new or existing folder in the working directory.
#' @param  urlfile provide a URL adddress in quotes of the file to download stored in a vector
#' @param dirID provide the name of an existing or new folder (default = "Downloaded_files")
#'
#' #' @examples
#' You can specify an existing folder in the working directory (dirID="myfolder").
#' Or specify a new folder (dirID="newfolder")
#'
#' @examples
#' Passing the address to "url2file("https://page.com")" will download the page.
#' This will be into a file called "Downloaded_files" in your working directory.
#' @import utils
#' @export
url2file <- function(urlfile, dirID = "Downloaded_files"){
  fileName <- strsplit(urlfile, split="/")[[1]]
  fileName <- fileName[length(fileName)]
  if(!dir.exists(dirID)) dir.create(dirID)
  download.file(urlfile, destfile = paste(dirID, "/", fileName, sep=''))
}
