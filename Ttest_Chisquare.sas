data tt;
infile '/home/u61939380/qualityoflife (2).txt';
input socioenomic$ qli;
run;

proc ttest data=tt;
title 'tttest';
class socioenomic;
var qli;
run;

data pf;
input gender$ party$ count;
datalines;
male repub 100
female demo 30
male demo 40
female demo 50
male demo 50
male demo 40
male repub 67
female repub 65
;
run;

proc freq data=pf;
tables gender*party/chisq;
weight count;
run;