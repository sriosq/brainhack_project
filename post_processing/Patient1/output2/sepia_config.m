% This file is generated by SEPIA version: v1.2.2.6
% add general Path
sepia_addpath;

% Input/Output filenames
input = struct();
input(1).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\Phase_data.nii.gz' ;
input(2).name = '' ;
input(3).name = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\output2\BG field removal and Phase unwrapping\opt_weigths_3D_best_path\Sepia_noisesd.nii.gz' ;
input(4).name = 'D:\Poly_MSc_Code\libraries_and_toolboxes\sepia_header.mat' ;
output_basename = 'H:\My Drive\Maitrise\Project\Data\first qsm trial\Patient_1\output2\Sepia' ;
mask_filename = ['C:\Users\User\sct_miniconda\images\5echoes_seg\echo1_seg.nii'] ;

% General algorithm parameters
algorParam = struct();
algorParam.general.isBET = 0 ;
algorParam.general.isInvert = 0 ;
algorParam.general.isRefineBrainMask = 0 ;
% Background field removal algorithm parameters
algorParam.bfr.refine_method = 'Spherical harmonic' ;
algorParam.bfr.refine_order = 2 ;
algorParam.bfr.erode_radius = 0 ;
algorParam.bfr.erode_before_radius = 0 ;
algorParam.bfr.method = 'VSHARP' ;
algorParam.bfr.radius = [4:-1:1] ;

sepiaIO(input,output_basename,mask_filename,algorParam);