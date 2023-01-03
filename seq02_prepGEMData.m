%Prepare GEM data
n = 14; %days of lag

sm1989 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_1989.nc','I1',[1 1 1 1],[Inf Inf Inf 365])); %units (m3/m3)
sm1990 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_1990.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm1991 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_1991.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm1992 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_1992.nc','I1',[1 1 1 1],[Inf Inf Inf 366]));
sm1993 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_1993.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm1994 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_1994.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm1995 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_1995.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm1996 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_1996.nc','I1',[1 1 1 1],[Inf Inf Inf 366]));
sm1997 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_1997.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm1998 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_1998.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm1999 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_1999.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2000 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2000.nc','I1',[1 1 1 1],[Inf Inf Inf 366]));
sm2001 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2001.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2002 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2002.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2003 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2003.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2004 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2004.nc','I1',[1 1 1 1],[Inf Inf Inf 366]));
sm2005 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2005.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2006 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2006.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2007 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2007.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2008 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2008.nc','I1',[1 1 1 1],[Inf Inf Inf 366]));
sm2009 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2009.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2010 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2010.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2011 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2011.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2012 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2012.nc','I1',[1 1 1 1],[Inf Inf Inf 366]));
sm2013 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2013.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2014 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2014.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2015 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2015.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2016 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2016.nc','I1',[1 1 1 1],[Inf Inf Inf 366]));
sm2017 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2017.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2018 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2018.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2019 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2019.nc','I1',[1 1 1 1],[Inf Inf Inf 365]));
sm2020 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I1_2020.nc','I1',[1 1 1 1],[Inf Inf Inf 366]));

%Relative humidity
hr1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_1989.nc','rhum',[1 1 1],[Inf Inf 365]); %units (%)
hr1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_1990.nc','rhum',[1 1 1],[Inf Inf 365]);
hr1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_1991.nc','rhum',[1 1 1],[Inf Inf 365]);
hr1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_1992.nc','rhum',[1 1 1],[Inf Inf 366]);
hr1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_1993.nc','rhum',[1 1 1],[Inf Inf 365]);
hr1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_1994.nc','rhum',[1 1 1],[Inf Inf 365]);
hr1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_1995.nc','rhum',[1 1 1],[Inf Inf 365]);
hr1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_1996.nc','rhum',[1 1 1],[Inf Inf 366]);
hr1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_1997.nc','rhum',[1 1 1],[Inf Inf 365]);
hr1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_1998.nc','rhum',[1 1 1],[Inf Inf 365]);
hr1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_1999.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2000.nc','rhum',[1 1 1],[Inf Inf 366]);
hr2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2001.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2002.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2003.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2004.nc','rhum',[1 1 1],[Inf Inf 366]);
hr2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2005.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2006.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2007.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2008.nc','rhum',[1 1 1],[Inf Inf 366]);
hr2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2009.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2010.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2011.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2012.nc','rhum',[1 1 1],[Inf Inf 366]);
hr2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2013.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2014.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2015.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2016.nc','rhum',[1 1 1],[Inf Inf 366]);
hr2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2017.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2018.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2019.nc','rhum',[1 1 1],[Inf Inf 365]);
hr2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_HR_2020.nc','rhum',[1 1 1],[Inf Inf 366]);

%2 meter temperature
tt1989 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_1989.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365])); %units (K)
tt1990 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_1990.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt1991 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_1991.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt1992 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_1992.nc','TT2M',[1 1 1 1],[Inf Inf Inf 366]));
tt1993 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_1993.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt1994 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_1994.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt1995 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_1995.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt1996 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_1996.nc','TT2M',[1 1 1 1],[Inf Inf Inf 366]));
tt1997 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_1997.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt1998 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_1998.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt1999 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_1999.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2000 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2000.nc','TT2M',[1 1 1 1],[Inf Inf Inf 366]));
tt2001 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2001.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2002 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2002.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2003 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2003.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2004 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2004.nc','TT2M',[1 1 1 1],[Inf Inf Inf 366]));
tt2005 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2005.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2006 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2006.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2007 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2007.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2008 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2008.nc','TT2M',[1 1 1 1],[Inf Inf Inf 366]));
tt2009 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2009.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2010 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2010.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2011 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2011.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2012 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2012.nc','TT2M',[1 1 1 1],[Inf Inf Inf 366]));
tt2013 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2013.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2014 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2014.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2015 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2015.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2016 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2016.nc','TT2M',[1 1 1 1],[Inf Inf Inf 366]));
tt2017 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2017.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2018 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2018.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2019 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2019.nc','TT2M',[1 1 1 1],[Inf Inf Inf 365]));
tt2020 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_TT_2020.nc','TT2M',[1 1 1 1],[Inf Inf Inf 366]));

