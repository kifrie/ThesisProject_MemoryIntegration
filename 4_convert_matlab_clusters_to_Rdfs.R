# load packages
library(tidyverse)
library(purrr)
library(R.matlab)

################################################################################
##################################### ERPs #####################################
################################################################################

############################# ERP each channel TW1 #############################    #ERP each TW1
# import the matlab files 
list.import.mat <- R.matlab::readMat("C:/Thesis_Analysis/R/ERP_Effect_for_each_channel_TW1.mat") 

key <- list.import.mat$output[1] %>% unlist()
data <-list.import.mat$output[2]

# check the list 
#view(list.import.mat)

# convert list to dataframe 
ERP_effect_each_TW1 <- do.call(rbind.data.frame, list.import.mat)

# change column- and row names 
#columns
ERP_effect_each_TW1 <- ERP_effect_each_TW1 %>% 
  rename(ERP_POz = 'V1',
         ERP_Pz = 'V2',
         ERP_CPz = 'V3',
         ERP_CP2 = 'V4',
         ERP_C2 = 'V5',
         ERP_CP1 = 'V6',
         ERP_P1 = 'V7',
         ERP_CP3 = 'V8',
         ERP_P3 = 'V9',
         ERP_PO3 = 'V10',
         ERP_FC4 = 'V11')

