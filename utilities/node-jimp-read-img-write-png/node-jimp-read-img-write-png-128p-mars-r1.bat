@echo off
rem tileXStart tileXFinish tileYStart tileYFinish << y decrements

rem The format of %TIME% is HH:MM:SS,CS for example 23:59:59,99
set STARTTIME=%TIME%


rem megt88n000hb.img
node node-jimp-read-img-write-png-128p-r1.js megt88n000hb.img zz-mars-heightmaps-128p 0 30 88 44

node node-jimp-read-img-write-png-128p-r1.js megt88n000hb.img zz-mars-heightmaps-128p 30 60 88 44

node node-jimp-read-img-write-png-128p-r1.js megt88n000hb.img zz-mars-heightmaps-128p 60 90 88 44


rem megt44n000hb.img
node node-jimp-read-img-write-png-128p-r1.js megt44n000hb.img zz-mars-heightmaps-128p 0 30 44 0

node node-jimp-read-img-write-png-128p-r1.js megt44n000hb.img zz-mars-heightmaps-128p 30 60 44 0

node node-jimp-read-img-write-png-128p-r1.js megt44n000hb.img zz-mars-heightmaps-128p 60 90 44 0


rem megt00n000hb.img
node node-jimp-read-img-write-png-128p-r1.js megt00n000hb.img zz-mars-heightmaps-128p 0 30 -1 -44

node node-jimp-read-img-write-png-128p-r1.js megt00n000hb.img zz-mars-heightmaps-128p 30 60 -1 -44

node node-jimp-read-img-write-png-128p-r1.js megt00n000hb.img zz-mars-heightmaps-128p 60 90 -1 -44


rem megt44s000hb.img
node node-jimp-read-img-write-png-128p-r1.js megt44s000hb.img zz-mars-heightmaps-128p 0 30 -44 -88

node node-jimp-read-img-write-png-128p-r1.js megt44s000hb.img zz-mars-heightmaps-128p 30 60 -44 -88

node node-jimp-read-img-write-png-128p-r1.js megt44s000hb.img zz-mars-heightmaps-128p 60 90 -44 -88




rem megt88n090hb.img
node node-jimp-read-img-write-png-128p-r1.js megt88n090hb.img zz-mars-heightmaps-128p 90 120 88 44

node node-jimp-read-img-write-png-128p-r1.js megt88n090hb.img zz-mars-heightmaps-128p 120 150 88 44

node node-jimp-read-img-write-png-128p-r1.js megt88n090hb.img zz-mars-heightmaps-128p 150 180 88 44


rem megt44n090hb.img
node node-jimp-read-img-write-png-128p-r1.js megt44n090hb.img zz-mars-heightmaps-128p 90 120 44 0

node node-jimp-read-img-write-png-128p-r1.js megt44n090hb.img zz-mars-heightmaps-128p 120 150 44 0

node node-jimp-read-img-write-png-128p-r1.js megt44n090hb.img zz-mars-heightmaps-128p 150 180 44 0

rem megt00n090hb.img
node node-jimp-read-img-write-png-128p-r1.js megt00n090hb.img zz-mars-heightmaps-128p 90 120 0 -44

node node-jimp-read-img-write-png-128p-r1.js megt00n090hb.img zz-mars-heightmaps-128p 120 150 0 -44

node node-jimp-read-img-write-png-128p-r1.js megt00n090hb.img zz-mars-heightmaps-128p 150 180 0 -44

rem megt44s090hb.img
node node-jimp-read-img-write-png-128p-r1.js megt44s090hb.img zz-mars-heightmaps-128p 90 120 -44 -88

node node-jimp-read-img-write-png-128p-r1.js megt44s090hb.img zz-mars-heightmaps-128p 120 150 -44 -88

node node-jimp-read-img-write-png-128p-r1.js megt44s090hb.img zz-mars-heightmaps-128p 150 180 -44 -88




rem megt88n180hb.img
node node-jimp-read-img-write-png-128p-r1.js megt88n180hb.img zz-mars-heightmaps-128p -180 -150 88 44

node node-jimp-read-img-write-png-128p-r1.js megt88n180hb.img zz-mars-heightmaps-128p -150 -120 88 44

node node-jimp-read-img-write-png-128p-r1.js megt88n180hb.img zz-mars-heightmaps-128p -120 -90 88 44 


rem megt44n180hb.img
node node-jimp-read-img-write-png-128p-r1.js megt44n180hb.img zz-mars-heightmaps-128p -180 -150 44 0

node node-jimp-read-img-write-png-128p-r1.js megt44n180hb.img zz-mars-heightmaps-128p -150 -120 44 0

node node-jimp-read-img-write-png-128p-r1.js megt44n180hb.img zz-mars-heightmaps-128p -120 -90 44 0 


rem megt00n180hb.img
node node-jimp-read-img-write-png-128p-r1.js megt00n180hb.img zz-mars-heightmaps-128p -180 -150 0 -44

node node-jimp-read-img-write-png-128p-r1.js megt00n180hb.img zz-mars-heightmaps-128p -150 -120 0 -44

node node-jimp-read-img-write-png-128p-r1.js megt00n180hb.img zz-mars-heightmaps-128p -120 -90 0 -44


rem megt44s180hb.img
node node-jimp-read-img-write-png-128p-r1.js megt44s180hb.img zz-mars-heightmaps-128p -180 -150 -44 -88

node node-jimp-read-img-write-png-128p-r1.js megt44s180hb.img zz-mars-heightmaps-128p -150 -120 -44 -88

node node-jimp-read-img-write-png-128p-r1.js megt44s180hb.img zz-mars-heightmaps-128p -120 -90 -44 -88




REM REM megt88n270hb.img
REM node node-jimp-read-img-write-png-128p-r1.js megt88n270hb.img zz-mars-heightmaps-128p -90 -60 88 44

REM node node-jimp-read-img-write-png-128p-r1.js megt88n270hb.img zz-mars-heightmaps-128p -60 -30 88 44

REM node node-jimp-read-img-write-png-128p-r1.js megt88n270hb.img zz-mars-heightmaps-128p -30 0 88 44


REM REM megt44n270hb.img
REM node node-jimp-read-img-write-png-128p-r1.js megt44n270hb.img zz-mars-heightmaps-128p -90 -60 44 0

REM node node-jimp-read-img-write-png-128p-r1.js megt44n270hb.img zz-mars-heightmaps-128p -60 -30 44 0

REM node node-jimp-read-img-write-png-128p-r1.js megt44n270hb.img zz-mars-heightmaps-128p -30 0 44 0


REM REM megt00n270hb.img
REM node node-jimp-read-img-write-png-128p-r1.js megt00n270hb.img zz-mars-heightmaps-128p -90 -60 0 -44

REM node node-jimp-read-img-write-png-128p-r1.js megt00n270hb.img zz-mars-heightmaps-128p -60 -30 0 -44

REM node node-jimp-read-img-write-png-128p-r1.js megt00n270hb.img zz-mars-heightmaps-128p -30 0 0 -44


REM REM megt44s270hb.img
REM node node-jimp-read-img-write-png-128p-r1.js megt44s270hb.img zz-mars-heightmaps-128p -90 -60 -44 -88

REM node node-jimp-read-img-write-png-128p-r1.js megt44s270hb.img zz-mars-heightmaps-128p -60 -30 -44 -88

REM node node-jimp-read-img-write-png-128p-r1.js megt44s270hb.img zz-mars-heightmaps-128p -30 0 -44 -88


set endtime=%TIME%

echo Start    : %STARTTIME%
echo Finish   : %ENDTIME%