%Total Precipitation (mm/s)
pr1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_1989.nc','preacc',[1 1 1],[Inf Inf 365])*86.4; %units (mm/s) to m
pr1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_1990.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_1991.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_1992.nc','preacc',[1 1 1],[Inf Inf 366])*86.4;
pr1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_1993.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_1994.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_1995.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_1996.nc','preacc',[1 1 1],[Inf Inf 366])*86.4;
pr1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_1997.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_1998.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_1999.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2000.nc','preacc',[1 1 1],[Inf Inf 366])*86.4;
pr2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2001.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2002.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2003.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2004.nc','preacc',[1 1 1],[Inf Inf 366])*86.4;
pr2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2005.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2006.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2007.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2008.nc','preacc',[1 1 1],[Inf Inf 366])*86.4;
pr2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2009.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2010.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2011.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2012.nc','preacc',[1 1 1],[Inf Inf 366])*86.4;
pr2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2013.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2014.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2015.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2016.nc','preacc',[1 1 1],[Inf Inf 366])*86.4;
pr2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2017.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2018.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2019.nc','preacc',[1 1 1],[Inf Inf 365])*86.4;
pr2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_PR_2020.nc','preacc',[1 1 1],[Inf Inf 366])*86.4;

%Evaporation
ev1989 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_1989.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4; %units (m of water equivalent)
ev1990 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_1990.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev1991 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_1991.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev1992 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_1992.nc','AVF',[1 1 1 1],[Inf Inf Inf 366]))/2501000*86.4;
ev1993 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_1993.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev1994 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_1994.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev1995 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_1995.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev1996 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_1996.nc','AVF',[1 1 1 1],[Inf Inf Inf 366]))/2501000*86.4;
ev1997 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_1997.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev1998 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_1998.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev1999 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_1999.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2000 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2000.nc','AVF',[1 1 1 1],[Inf Inf Inf 366]))/2501000*86.4;
ev2001 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2001.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2002 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2002.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2003 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2003.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2004 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2004.nc','AVF',[1 1 1 1],[Inf Inf Inf 366]))/2501000*86.4;
ev2005 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2005.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2006 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2006.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2007 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2007.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2008 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2008.nc','AVF',[1 1 1 1],[Inf Inf Inf 366]))/2501000*86.4;
ev2009 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2009.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2010 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2010.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2011 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2011.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2012 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2012.nc','AVF',[1 1 1 1],[Inf Inf Inf 366]))/2501000*86.4;
ev2013 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2013.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2014 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2014.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2015 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2015.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2016 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2016.nc','AVF',[1 1 1 1],[Inf Inf Inf 366]))/2501000*86.4;
ev2017 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2017.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2018 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2018.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2019 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2019.nc','AVF',[1 1 1 1],[Inf Inf Inf 365]))/2501000*86.4;
ev2020 = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_AV_2020.nc','AVF',[1 1 1 1],[Inf Inf Inf 366]))/2501000*86.4;

%Water availability
%wav = PR - EV (m)
wav1989 = pr1989-ev1989;
wav1990 = pr1990-ev1990;
wav1991 = pr1991-ev1991;
wav1992 = pr1992-ev1992;
wav1993 = pr1993-ev1993;
wav1994 = pr1994-ev1994;
wav1995 = pr1995-ev1995;
wav1996 = pr1996-ev1996;
wav1997 = pr1997-ev1997;
wav1998 = pr1998-ev1998;
wav1999 = pr1999-ev1999;
wav2000 = pr2000-ev2000;
wav2001 = pr2001-ev2001;
wav2002 = pr2002-ev2002;
wav2003 = pr2003-ev2003;
wav2004 = pr2004-ev2004;
wav2005 = pr2005-ev2005;
wav2006 = pr2006-ev2006;
wav2007 = pr2007-ev2007;
wav2008 = pr2008-ev2008;
wav2009 = pr2009-ev2009;
wav2010 = pr2010-ev2010;
wav2011 = pr2011-ev2011;
wav2012 = pr2012-ev2012;
wav2013 = pr2013-ev2013;
wav2014 = pr2014-ev2014;
wav2015 = pr2015-ev2015;
wav2016 = pr2016-ev2016;
wav2017 = pr2017-ev2017;
wav2018 = pr2018-ev2018;
wav2019 = pr2019-ev2019;
wav2020 = pr2020-ev2020;

