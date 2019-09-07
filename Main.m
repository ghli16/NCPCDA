clear
clc
load dataset.mat


warning('off');
%{
KK=10;
r=0.3;

ld_adjmat_new=WKNKN( LD_adjmat, lncSim, disSim, KK, r );
%}

        circSim=miRNASS( cd_adjmat, disease_sim );     
        disSim01  = GSD( cd_adjmat );
        circSim01  = GSM( cd_adjmat );
        disSim02  = combineSim(disease_sim,disSim01);
        circSim02  = combineSim(circSim,circSim01);
        
        matPredict=NCPLDA(circSim02, disSim02, cd_adjmat);


[NCP_rank,NCP_rank_known] =Rank_miRNAs( matPredict, cd_adjmat, circRNA_list, disease_list);

Write_file( NCP_rank )



