# Convert single MRS files to block MRS files.

## The following steps convert MRS .IMA files to block (time-resolved) .IMA files. Blocks can be sliding windows (eg .IMA 1-5) or entire runs (eg .IMA 1-36).

### 1. SVN to cardiac_image_analysis
Open SmartSVN.app. Connect to cardiac_image_analysis (author: Denney, URL: https://svn.eng.auburn.edu/svn_repos/dennets/cardiac_image_analysis/trunk.

### 2. In Matlab, set path to cardiac_image_analysis and sub-folders.
Open Matlab. In current folder pane, navigate to cardiac_image_analysis. Add fodler and sub-folders to path or MRS_average won't run.

### 3. Execute code in MRS_average.m 
MRS_average.m needs minimal input. In the code, users should provide path to data directory (subj_dir), and the group (group), participant ID (number), and condition (cond) associated with the data to be averaged. The sections average data across the entire run (26 spectra in example code) and 5 timesteps, (1-25 spectra in 5 spectra increments [1-5, 6-10, ... 20-25]). Sample data are provided with code.