%convective snowfall rate
sn1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_1989.nc','sncon',[1 1 1],[Inf Inf 365])*86400; %units (kg/m2)
sn1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_1990.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_1991.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_1992.nc','sncon',[1 1 1],[Inf Inf 366])*86400;
sn1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_1993.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_1994.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_1995.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_1996.nc','sncon',[1 1 1],[Inf Inf 366])*86400;
sn1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_1997.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_1998.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_1999.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2000.nc','sncon',[1 1 1],[Inf Inf 366])*86400;
sn2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2001.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2002.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2003.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2004.nc','sncon',[1 1 1],[Inf Inf 366])*86400;
sn2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2005.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2006.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2007.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2008.nc','sncon',[1 1 1],[Inf Inf 366])*86400;
sn2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2009.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2010.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2011.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2012.nc','sncon',[1 1 1],[Inf Inf 366])*86400;
sn2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2013.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2014.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2015.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2016.nc','sncon',[1 1 1],[Inf Inf 366])*86400;
sn2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2017.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2018.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2019.nc','sncon',[1 1 1],[Inf Inf 365])*86400;
sn2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_SN_2020.nc','sncon',[1 1 1],[Inf Inf 366])*86400;

%snow mass (kg/m2)
snm1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_1989.nc','SM',[1 1 1],[Inf Inf 365]); %units (m of water equivalent)
snm1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_1990.nc','SM',[1 1 1],[Inf Inf 365]);
snm1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_1991.nc','SM',[1 1 1],[Inf Inf 365]);
snm1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_1992.nc','SM',[1 1 1],[Inf Inf 366]);
snm1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_1993.nc','SM',[1 1 1],[Inf Inf 365]);
snm1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_1994.nc','SM',[1 1 1],[Inf Inf 365]);
snm1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_1995.nc','SM',[1 1 1],[Inf Inf 365]);
snm1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_1996.nc','SM',[1 1 1],[Inf Inf 366]);
snm1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_1997.nc','SM',[1 1 1],[Inf Inf 365]);
snm1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_1998.nc','SM',[1 1 1],[Inf Inf 365]);
snm1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_1999.nc','SM',[1 1 1],[Inf Inf 365]);
snm2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2000.nc','SM',[1 1 1],[Inf Inf 366]);
snm2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2001.nc','SM',[1 1 1],[Inf Inf 365]);
snm2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2002.nc','SM',[1 1 1],[Inf Inf 365]);
snm2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2003.nc','SM',[1 1 1],[Inf Inf 365]);
snm2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2004.nc','SM',[1 1 1],[Inf Inf 366]);
snm2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2005.nc','SM',[1 1 1],[Inf Inf 365]);
snm2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2006.nc','SM',[1 1 1],[Inf Inf 365]);
snm2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2007.nc','SM',[1 1 1],[Inf Inf 365]);
snm2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2008.nc','SM',[1 1 1],[Inf Inf 366]);
snm2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2009.nc','SM',[1 1 1],[Inf Inf 365]);
snm2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2010.nc','SM',[1 1 1],[Inf Inf 365]);
snm2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2011.nc','SM',[1 1 1],[Inf Inf 365]);
snm2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2012.nc','SM',[1 1 1],[Inf Inf 366]);
snm2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2013.nc','SM',[1 1 1],[Inf Inf 365]);
snm2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2014.nc','SM',[1 1 1],[Inf Inf 365]);
snm2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2015.nc','SM',[1 1 1],[Inf Inf 365]);
snm2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2016.nc','SM',[1 1 1],[Inf Inf 366]);
snm2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2017.nc','SM',[1 1 1],[Inf Inf 365]);
snm2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2018.nc','SM',[1 1 1],[Inf Inf 365]);
snm2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2019.nc','SM',[1 1 1],[Inf Inf 365]);
snm2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_I5_2020.nc','SM',[1 1 1],[Inf Inf 366]);

