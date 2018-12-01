#' url2file
#' This function downloads a file from a web address and places it in a file in your working directory.
#' Arguments:
#' urlFile: provide a url address pointing to the file to download stored in a vector
#' dirID: name of the directory to save files in (default = "Downloaded_files");
#' @export
url2file <- function(urlFile, dirID = "Downloaded_files"){
  fileName <- strsplit(urlFile, split="/")[[1]]
  fileName <- fileName[length(fileName)]
  if(!dir.exists(dirID)) dir.create(dirID)
  download.file(urlFile, destfile = paste(dirID, "/", fileName, sep=''))
}
