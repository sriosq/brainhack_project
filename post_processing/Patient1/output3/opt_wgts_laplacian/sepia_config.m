% This file is generated by SEPIA version: v1.2.2.6
% add general Path
sepia_addpath;

% Input/Output filenames
input = struct();
input(1).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\Phase_data.nii.gz' ;
input(2).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\Magnitude_data.nii.gz' ;
input(3).name = '' ;
input(4).name = 'D:\Poly_MSc_Code\libraries_and_toolboxes\sepia_header.mat' ;
output_basename = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\output3\opt_wgts_laplacian\Sepia' ;
mask_filename = [''] ;

% General algorithm parameters
algorParam = struct();
algorParam.general.isBET = 0 ;
algorParam.general.isInvert = 0 ;
algorParam.general.isRefineBrainMask = 0 ;
% Total field recovery algorithm parameters
algorParam.unwrap.echoCombMethod = 'Optimum weights' ;
algorParam.unwrap.unwrapMethod = 'Laplacian (STI suite)' ;
algorParam.unwrap.isEddyCorrect = 0 ;
algorParam.unwrap.isSaveUnwrappedEcho = 1 ;

sepiaIO(input,output_basename,mask_filename,algorParam);