snm = cat(3,snm1989,snm1990,snm1991,snm1992,snm1993,snm1994,snm1995,snm1996,snm1997,snm1998,snm1999,...
    snm2000,snm2001,snm2002,snm2003,snm2004,snm2005,snm2006,snm2007,snm2008,snm2009,...
    snm2010,snm2011,snm2012,snm2013,snm2014,snm2015,snm2016,snm2017,snm2018,snm2019,snm2020);

sn = cat(3,sn1989,sn1990,sn1991,sn1992,sn1993,sn1994,sn1995,sn1996,sn1997,sn1998,sn1999,...
    sn2000,sn2001,sn2002,sn2003,sn2004,sn2005,sn2006,sn2007,sn2008,sn2009,...
    sn2010,sn2011,sn2012,sn2013,sn2014,sn2015,sn2016,sn2017,sn2018,sn2019,sn2020);

aux = 2:11688;
smlt(:,:,aux) = sn(:,:,aux) - snm(:,:,aux) + snm(:,:,aux-1); 

%Snow density
dn1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_1989.nc','dnd',[1 1 1],[Inf Inf 365]); %units (kg/m3)
dn1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_1990.nc','dnd',[1 1 1],[Inf Inf 365]);
dn1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_1991.nc','dnd',[1 1 1],[Inf Inf 365]);
dn1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_1992.nc','dnd',[1 1 1],[Inf Inf 366]);
dn1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_1993.nc','dnd',[1 1 1],[Inf Inf 365]);
dn1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_1994.nc','dnd',[1 1 1],[Inf Inf 365]);
dn1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_1995.nc','dnd',[1 1 1],[Inf Inf 365]);
dn1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_1996.nc','dnd',[1 1 1],[Inf Inf 366]);
dn1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_1997.nc','dnd',[1 1 1],[Inf Inf 365]);
dn1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_1998.nc','dnd',[1 1 1],[Inf Inf 365]);
dn1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_1999.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2000.nc','dnd',[1 1 1],[Inf Inf 366]);
dn2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2001.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2002.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2003.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2004.nc','dnd',[1 1 1],[Inf Inf 366]);
dn2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2005.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2006.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2007.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2008.nc','dnd',[1 1 1],[Inf Inf 366]);
dn2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2009.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2010.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2011.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2012.nc','dnd',[1 1 1],[Inf Inf 366]);
dn2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2013.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2014.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2015.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2016.nc','dnd',[1 1 1],[Inf Inf 366]);
dn2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2017.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2018.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2019.nc','dnd',[1 1 1],[Inf Inf 365]);
dn2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data/regStLaw_DN_2020.nc','dnd',[1 1 1],[Inf Inf 366]);

%Total column snow water (kg/m2)/(kg/m3)=(m)
sw1989 = snm1989./dn1989;
sw1990 = snm1990./dn1990;
sw1991 = snm1991./dn1991;
sw1992 = snm1992./dn1992;
sw1993 = snm1993./dn1993;
sw1994 = snm1994./dn1994;
sw1995 = snm1995./dn1995;
sw1996 = snm1996./dn1996;
sw1997 = snm1997./dn1997;
sw1998 = snm1998./dn1998;
sw1999 = snm1999./dn1999;
sw2000 = snm2000./dn2000;
sw2001 = snm2001./dn2001;
sw2002 = snm2002./dn2002;
sw2003 = snm2003./dn2003;
sw2004 = snm2004./dn2004;
sw2005 = snm2005./dn2005;
sw2006 = snm2006./dn2006;
sw2007 = snm2007./dn2007;
sw2008 = snm2008./dn2008;
sw2009 = snm2009./dn2009;
sw2010 = snm2010./dn2010;
sw2011 = snm2011./dn2011;
sw2012 = snm2012./dn2012;
sw2013 = snm2013./dn2013;
sw2014 = snm2014./dn2014;
sw2015 = snm2015./dn2015;
sw2016 = snm2016./dn2016;
sw2017 = snm2017./dn2017;
sw2018 = snm2018./dn2018;
sw2019 = snm2019./dn2019;
sw2020 = snm2020./dn2020;

%Concatenate all years

sm = cat(3,sm1989,sm1990,sm1991,sm1992,sm1993,sm1994,sm1995,sm1996,sm1997,sm1998,sm1999,...
    sm2000,sm2001,sm2002,sm2003,sm2004,sm2005,sm2006,sm2007,sm2008,sm2009,...
    sm2010,sm2011,sm2012,sm2013,sm2014,sm2015,sm2016,sm2017,sm2018,sm2019,sm2020);

