%% Run on local computer
[rootdir, basedir, rscdir] = set_path_env('ncpu', 1);

%%
sj_num = 1;
run_preproc_command = ['matlab_orig -nodesktop -nosplash -nodisplay -r ' ...
    '"run(''' fullfile(basedir, ['projects/CAPS_project/scripts/CAPS2_preproc([' num2str(sj_num) '])']) '''); quit"' ...
    ' >> ~/' sprintf('sub-caps%.3d_log.txt', sj_num) ' 2>&1 < /dev/null &'];
clipboard('copy', run_preproc_command);



%% Run on server
[rootdir, basedir, rscdir] = set_path_env('ncpu', 1, 'hostname', 'cnir02');

%%
sj_num = 1;
run_preproc_command = ['matlab_orig -nodesktop -nosplash -nodisplay -r ' ...
    '"run(''' fullfile(basedir, ['projects/CAPS_project/scripts/CAPS2_dcc_from_image([' num2str(sj_num) '])']) '''); quit"' ...
    ' >> ~/' sprintf('sub-caps%.3d_dcc_from_image_log.txt', sj_num) ' 2>&1 < /dev/null &'];
clipboard('copy', run_preproc_command);

