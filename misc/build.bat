@echo off

if not exist .\\data mkdir .\\data
if not exist .\\build mkdir .\\build

pushd .\\build
cl  -MTd -WL -Od -nologo -fp:fast -fp:except- -Gm- -EHsc -Zo -Oi^
    -W4 -wd4100 -wd4458 -FC -Zi -GS-^
    .\\..\\code\\main.cpp
popd