tt = cat(3,tt1989,tt1990,tt1991,tt1992,tt1993,tt1994,tt1995,tt1996,tt1997,tt1998,tt1999,...
    tt2000,tt2001,tt2002,tt2003,tt2004,tt2005,tt2006,tt2007,tt2008,tt2009,...
    tt2010,tt2011,tt2012,tt2013,tt2014,tt2015,tt2016,tt2017,tt2018,tt2019,tt2020);

hr = cat(3,hr1989,hr1990,hr1991,hr1992,hr1993,hr1994,hr1995,hr1996,hr1997,hr1998,hr1999,...
    hr2000,hr2001,hr2002,hr2003,hr2004,hr2005,hr2006,hr2007,hr2008,hr2009,...
    hr2010,hr2011,hr2012,hr2013,hr2014,hr2015,hr2016,hr2017,hr2018,hr2019,hr2020);

wav = cat(3,wav1989,wav1990,wav1991,wav1992,wav1993,wav1994,wav1995,wav1996,wav1997,wav1998,wav1999,...
    wav2000,wav2001,wav2002,wav2003,wav2004,wav2005,wav2006,wav2007,wav2008,wav2009,...
    wav2010,wav2011,wav2012,wav2013,wav2014,wav2015,wav2016,wav2017,wav2018,wav2019,wav2020);

sw = cat(3,sw1989,sw1990,sw1991,sw1992,sw1993,sw1994,sw1995,sw1996,sw1997,sw1998,sw1999,...
    sw2000,sw2001,sw2002,sw2003,sw2004,sw2005,sw2006,sw2007,sw2008,sw2009,...
    sw2010,sw2011,sw2012,sw2013,sw2014,sw2015,sw2016,sw2017,sw2018,sw2019,sw2020);

clearvars dn1989 dn1990 dn1991 dn1992 dn1993 dn1994 dn1995 dn1996 dn1997 dn1998 dn1999 dn2000 dn2001 dn2002 dn2003 dn2004 dn2005 dn2006 dn2007 dn2008 dn2009 dn2010 dn2011 dn2012 dn2013 dn2014 dn2015 dn2016 dn2017 dn2018 dn2019 dn2020
clearvars pr1989 pr1990 pr1991 pr1992 pr1993 pr1994 pr1995 pr1996 pr1997 pr1998 pr1999 pr2000 pr2001 pr2002 pr2003 pr2004 pr2005 pr2006 pr2007 pr2008 pr2009 pr2010 pr2011 pr2012 pr2013 pr2014 pr2015 pr2016 pr2017 pr2018 pr2019 pr2020
clearvars sm1989 sm1990 sm1991 sm1992 sm1993 sm1994 sm1995 sm1996 sm1997 sm1998 sm1999 sm2000 sm2001 sm2002 sm2003 sm2004 sm2005 sm2006 sm2007 sm2008 sm2009 sm2010 sm2011 sm2012 sm2013 sm2014 sm2015 sm2016 sm2017 sm2018 sm2019 sm2020
clearvars hr1989 hr1990 hr1991 hr1992 hr1993 hr1994 hr1995 hr1996 hr1997 hr1998 hr1999 hr2000 hr2001 hr2002 hr2003 hr2004 hr2005 hr2006 hr2007 hr2008 hr2009 hr2010 hr2011 hr2012 hr2013 hr2014 hr2015 hr2016 hr2017 hr2018 hr2019 hr2020
clearvars tt1989 tt1990 tt1991 tt1992 tt1993 tt1994 tt1995 tt1996 tt1997 tt1998 tt1999 tt2000 tt2001 tt2002 tt2003 tt2004 tt2005 tt2006 tt2007 tt2008 tt2009 tt2010 tt2011 tt2012 tt2013 tt2014 tt2015 tt2016 tt2017 tt2018 tt2019 tt2020
clearvars wav1989 wav1990 wav1991 wav1992 wav1993 wav1994 wav1995 wav1996 wav1997 wav1998 wav1999 wav2000 wav2001 wav2002 wav2003 wav2004 wav2005 wav2006 wav2007 wav2008 wav2009 wav2010 wav2011 wav2012 wav2013 wav2014 wav2015 wav2016 wav2017 wav2018 wav2019 wav2020
clearvars smlt1989 smlt1990 smlt1991 smlt1992 smlt1993 smlt1994 smlt1995 smlt1996 smlt1997 smlt1998 smlt1999 smlt2000 smlt2001 smlt2002 smlt2003 smlt2004 smlt2005 smlt2006 smlt2007 smlt2008 smlt2009 smlt2010 smlt2011 smlt2012 smlt2013 smlt2014 smlt2015 smlt2016 smlt2017 smlt2018 smlt2019 smlt2020
clearvars ev1989 ev1990 ev1991 ev1992 ev1993 ev1994 ev1995 ev1996 ev1997 ev1998 ev1999 ev2000 ev2001 ev2002 ev2003 ev2004 ev2005 ev2006 ev2007 ev2008 ev2009 ev2010 ev2011 ev2012 ev2013 ev2014 ev2015 ev2016 ev2017 ev2018 ev2019 ev2020
clearvars sw1989 sw1990 sw1991 sw1992 sw1993 sw1994 sw1995 sw1996 sw1997 sw1998 sw1999 sw2000 sw2001 sw2002 sw2003 sw2004 sw2005 sw2006 sw2007 sw2008 sw2009 sw2010 sw2011 sw2012 sw2013 sw2014 sw2015 sw2016 sw2017 sw2018 sw2019 sw2020
clearvars sn1989 sn1990 sn1991 sn1992 sn1993 sn1994 sn1995 sn1996 sn1997 sn1998 sn1999 sn2000 sn2001 sn2002 sn2003 sn2004 sn2005 sn2006 sn2007 sn2008 sn2009 sn2010 sn2011 sn2012 sn2013 sn2014 sn2015 sn2016 sn2017 sn2018 sn2019 sn2020
clearvars snm1989 snm1990 snm1991 snm1992 snm1993 snm1994 snm1995 snm1996 snm1997 snm1998 snm1999 snm2000 snm2001 snm2002 snm2003 snm2004 snm2005 snm2006 snm2007 snm2008 snm2009 snm2010 snm2011 snm2012 snm2013 snm2014 snm2015 snm2016 snm2017 snm2018 snm2019 snm2020
clearvars aux sn snm

