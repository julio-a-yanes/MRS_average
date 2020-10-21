# Convert single MRS files to block MRS files.

## The following steps convert MRS .IMA files to block (time-resolved) .IMA files. Blocks can be sliding windows (eg .IMA 1-5) or entire runs (eg .IMA 1-36).

### 1. SVN to cardiac_image_analysis
Open SmartSVN.app. Connect to cardiac_image_analysis (author: Denney, URL: https://svn.eng.auburn.edu/svn_repos/dennets/cardiac_image_analysis/trunk. This need to happen once.

### 2. In Matlab, set path to cardiac_image_analysis and sub-folders.
Open Matlab. In current folder pane, navigate to cardiac_image_analysis. Add folder and sub-folders to path. Specifically, functions in the mr_spectroscopy sub-folder are needed to run MRS_average.

### 3. Execute code in MRS_average.m 
MRS_average.m needs minimal input. In the code, users should provide the group (group), participant ID (number), and condition (cond) associated with the data to be averaged. Example data structure would be one folder for participant (PATIENT_999) with subfolders for various conditions (BASELINE, 50PAIN, 100PAIN). 

Within MRS_average.m, the sections average data across the entire run (26 spectra in example data) and 5 timesteps, (spectra 1-25 in 5 step increments [1-5, 6-10, ... 20-25]). Example data are provided with code.
