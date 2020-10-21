% the following code converts MRS .IMA files to block (time-resolved) .IMA
% files. blocks can be sliding windows (eg .IMA 1-5, 6-10) or entire runs 
% (eg .IMA 1-26).

clear variables
close all
clc

%% initial setup (directories, raw data, outputs)

% provide data specs
% assumes data are in 'GROUP_PARTICIPANTID_CONDITION' format
group = 'PATIENT'
subj = '999'
cond = 'BASELINE'

% create data label from user-provided specs
str = '%s_%s_%s';
data_label_str = sprintf(str,group,subj,cond);

% provide input directory
subj_dir = sprintf('/Users/julio/Documents/Matlab/MRS_average/%s_%s',group,subj);
cd(subj_dir)

% select files to average using provided data specifics
names = dir(cond);
names = struct2table(names);
names = table2cell(names);
names(1:2,:)=[];

option_struct.plot_reference_averaged_spectra = true;
option_struct.plot_averaged_spectra = true;
option_struct.moving_average = false;
option_struct.use_input_file_gui = false;
option_struct.write_raw_files = true;

%% average .IMA files across run [spectra 1-26]

% create output label from user-provided specs
output_label_str = sprintf('%s_all',data_label_str);

% determine .IMA files to average
input_file_path_str = fullfile(subj_dir,cond); % points to data dir
mrs_file_list = names(:,1); % reads all files in data dir

% average .IMA files
mr_spectroscopy_objects_to_average = get_mr_spectroscopy_objects(mrs_file_list,input_file_path_str);
option_struct.nAverages = length(mr_spectroscopy_objects_to_average);
batch_spectrally_average_mrs_data(mr_spectroscopy_objects_to_average,output_label_str,option_struct);

%% average .IMA files across timestep 1 [spectra 1-5]

% create output label from user-provided specs
output_label_str = sprintf('%s_ts1',data_label_str);

% determine .IMA files to average
input_file_path_str = fullfile(subj_dir,cond); % points to data dir
mrs_file_list = names(1:5,1); % reads files (1-5) in data dir

% average .IMA files
mr_spectroscopy_objects_to_average = get_mr_spectroscopy_objects(mrs_file_list,input_file_path_str);
option_struct.nAverages = length(mr_spectroscopy_objects_to_average);
batch_spectrally_average_mrs_data(mr_spectroscopy_objects_to_average,output_label_str,option_struct);

%% average .IMA files across timestep 2 [spectra 6-10]

% create output label from user-provided specs
output_label_str = sprintf('%s_ts2',data_label_str);

% determine .IMA files to average
input_file_path_str = fullfile(subj_dir,cond); % points to data dir
mrs_file_list = names(6:10,1); % reads files (6-10) in data dir

% average .IMA files
mr_spectroscopy_objects_to_average = get_mr_spectroscopy_objects(mrs_file_list,input_file_path_str);
option_struct.nAverages = length(mr_spectroscopy_objects_to_average);
batch_spectrally_average_mrs_data(mr_spectroscopy_objects_to_average,output_label_str,option_struct);

%% average .IMA files across timestep 3 [spectra 11-15]

% create output label from user-provided specs
output_label_str = sprintf('%s_ts3',data_label_str);

% determine .IMA files to average
input_file_path_str = fullfile(subj_dir,cond); % points to data dir
mrs_file_list = names(11:15,1); % reads files (11-15) in data dir

% average .IMA files
mr_spectroscopy_objects_to_average = get_mr_spectroscopy_objects(mrs_file_list,input_file_path_str);
option_struct.nAverages = length(mr_spectroscopy_objects_to_average);
batch_spectrally_average_mrs_data(mr_spectroscopy_objects_to_average,output_label_str,option_struct);

%% average .IMA files across timestep 4 [spectra 16-20]

% create output label from user-provided specs
output_label_str = sprintf('%s_ts4',data_label_str);

% determine .IMA files to average
input_file_path_str = fullfile(subj_dir,cond); % points to data dir
mrs_file_list = names(16:20,1); % reads files (16-20) in data dir

% average .IMA files
mr_spectroscopy_objects_to_average = get_mr_spectroscopy_objects(mrs_file_list,input_file_path_str);
option_struct.nAverages = length(mr_spectroscopy_objects_to_average);
batch_spectrally_average_mrs_data(mr_spectroscopy_objects_to_average,output_label_str,option_struct);

%% average .IMA files across timestep 5 [spectra 21-25]

% create output label from user-provided specs
output_label_str = sprintf('%s_ts5',data_label_str);

% determine .IMA files to average
input_file_path_str = fullfile(subj_dir,cond); % points to data dir
mrs_file_list = names(20:25,1); % reads files (20-25) in data dir

% average .IMA files
mr_spectroscopy_objects_to_average = get_mr_spectroscopy_objects(mrs_file_list,input_file_path_str);
option_struct.nAverages = length(mr_spectroscopy_objects_to_average);
batch_spectrally_average_mrs_data(mr_spectroscopy_objects_to_average,output_label_str,option_struct);