%Index values for April-September (training data)
apr_sep1989 = 91:273;
apr_sep1990 = apr_sep1989 + 365;
apr_sep1991 = apr_sep1990 + 365;
apr_sep1992 = apr_sep1991 + 366;
apr_sep1993 = apr_sep1992 + 365;
apr_sep1994 = apr_sep1993 + 365;
apr_sep1995 = apr_sep1994 + 365;
apr_sep1996 = apr_sep1995 + 366;
apr_sep1997 = apr_sep1996 + 365;
apr_sep1998 = apr_sep1997 + 365;
apr_sep1999 = apr_sep1998 + 365;
apr_sep2000 = apr_sep1999 + 366;
apr_sep2001 = apr_sep2000 + 365;
apr_sep2002 = apr_sep2001 + 365;
apr_sep2003 = apr_sep2002 + 365;
apr_sep2004 = apr_sep2003 + 366;
apr_sep2005 = apr_sep2004 + 365;
apr_sep2006 = apr_sep2005 + 365;
apr_sep2007 = apr_sep2006 + 365;
apr_sep2008 = apr_sep2007 + 366;
apr_sep2009 = apr_sep2008 + 365;
apr_sep2010 = apr_sep2009 + 365;
apr_sep2011 = apr_sep2010 + 365;
apr_sep2012 = apr_sep2011 + 366;
apr_sep2013 = apr_sep2012 + 365;
apr_sep2014 = apr_sep2013 + 365;
apr_sep2015 = apr_sep2014 + 365;
apr_sep2016 = apr_sep2015 + 366;
apr_sep2017 = apr_sep2016 + 365;
apr_sep2018 = apr_sep2017 + 365;
apr_sep2019 = apr_sep2018 + 365;
apr_sep2020 = apr_sep2019 + 366;

march1989 = 60:90;
march1990 = march1989 + 365;
march1991 = march1990 + 365;
march1992 = march1991 + 366;
march1993 = march1992 + 365;
march1994 = march1993 + 365;
march1995 = march1994 + 365;
march1996 = march1995 + 366;
march1997 = march1996 + 365;
march1998 = march1997 + 365;
march1999 = march1998 + 365;
march2000 = march1999 + 366;
march2001 = march2000 + 365;
march2002 = march2001 + 365;
march2003 = march2002 + 365;
march2004 = march2003 + 366;
march2005 = march2004 + 365;
march2006 = march2005 + 365;
march2007 = march2006 + 365;
march2008 = march2007 + 366;
march2009 = march2008 + 365;
march2010 = march2009 + 365;
march2011 = march2010 + 365;
march2012 = march2011 + 366;
march2013 = march2012 + 365;
march2014 = march2013 + 365;
march2015 = march2014 + 365;
march2016 = march2015 + 366;
march2017 = march2016 + 365;
march2018 = march2017 + 365;
march2019 = march2018 + 365;
march2020 = march2019 + 366;

