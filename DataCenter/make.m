clear dbmain
includepath = '..\include';
libpath = '..\lib';
mex(['-I', includepath], ...
        ['-L', libpath], ...
        ['-l', 'mongoclient.lib'], ...
    'dbmain.cpp', '..\include\DBLog.cpp', 'DataCenter.cpp');
movefile('dbmain.mexw32', '..\lib\dbmain.mexw32');
clear includepath libpath