#rows: name rows, add column with subj
rownames(ERP_effect_each_TW1) <- c("1","2","3","4", "5", "6", "8", "9", "10", "12", "13", "14", "15", "16", "17", "18", "19", "20", "22", "23", "24", "25", "26", "27", "28", "29", "30", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41")
ERP_effect_each_TW1$subj <- c(1,2,3,4,5,6,8,9,10,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,28,29,30,32,33,34,35,36,37,38,39,40,41)

rm(list.import.mat)
rm(data)
rm(key)





############################# ERP all channels TW1 #############################    #ERP all TW1
# import the matlab files 
list.import.mat <- R.matlab::readMat("C:/Thesis_Analysis/R/ERP_Effect_for_all_channels_TW1.mat") 

key <- list.import.mat$output[1] %>% unlist()
data <-list.import.mat$output[2]

# check the list 
#view(list.import.mat)

# convert list to dataframe 
ERP_effect_all_TW1 <- do.call(rbind.data.frame, list.import.mat)

# change column- and row names columns
ERP_effect_all_TW1 <- ERP_effect_all_TW1 %>% 
  rename(TW1 = 'V1')

#rows: name rows, add column with subj
rownames(ERP_effect_all_TW1) <- c("1","2","3","4", "5", "6", "8", "9", "10", "12", "13", "14", "15", "16", "17", "18", "19", "20", "22", "23", "24", "25", "26", "27", "28", "29", "30", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41")
ERP_effect_all_TW1$subj <- c(1,2,3,4,5,6,8,9,10,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,28,29,30,32,33,34,35,36,37,38,39,40,41)


rm(list.import.mat)



############################# ERP each channel TW2 #############################    #ERP each TW2
# import the matlab files 
list.import.mat <- R.matlab::readMat("C:/Thesis_Analysis/R/ERP_Effect_for_each_channel_TW2.mat") 

key <- list.import.mat$output[1] %>% unlist()
data <-list.import.mat$output[2]

# check the list 
#view(list.import.mat)

# convert list to dataframe 
ERP_effect_each_TW2 <- do.call(rbind.data.frame, list.import.mat)

# change column- and row names 
#columns
ERP_effect_each_TW2 <- ERP_effect_each_TW2 %>% 
  rename(ERP_CPz = 'V1',
         ERP_CP2 = 'V2',
         ERP_P4 = 'V3',
         ERP_P2 = 'V4',
         ERP_CP1 = 'V5',
         ERP_P1 = 'V6',
         ERP_Pz = 'V7',
         ERP_CP4 = 'V8',
         ERP_Cz = 'V9',
         ERP_CP3 = 'V10',
         ERP_POz = 'V11',
         ERP_FCz = 'V12',
         ERP_Fz = 'V13')

#rows: name rows, add column with subj 
rownames(ERP_effect_each_TW2) <- c("1","2","3","4", "5", "6", "8", "9", "10", "12", "13", "14", "15", "16", "17", "18", "19", "20", "22", "23", "24", "25", "26", "27", "28", "29", "30", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41")
ERP_effect_each_TW2$subj <- c(1,2,3,4,5,6,8,9,10,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,28,29,30,32,33,34,35,36,37,38,39,40,41)


rm(list.import.mat)



############################# ERP all channels TW2 #############################    #ERP all TW2
# import the matlab files 
list.import.mat <- R.matlab::readMat("C:/Thesis_Analysis/R/ERP_Effect_for_all_channels_TW2.mat") 

key <- list.import.mat$output[1] %>% unlist()
data <-list.import.mat$output[2]

# check the list 
#view(list.import.mat)

# convert list to dataframe 
ERP_effect_all_TW2 <- do.call(rbind.data.frame, list.import.mat)

# change column- and row names columns
ERP_effect_all_TW2 <- ERP_effect_all_TW2 %>% 
  rename(TW2 = 'V1')

#rows: name rows, add column with subj
rownames(ERP_effect_all_TW2) <- c("1","2","3","4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37")
ERP_effect_all_TW2$subj <- c(1,2,3,4,5,6,8,9,10,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,28,29,30,32,33,34,35,36,37,38,39,40,41)


rm(list.import.mat)





################################################################################
##################################### TFs ######################################
################################################################################

############################# TFs all channels TW1 #############################    #TF all TW1
# import the matlab files 
list.import.mat <- R.matlab::readMat("C:/Thesis_Analysis/R/TF_Effect_for_all_channels_TW1.mat") 

key <- list.import.mat$output[1] %>% unlist()
data <-list.import.mat$output[2]

# check the list 
#view(list.import.mat)

# convert list to dataframe 
TF_effect_all_TW1 <- do.call(rbind.data.frame, list.import.mat)

# change column- and row names 
#columns
TF_effect_all_TW1 <- TF_effect_all_TW1 %>% 
  rename(TW1 = 'V1')

#rows: name rows, add column with subj
rownames(TF_effect_all_TW1) <- c("1", "2", "3", "4", "6", "8", "12", "13", "14", "16", "17", "18", "19", "20", "22", "23", "24", "25", "28", "29", "30", "32", "33", "34", "35", "37", "39", "40", "41")
TF_effect_all_TW1$subj <- c(1, 2, 3, 4, 6, 8, 12, 13, 14, 16, 17, 18, 19, 20, 22, 23, 24, 25, 28, 29, 30, 32, 33, 34, 35, 37, 39, 40, 41)

rm(list.import.mat)



############################# TFs each channels TW1 ############################    #TF each TW1
# import the matlab files 
list.import.mat <- R.matlab::readMat("C:/Thesis_Analysis/R/TF_Effect_for_each_channel_TW1.mat") 

key <- list.import.mat$output[1] %>% unlist()
data <-list.import.mat$output[2]

# check the list 
#view(list.import.mat)

# convert list to dataframe 
TF_effect_each_TW1 <- do.call(rbind.data.frame, list.import.mat)

# change column- and row names 
#columns
TF_effect_each_TW1 <- TF_effect_each_TW1 %>% 
  rename(T8 = 'V1',
         C6 = 'V2',
         C4 = 'V3',
         FT8 = 'V4',
         FC6 = 'V5',
         TP8 = 'V6',
         CP6 = 'V7',
         CP4 = 'V8',
         P4 = 'V9',)

#rows: name rows, add column with subj
rownames(TF_effect_each_TW1) <- c("1", "2", "3", "4", "6", "8", "12", "13", "14", "16", "17", "18", "19", "20", "22", "23", "24", "25", "28", "29", "30", "32", "33", "34", "35", "37", "39", "40", "41")
TF_effect_each_TW1$subj <- c(1, 2, 3, 4, 6, 8, 12, 13, 14, 16, 17, 18, 19, 20, 22, 23, 24, 25, 28, 29, 30, 32, 33, 34, 35, 37, 39, 40, 41)

rm(list.import.mat)



############################# TFs all channels TW2 #############################    #TF all TW2
# import the matlab files 
list.import.mat <- R.matlab::readMat("C:/Thesis_Analysis/R/TF_Effect_for_all_channels_TW2.mat") 

key <- list.import.mat$output[1] %>% unlist()
data <-list.import.mat$output[2]

# check the list 
#view(list.import.mat)

# convert list to dataframe 
TF_effect_all_TW2 <- do.call(rbind.data.frame, list.import.mat)

# change column- and row names 
#columns
TF_effect_all_TW2 <- TF_effect_all_TW2 %>% 
  rename(TW2 = 'V1')

#rows: name rows, add column with subj
rownames(TF_effect_all_TW2) <- c("1", "2", "3", "4", "6", "8", "12", "13", "14", "16", "17", "18", "19", "20", "22", "23", "24", "25", "28", "29", "30", "32", "33", "34", "35", "37", "39", "40", "41")
TF_effect_all_TW2$subj <- c(1, 2, 3, 4, 6, 8, 12, 13, 14, 16, 17, 18, 19, 20, 22, 23, 24, 25, 28, 29, 30, 32, 33, 34, 35, 37, 39, 40, 41)

rm(list.import.mat)



############################# TFs each channels TW2 ############################    #TF each TW2
# import the matlab files 
list.import.mat <- R.matlab::readMat("C:/Thesis_Analysis/R/TF_Effect_for_each_channel_TW2.mat") 

key <- list.import.mat$output[1] %>% unlist()
data <-list.import.mat$output[2]

# check the list 
#view(list.import.mat)

# convert list to dataframe 
TF_effect_each_TW2 <- do.call(rbind.data.frame, list.import.mat)

# change column- and row names 
#columns
TF_effect_each_TW2 <- TF_effect_each_TW2 %>% 
  rename(TP8 = 'V1',
         P8 = 'V2',
         PO4 = 'V3',
         Pz = 'V4',
         POz = 'V5',
         P1 = 'V6',
         P2 = 'V7',
         P4 = 'V8',
         P6 = 'V9',
         C6 = 'V10',
         C4 = 'V11',
         C2 = 'V12')

#rows: name rows, add column with subj
rownames(TF_effect_each_TW2) <- c("1", "2", "3", "4", "6", "8", "12", "13", "14", "16", "17", "18", "19", "20", "22", "23", "24", "25", "28", "29", "30", "32", "33", "34", "35", "37", "39", "40", "41")
TF_effect_each_TW2$subj <- c(1, 2, 3, 4, 6, 8, 12, 13, 14, 16, 17, 18, 19, 20, 22, 23, 24, 25, 28, 29, 30, 32, 33, 34, 35, 37, 39, 40, 41)

rm(list.import.mat)

