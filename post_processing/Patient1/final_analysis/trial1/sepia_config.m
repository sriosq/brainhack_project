% This file is generated by SEPIA version: v1.2.2.6
% add general Path
sepia_addpath;

% Input/Output filenames
input = struct();
input(1).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\qsm_consensus\BGFR\Sepia_localfield.nii.gz' ;
input(2).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\Magnitude_data.nii.gz' ;
input(3).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\qsm_consensus\Phase_unwrapp\Sepia_weights.nii.gz' ;
input(4).name = 'C:\Users\User\QSM_data\patient1\sepia_header.mat' ;
output_basename = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\final_analysis\trial1\Sepia' ;
mask_filename = ['C:\Users\User\QSM_data\patient1\diluted_sc_mask.nii'] ;

% General algorithm parameters
algorParam = struct();
algorParam.general.isBET = 0 ;
algorParam.general.isInvert = 0 ;
algorParam.general.isRefineBrainMask = 0 ;
% QSM algorithm parameters
algorParam.qsm.reference_tissue = 'Brain mask' ;
algorParam.qsm.method = 'MEDI' ;
algorParam.qsm.lambda = 2000 ;
algorParam.qsm.wData = 1 ;
algorParam.qsm.percentage = 70 ;
algorParam.qsm.zeropad = [0  0  0] ;
algorParam.qsm.isSMV = 1 ;
algorParam.qsm.radius = 5 ;
algorParam.qsm.merit = 1 ;
algorParam.qsm.isLambdaCSF = 0 ;
algorParam.qsm.lambdaCSF = 100 ;

sepiaIO(input,output_basename,mask_filename,algorParam);
