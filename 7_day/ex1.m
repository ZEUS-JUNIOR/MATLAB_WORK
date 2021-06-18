
[filename, pathname] = uigetfile('*.*', 'Pick a MATLAB code file');
if isequal(filename,0) || isequal(pathname,0)
   disp('User pressed cancel')
else
   disp(['User selected ', fullfile(pathname, filename)])
end