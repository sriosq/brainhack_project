% This file is generated by SEPIA version: v1.2.2.6
% add general Path
sepia_addpath;

% Input/Output filenames
input = struct();
input(1).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\Phase_data.nii.gz' ;
input(2).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\Magnitude_data.nii.gz' ;
input(3).name = '' ;
input(4).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\sepia_header.mat' ;
output_basename = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\qsm_consensus\Phase_unwrapp\Sepia' ;
mask_filename = ['C:\Users\User\QSM_data\patient1\thr_50_mag_mask.nii.gz'] ;

% General algorithm parameters
algorParam = struct();
algorParam.general.isBET = 0 ;
algorParam.general.isInvert = 0 ;
algorParam.general.isRefineBrainMask = 0 ;
% Total field recovery algorithm parameters
algorParam.unwrap.echoCombMethod = 'ROMEO total field calculation' ;
algorParam.unwrap.offsetCorrect = 'On' ;
algorParam.unwrap.mask = 'SEPIA mask' ;
algorParam.unwrap.qualitymaskThreshold = 0.5 ;
algorParam.unwrap.useRomeoMask = 0 ;
algorParam.unwrap.isEddyCorrect = 0 ;
algorParam.unwrap.isSaveUnwrappedEcho = 0 ;

sepiaIO(input,output_basename,mask_filename,algorParam);
