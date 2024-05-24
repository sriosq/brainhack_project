% This file is generated by SEPIA version: v1.2.2.6
% add general Path
sepia_addpath;

% Input/Output filenames
input = struct();
input(1).name = 'C:\Users\User\QSM_data\patient1\fmap_thr_50.nii.gz' ;
input(2).name = '' ;
input(3).name = '' ;
input(4).name = 'D:\Poly_MSc_Code\libraries_and_toolboxes\sepia_header.mat' ;
output_basename = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\output6\BGFR\trial1\Sepia' ;
mask_filename = ['C:\Users\User\QSM_data\patient1\final_qsm_mask.nii.gz'] ;

% General algorithm parameters
algorParam = struct();
algorParam.general.isBET = 0 ;
algorParam.general.isInvert = 0 ;
algorParam.general.isRefineBrainMask = 0 ;
% Background field removal algorithm parameters
algorParam.bfr.refine_method = 'None' ;
algorParam.bfr.refine_order = 4 ;
algorParam.bfr.erode_radius = 0 ;
algorParam.bfr.erode_before_radius = 0 ;
algorParam.bfr.method = 'VSHARP' ;
algorParam.bfr.radius = [9:-1:1] ;

sepiaIO(input,output_basename,mask_filename,algorParam);
