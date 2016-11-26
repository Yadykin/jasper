echo on

set install_prefix=c:\tmp\jasper\install
set source_dir=%APPVEYOR_BUILD_FOLDER%

rem set build_dir=c:\tmp\jasper\build
set build_dir=%source_dir%

cmake -G "Visual Studio 12 2013 Win64" -H%source_dir% -B%build_dir% -DCMAKE_INSTALL_PREFIX=%install_prefix% || exit /B 1

msbuild %build_dir%\INSTALL.vcxproj || exit /B 1

rem msbuild INSTALL.vcxproj /logger:"C:\Program Files\AppVeyor\BuildAgent\Appveyor.MSBuildLogger.dll" || exit /B 1
