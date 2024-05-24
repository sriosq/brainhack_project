% This file is generated by SEPIA version: v1.2.2.6
% add general Path
sepia_addpath;

% Input/Output filenames
input = struct();
input(1).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\output\step2_local_field\Sepia_localfield.nii.gz' ;
input(2).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\Magnitude_data.nii.gz' ;
input(3).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\output\step1_phase_unwrapping\Sepia_weights.nii.gz' ;
input(4).name = 'D:\Poly_MSc_Code\libraries_and_toolboxes\sepia_header.mat' ;
output_basename = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\output\Sepia' ;
mask_filename = [''] ;

% General algorithm parameters
algorParam = struct();
algorParam.general.isBET = 0 ;
algorParam.general.isInvert = 0 ;
algorParam.general.isRefineBrainMask = 0 ;
% QSM algorithm parameters
algorParam.qsm.reference_tissue = 'None' ;
algorParam.qsm.method = 'TKD' ;
algorParam.qsm.threshold = 0.15 ;

sepiaIO(input,output_basename,mask_filename,algorParam);