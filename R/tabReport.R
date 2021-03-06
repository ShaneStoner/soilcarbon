#' tabReport
#'
#' Compiles all entries (xlsx files) and creates report from a specific tab and a specific set of columns
#'
#' @param dataset_directory directory where compeleted and QC passed soilcarbon datasets are stored
#' @param tab tab selected to generate a report
#' @param cols set of columns to be selected from the specified tab
#' 
#' @return a data.frame
#' 
#' @author Carlos A. Sierra
#' 
#' @export

tabReport = function(dataset_directory, tab, cols){
  scdb=compileAsList(dataset_directory)
  selectcols=paste(tab,".",cols, sep="")
  
  out=NULL
  for(i in 1:length(scdb)){  
    out=rbind(out, as.data.frame(scdb[[i]][tab])[,selectcols])
  }
  return(out)
}
