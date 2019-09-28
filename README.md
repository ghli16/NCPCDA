
Type: MATLAB Code

Title: NCPCDA: network consistency projection for circRNA-disease association prediction
=================
Description: This program can be opened by matlab 2016. After opening it, you can run it directly by running the script file named Main.m.
This program implements the NCPCDA algorithm with network consistency projection framework, predicting circRNA-disease 
associations.

Files:
1.dataset.mat: this dataset is retrieved from CircR2Disease database.
  dataset2.mat: this dataset is retrieved from circRNADisease database.
  
These two datasets both contain the following four files

1) cd_adjmat stores known circRNA-disease association information;

2) circRNA_list and disease_list store circRNA ids and disease ids, respectively;

3) disease_sim stores disease semantic similarity matrix;


2.Code
1) Main.m: the entrance of the program;

2) miRNASS.m: function computing circRNA functional similarity;

3) GSD.m: function computing disease Gaussian interaction profile kernel;
   
4) GSM.m: function computing circRNA Gaussian interaction profile kernel;

5) combineSim.m: function integrating similarity for circRNAs or diseases;

6) NCPLDA.m : function computing association scores between circRNAs and diseases by NCPCDA algorithm;

7) Rank_miRNAs.m: function sorting candidate circRNAs according to association scores;
 
8) Write_file.m: function writing candidate circRNAs of each disease to the file named NCP_rank.xls.

3.Results
1) NCP_rank.xls: function saveing the predicted circRNAs for all diseases.

