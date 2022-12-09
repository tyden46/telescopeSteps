library(vroom)
library(dplyr)
library(stringr)
setwd("/Users/tyden46/Desktop/AMPEL/Cytokine_Stimulation_HERVs/tsvFiles")
listOfFiles=list.files(pattern="telescope-.*.tsv")
counter=1
for(x in listOfFiles){
  thisFile=vroom(x)
  colnames(thisFile)=c("transcript",str_extract(x,pattern="SRR[0-9]+"))
  if(counter==1){
    fullTable=thisFile
  }else{
    fullTable=full_join(fullTable,thisFile)
  }
  counter=counter+1
}
write.table(fullTable,"HERV_Counts_PRJNA718582.tsv",quote=F,row.names = F,sep = '\t')