%Concatenate all training data
%Remove years to use as validation
apr_sep = cat(2,apr_sep1989,apr_sep1990,apr_sep1991,apr_sep1992,apr_sep1993,apr_sep1994,apr_sep1995,apr_sep1996,apr_sep1997,apr_sep1998,...
    apr_sep1999,apr_sep2000,apr_sep2001,apr_sep2002,apr_sep2003,apr_sep2004,apr_sep2005,apr_sep2006,apr_sep2007,apr_sep2008,apr_sep2009,...
    apr_sep2010,apr_sep2011,apr_sep2012,apr_sep2013,apr_sep2014,apr_sep2015,apr_sep2016,apr_sep2017,apr_sep2018,apr_sep2019,apr_sep2020);

clearvars apr_sep1989 apr_sep1990 apr_sep1991 apr_sep1992 apr_sep1993 apr_sep1994 apr_sep1995 apr_sep1996 apr_sep1997 apr_sep1998 apr_sep1999  
clearvars apr_sep2000 apr_sep2001 apr_sep2002 apr_sep2003 apr_sep2004 apr_sep2005 apr_sep2006 apr_sep2007 apr_sep2008 apr_sep2009
clearvars apr_sep2010 apr_sep2011 apr_sep2012 apr_sep2013 apr_sep2014 apr_sep2015 apr_sep2016 apr_sep2017 apr_sep2018 apr_sep2019 apr_sep2020

lag01d = apr_sep-1;
lag14d = apr_sep-14;

sweq1989 = zeros(110,69,183);
sweq1990 = zeros(110,69,183);
sweq1991 = zeros(110,69,183);
sweq1992 = zeros(110,69,183);
sweq1993 = zeros(110,69,183);
sweq1994 = zeros(110,69,183);
sweq1995 = zeros(110,69,183);
sweq1996 = zeros(110,69,183);
sweq1997 = zeros(110,69,183);
sweq1998 = zeros(110,69,183);
sweq1999 = zeros(110,69,183);
sweq2000 = zeros(110,69,183);
sweq2001 = zeros(110,69,183);
sweq2002 = zeros(110,69,183);
sweq2003 = zeros(110,69,183);
sweq2004 = zeros(110,69,183);
sweq2005 = zeros(110,69,183);
sweq2006 = zeros(110,69,183);
sweq2007 = zeros(110,69,183);
sweq2008 = zeros(110,69,183);
sweq2009 = zeros(110,69,183);
sweq2010 = zeros(110,69,183);
sweq2011 = zeros(110,69,183);
sweq2012 = zeros(110,69,183);
sweq2013 = zeros(110,69,183);
sweq2014 = zeros(110,69,183);
sweq2015 = zeros(110,69,183);
sweq2016 = zeros(110,69,183);
sweq2017 = zeros(110,69,183);
sweq2018 = zeros(110,69,183);
sweq2019 = zeros(110,69,183);
sweq2020 = zeros(110,69,183);


