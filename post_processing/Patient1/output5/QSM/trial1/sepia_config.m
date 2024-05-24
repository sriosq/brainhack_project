% This file is generated by SEPIA version: v1.2.2.6
% add general Path
sepia_addpath;

% Input/Output filenames
input = struct();
input(1).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\output5\VSHARP\trial3\Sepia_localfield.nii.gz' ;
input(2).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\Magnitude_data.nii.gz' ;
input(3).name = '' ;
input(4).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\sepia_header.mat' ;
output_basename = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\output5\QSM\trial1\Sepia' ;
mask_filename = [''] ;

% General algorithm parameters
algorParam = struct();
algorParam.general.isBET = 0 ;
algorParam.general.isInvert = 0 ;
algorParam.general.isRefineBrainMask = 0 ;
% QSM algorithm parameters
algorParam.qsm.reference_tissue = 'CSF' ;
algorParam.qsm.method = 'FANSI' ;
algorParam.qsm.tol = 0.1 ;
algorParam.qsm.maxiter = 150 ;
algorParam.qsm.lambda = 0.0002 ;
algorParam.qsm.mu1 = 0.02 ;
algorParam.qsm.mu2 = 1 ;
algorParam.qsm.solver = 'Non-linear' ;
algorParam.qsm.constraint = 'TGV' ;
algorParam.qsm.gradient_mode = 'Vector field' ;
algorParam.qsm.isGPU = 0 ;
algorParam.qsm.isWeakHarmonic = 0 ;

sepiaIO(input,output_basename,mask_filename,algorParam);