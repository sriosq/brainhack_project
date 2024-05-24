% This file is generated by SEPIA version: v1.2.2.6
% add general Path
sepia_addpath;

% Input/Output filenames
input = struct();
input(1).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\qsm_consensus\BGFR\Sepia_localfield.nii.gz' ;
input(2).name = '' ;
input(3).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\qsm_consensus\Phase_unwrapp\Sepia_noisesd.nii.gz' ;
input(4).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\sepia_header.mat' ;
output_basename = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\qsm_consensus\QSM\Sepia' ;
mask_filename = ['H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\qsm_consensus\BGFR\Sepia_mask_QSM.nii.gz'] ;

% General algorithm parameters
algorParam = struct();
algorParam.general.isBET = 0 ;
algorParam.general.isInvert = 0 ;
algorParam.general.isRefineBrainMask = 0 ;
% QSM algorithm parameters
algorParam.qsm.reference_tissue = 'Brain mask' ;
algorParam.qsm.method = 'FANSI' ;
algorParam.qsm.tol = 0.1 ;
algorParam.qsm.maxiter = 400 ;
algorParam.qsm.lambda = 0.0005 ;
algorParam.qsm.mu1 = 0.05 ;
algorParam.qsm.mu2 = 1 ;
algorParam.qsm.solver = 'Non-linear' ;
algorParam.qsm.constraint = 'TV' ;
algorParam.qsm.gradient_mode = 'Vector field' ;
algorParam.qsm.isGPU = 1 ;
algorParam.qsm.isWeakHarmonic = 1 ;
algorParam.qsm.beta = 150 ;
algorParam.qsm.muh = 3 ;

sepiaIO(input,output_basename,mask_filename,algorParam);