for j=1:183
    
    sweq1989(:,:,j) = max(sw(:,:,march1989),[],3);
    sweq1990(:,:,j) = max(sw(:,:,march1990),[],3);
    sweq1991(:,:,j) = max(sw(:,:,march1991),[],3);
    sweq1992(:,:,j) = max(sw(:,:,march1992),[],3);
    sweq1993(:,:,j) = max(sw(:,:,march1993),[],3);
    sweq1994(:,:,j) = max(sw(:,:,march1994),[],3);
    sweq1995(:,:,j) = max(sw(:,:,march1995),[],3);
    sweq1996(:,:,j) = max(sw(:,:,march1996),[],3);
    sweq1997(:,:,j) = max(sw(:,:,march1997),[],3);
    sweq1998(:,:,j) = max(sw(:,:,march1998),[],3);
    sweq1999(:,:,j) = max(sw(:,:,march1999),[],3);
    sweq2000(:,:,j) = max(sw(:,:,march2000),[],3);
    sweq2001(:,:,j) = max(sw(:,:,march2001),[],3);
    sweq2002(:,:,j) = max(sw(:,:,march2002),[],3);
    sweq2003(:,:,j) = max(sw(:,:,march2003),[],3);
    sweq2004(:,:,j) = max(sw(:,:,march2004),[],3);
    sweq2005(:,:,j) = max(sw(:,:,march2005),[],3);
    sweq2006(:,:,j) = max(sw(:,:,march2006),[],3);
    sweq2007(:,:,j) = max(sw(:,:,march2007),[],3);
    sweq2008(:,:,j) = max(sw(:,:,march2008),[],3);
    sweq2009(:,:,j) = max(sw(:,:,march2009),[],3);
    sweq2010(:,:,j) = max(sw(:,:,march2010),[],3);
    sweq2011(:,:,j) = max(sw(:,:,march2011),[],3);
    sweq2012(:,:,j) = max(sw(:,:,march2012),[],3);
    sweq2013(:,:,j) = max(sw(:,:,march2013),[],3);
    sweq2014(:,:,j) = max(sw(:,:,march2014),[],3);
    sweq2015(:,:,j) = max(sw(:,:,march2015),[],3);
    sweq2016(:,:,j) = max(sw(:,:,march2016),[],3);
    sweq2017(:,:,j) = max(sw(:,:,march2017),[],3);
    sweq2018(:,:,j) = max(sw(:,:,march2018),[],3);
    sweq2019(:,:,j) = max(sw(:,:,march2019),[],3);
    sweq2020(:,:,j) = max(sw(:,:,march2020),[],3);

end

clearvars march1989 march1990 march1991 march1992 march1993 march1994 march1995 march1996 march1997 march1998 march1999  
clearvars march2000 march2001 march2002 march2003 march2005 march2006 march2007 march2008 march2009
clearvars march2010 march2011 march2012 march2013 march2014 march2015 march2016 march2017 march2018 march2019 march2020

mask = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/aux/regLandSeaMask.nc','lsm'));
mask(mask>=0.6) = 1;
mask(mask<0.6) = NaN;

GEM_sweq = cat(3,sweq1989,sweq1990,sweq1991,sweq1992,sweq1993,sweq1994,sweq1995,sweq1996,sweq1997,sweq1998,...
    sweq1999,sweq2000,sweq2001,sweq2002,sweq2003,sweq2004,sweq2005,sweq2006,sweq2007,sweq2008,sweq2009,...
    sweq2010,sweq2011,sweq2012,sweq2013,sweq2014,sweq2015,sweq2016,sweq2017,sweq2018,sweq2019,sweq2020);


clearvars sweq1989 sweq1990 sweq1991 sweq1992 sweq1993 sweq1994 sweq1995 sweq1996 sweq1997 sweq1998 sweq1999  
clearvars sweq2000 sweq2001 sweq2002 sweq2003 sweq2004 sweq2005 sweq2006 sweq2007 sweq2008 sweq2009
clearvars sweq2010 sweq2011 sweq2012 sweq2013 sweq2014 sweq2015 sweq2016 sweq2017 sweq2018 sweq2019 sweq2020


GEM_sm = sm(:,:,apr_sep);
GEM_hr_1d = hr(:,:,lag01d)/100;
GEM_smlt_1d = smlt(:,:,lag01d)/24;
GEM_tt_1d = tt(:,:,lag01d)+273.15;
GEM_wa_1d = wav(:,:,lag01d)/24;

GEM_hr_nd = movmean(hr(:,:,lag01d),[0,n])/100;
GEM_tt_nd = movmean(tt(:,:,lag01d),[0,n])+273.15;
GEM_smlt_nd = movmean(smlt(:,:,lag01d),[0,n])/24;
GEM_wa_nd = movmean(wav(:,:,lag01d),[0,n])/24;


clearvars -except GEM_sm GEM_hr_1d GEM_smlt_1d GEM_tt_1d GEM_wa_1d GEM_hr_nd GEM_tt_nd GEM_smlt_nd GEM_wa_nd GEM_sm_t GEM_hr_t1d GEM_smlt_t1d GEM_tt_t1d GEM_wa_t1d GEM_hr_tnd GEM_tt_tnd GEM_smlt_tnd GEM_wa_tnd GEM_sweq GEM_sweq_t

save /home/sushama/wiki/RF_GEMVal_Project/preparedData/GEMPrep.mat -v7.3