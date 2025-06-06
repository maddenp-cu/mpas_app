help([[
This module loads libraries for building the MPAS App on
the NOAA RDHPC machine Hera using Intel-2023.2.0
]])

--[[whatis([===[Loads libraries needed for building the MPAS App on Hera ]===])
prepend_path("MODULEPATH", "/scratch1/NCEPDEV/nems/role.epic/spack-stack/spack-stack-1.5.1/envs/unified-env-rocky8/install/modulefiles/Core")

load("stack-intel/2021.5.0")]]
load("cmake/3.28.1")
load("gnu")
load("intel/2023.2.0")
load("impi/2023.2.0")

load("pnetcdf/1.12.3")
load("szip")
load("hdf5parallel/1.10.5")
load("netcdf-hdf5parallel/4.7.0")

setenv("CMAKE_C_COMPILER", "mpiicc")
setenv("CMAKE_CXX_COMPILER", "mpiicpc")
setenv("CMAKE_Fortran_COMPILER", "mpiifort")

