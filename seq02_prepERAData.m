%Prepares ERA data to compile in table
n = 14;

sm1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1989_SM.nc','swvl1'); %units (m3/m3)
sm1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1990_SM.nc','swvl1');
sm1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1991_SM.nc','swvl1');
sm1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1992_SM.nc','swvl1');
sm1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1993_SM.nc','swvl1');
sm1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1994_SM.nc','swvl1');
sm1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1995_SM.nc','swvl1');
sm1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_SM.nc','swvl1');
sm1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1997_SM.nc','swvl1');
sm1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1998_SM.nc','swvl1');
sm1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1999_SM.nc','swvl1');
sm2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2000_SM.nc','swvl1');
sm2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2001_SM.nc','swvl1');
sm2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2002_SM.nc','swvl1');
sm2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2003_SM.nc','swvl1');
sm2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2004_SM.nc','swvl1');
sm2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2005_SM.nc','swvl1');
sm2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2006_SM.nc','swvl1');
sm2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2007_SM.nc','swvl1');
sm2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2008_SM.nc','swvl1');
sm2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2009_SM.nc','swvl1');
sm2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2010_SM.nc','swvl1');
sm2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2011_SM.nc','swvl1');
sm2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2012_SM.nc','swvl1');
sm2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2013_SM.nc','swvl1');
sm2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2014_SM.nc','swvl1');
sm2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2015_SM.nc','swvl1');
sm2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2016_SM.nc','swvl1');
sm2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2017_SM.nc','swvl1');
sm2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2018_SM.nc','swvl1');
sm2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2019_SM.nc','swvl1');
sm2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2020_SM.nc','swvl1');

%2 meter dewpoint temperature
dt1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1989_DT.nc','d2m'); %units (K)
dt1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1990_DT.nc','d2m');
dt1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1991_DT.nc','d2m');
dt1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1992_DT.nc','d2m');
dt1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1993_DT.nc','d2m');
dt1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1994_DT.nc','d2m');
dt1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1995_DT.nc','d2m');
dt1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_DT.nc','d2m');
dt1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1997_DT.nc','d2m');
dt1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1998_DT.nc','d2m');
dt1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1999_DT.nc','d2m');
dt2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2000_DT.nc','d2m');
dt2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2001_DT.nc','d2m');
dt2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2002_DT.nc','d2m');
dt2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2003_DT.nc','d2m');
dt2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2004_DT.nc','d2m');
dt2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2005_DT.nc','d2m');
dt2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2006_DT.nc','d2m');
dt2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2007_DT.nc','d2m');
dt2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2008_DT.nc','d2m');
dt2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2009_DT.nc','d2m');
dt2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2010_DT.nc','d2m');
dt2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2011_DT.nc','d2m');
dt2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2012_DT.nc','d2m');
dt2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2013_DT.nc','d2m');
dt2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2014_DT.nc','d2m');
dt2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2015_DT.nc','d2m');
dt2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2016_DT.nc','d2m');
dt2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2017_DT.nc','d2m');
dt2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2018_DT.nc','d2m');
dt2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2019_DT.nc','d2m');
dt2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2020_DT.nc','d2m');

%2 meter temperature
tt1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1989_TT.nc','t2m'); %units (K)
tt1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1990_TT.nc','t2m');
tt1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1991_TT.nc','t2m');
tt1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1992_TT.nc','t2m');
tt1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1993_TT.nc','t2m');
tt1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1994_TT.nc','t2m');
tt1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1995_TT.nc','t2m');
tt1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_TT.nc','t2m');
tt1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1997_TT.nc','t2m');
tt1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1998_TT.nc','t2m');
tt1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1999_TT.nc','t2m');
tt2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2000_TT.nc','t2m');
tt2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2001_TT.nc','t2m');
tt2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2002_TT.nc','t2m');
tt2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2003_TT.nc','t2m');
tt2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2004_TT.nc','t2m');
tt2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2005_TT.nc','t2m');
tt2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2006_TT.nc','t2m');
tt2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2007_TT.nc','t2m');
tt2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2008_TT.nc','t2m');
tt2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2009_TT.nc','t2m');
tt2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2010_TT.nc','t2m');
tt2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2011_TT.nc','t2m');
tt2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2012_TT.nc','t2m');
tt2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2013_TT.nc','t2m');
tt2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2014_TT.nc','t2m');
tt2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2015_TT.nc','t2m');
tt2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2016_TT.nc','t2m');
tt2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2017_TT.nc','t2m');
tt2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2018_TT.nc','t2m');
tt2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2019_TT.nc','t2m');
tt2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2020_TT.nc','t2m');

%Relative humidity
%H = exp(17.269*(d2m-273.16)/(d2m-35.86)) / exp(17.269*(t2m-273.16)/(t2m-35.86))
hr1989 = exp(17.269.*(dt1989-273.16)./(dt1989-35.86))./exp(17.269.*(tt1989-273.15)./(tt1989-35.86));
hr1990 = exp(17.269.*(dt1990-273.16)./(dt1990-35.86))./exp(17.269.*(tt1990-273.15)./(tt1990-35.86));
hr1991 = exp(17.269.*(dt1991-273.16)./(dt1991-35.86))./exp(17.269.*(tt1991-273.15)./(tt1991-35.86));
hr1992 = exp(17.269.*(dt1992-273.16)./(dt1992-35.86))./exp(17.269.*(tt1992-273.15)./(tt1992-35.86));
hr1993 = exp(17.269.*(dt1993-273.16)./(dt1993-35.86))./exp(17.269.*(tt1993-273.15)./(tt1993-35.86));
hr1994 = exp(17.269.*(dt1994-273.16)./(dt1994-35.86))./exp(17.269.*(tt1994-273.15)./(tt1994-35.86));
hr1995 = exp(17.269.*(dt1995-273.16)./(dt1995-35.86))./exp(17.269.*(tt1995-273.15)./(tt1995-35.86));
hr1996 = exp(17.269.*(dt1996-273.16)./(dt1996-35.86))./exp(17.269.*(tt1996-273.15)./(tt1996-35.86));
hr1997 = exp(17.269.*(dt1997-273.16)./(dt1997-35.86))./exp(17.269.*(tt1997-273.15)./(tt1997-35.86));
hr1998 = exp(17.269.*(dt1998-273.16)./(dt1998-35.86))./exp(17.269.*(tt1998-273.15)./(tt1998-35.86));
hr1999 = exp(17.269.*(dt1999-273.16)./(dt1999-35.86))./exp(17.269.*(tt1999-273.15)./(tt1999-35.86));
hr2000 = exp(17.269.*(dt2000-273.16)./(dt2000-35.86))./exp(17.269.*(tt2000-273.15)./(tt2000-35.86));
hr2001 = exp(17.269.*(dt2001-273.16)./(dt2001-35.86))./exp(17.269.*(tt2001-273.15)./(tt2001-35.86));
hr2002 = exp(17.269.*(dt2002-273.16)./(dt2002-35.86))./exp(17.269.*(tt2002-273.15)./(tt2002-35.86));
hr2003 = exp(17.269.*(dt2003-273.16)./(dt2003-35.86))./exp(17.269.*(tt2003-273.15)./(tt2003-35.86));
hr2004 = exp(17.269.*(dt2004-273.16)./(dt2004-35.86))./exp(17.269.*(tt2004-273.15)./(tt2004-35.86));
hr2005 = exp(17.269.*(dt2005-273.16)./(dt2005-35.86))./exp(17.269.*(tt2005-273.15)./(tt2005-35.86));
hr2006 = exp(17.269.*(dt2006-273.16)./(dt2006-35.86))./exp(17.269.*(tt2006-273.15)./(tt2006-35.86));
hr2007 = exp(17.269.*(dt2007-273.16)./(dt2007-35.86))./exp(17.269.*(tt2007-273.15)./(tt2007-35.86));
hr2008 = exp(17.269.*(dt2008-273.16)./(dt2008-35.86))./exp(17.269.*(tt2008-273.15)./(tt2008-35.86));
hr2009 = exp(17.269.*(dt2009-273.16)./(dt2009-35.86))./exp(17.269.*(tt2009-273.15)./(tt2009-35.86));
hr2010 = exp(17.269.*(dt2010-273.16)./(dt2010-35.86))./exp(17.269.*(tt2010-273.15)./(tt2010-35.86));
hr2011 = exp(17.269.*(dt2011-273.16)./(dt2011-35.86))./exp(17.269.*(tt2011-273.15)./(tt2011-35.86));
hr2012 = exp(17.269.*(dt2012-273.16)./(dt2012-35.86))./exp(17.269.*(tt2012-273.15)./(tt2012-35.86));
hr2013 = exp(17.269.*(dt2013-273.16)./(dt2013-35.86))./exp(17.269.*(tt2013-273.15)./(tt2013-35.86));
hr2014 = exp(17.269.*(dt2014-273.16)./(dt2014-35.86))./exp(17.269.*(tt2014-273.15)./(tt2014-35.86));
hr2015 = exp(17.269.*(dt2015-273.16)./(dt2015-35.86))./exp(17.269.*(tt2015-273.15)./(tt2015-35.86));
hr2016 = exp(17.269.*(dt2016-273.16)./(dt2016-35.86))./exp(17.269.*(tt2016-273.15)./(tt2016-35.86));
hr2017 = exp(17.269.*(dt2017-273.16)./(dt2017-35.86))./exp(17.269.*(tt2017-273.15)./(tt2017-35.86));
hr2018 = exp(17.269.*(dt2018-273.16)./(dt2018-35.86))./exp(17.269.*(tt2018-273.15)./(tt2018-35.86));
hr2019 = exp(17.269.*(dt2019-273.16)./(dt2019-35.86))./exp(17.269.*(tt2019-273.15)./(tt2019-35.86));
hr2020 = exp(17.269.*(dt2020-273.16)./(dt2020-35.86))./exp(17.269.*(tt2020-273.15)./(tt2020-35.86));

%Total Precipitation
pr1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1989_PR.nc','tp'); %units (m)
pr1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1990_PR.nc','tp');
pr1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1991_PR.nc','tp');
pr1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1992_PR.nc','tp');
pr1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1993_PR.nc','tp');
pr1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1994_PR.nc','tp');
pr1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1995_PR.nc','tp');
pr1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_PR.nc','tp');
pr1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1997_PR.nc','tp');
pr1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1998_PR.nc','tp');
pr1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1999_PR.nc','tp');
pr2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2000_PR.nc','tp');
pr2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2001_PR.nc','tp');
pr2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2002_PR.nc','tp');
pr2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2003_PR.nc','tp');
pr2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2004_PR.nc','tp');
pr2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2005_PR.nc','tp');
pr2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2006_PR.nc','tp');
pr2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2007_PR.nc','tp');
pr2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2008_PR.nc','tp');
pr2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2009_PR.nc','tp');
pr2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2010_PR.nc','tp');
pr2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2011_PR.nc','tp');
pr2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2012_PR.nc','tp');
pr2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2013_PR.nc','tp');
pr2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2014_PR.nc','tp');
pr2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2015_PR.nc','tp');
pr2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2016_PR.nc','tp');
pr2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2017_PR.nc','tp');
pr2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2018_PR.nc','tp');
pr2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2019_PR.nc','tp');
pr2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2020_PR.nc','tp');

%Evaporation
ev1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1989_EV.nc','e'); %units (m of water equivalent)
ev1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1990_EV.nc','e');
ev1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1991_EV.nc','e');
ev1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1992_EV.nc','e');
ev1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1993_EV.nc','e');
ev1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1994_EV.nc','e');
ev1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1995_EV.nc','e');
ev1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_EV.nc','e');
ev1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1997_EV.nc','e');
ev1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1998_EV.nc','e');
ev1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1999_EV.nc','e');
ev2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2000_EV.nc','e');
ev2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2001_EV.nc','e');
ev2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2002_EV.nc','e');
ev2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2003_EV.nc','e');
ev2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2004_EV.nc','e');
ev2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2005_EV.nc','e');
ev2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2006_EV.nc','e');
ev2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2007_EV.nc','e');
ev2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2008_EV.nc','e');
ev2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2009_EV.nc','e');
ev2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2010_EV.nc','e');
ev2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2011_EV.nc','e');
ev2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2012_EV.nc','e');
ev2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2013_EV.nc','e');
ev2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2014_EV.nc','e');
ev2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2015_EV.nc','e');
ev2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2016_EV.nc','e');
ev2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2017_EV.nc','e');
ev2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2018_EV.nc','e');
ev2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2019_EV.nc','e');
ev2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2020_EV.nc','e');

%Water availability
%wav = PR - EV (m)
%From https://cds.climate.copernicus.eu/cdsapp#!/dataset/reanalysis-era5-single-levels?tab=overview
%"negative values indicate evaporation and positive values indicate
%condensation."
wav1989 = pr1989+ev1989;
wav1990 = pr1990+ev1990;
wav1991 = pr1991+ev1991;
wav1992 = pr1992+ev1992;
wav1993 = pr1993+ev1993;
wav1994 = pr1994+ev1994;
wav1995 = pr1995+ev1995;
wav1996 = pr1996+ev1996;
wav1997 = pr1997+ev1997;
wav1998 = pr1998+ev1998;
wav1999 = pr1999+ev1999;
wav2000 = pr2000+ev2000;
wav2001 = pr2001+ev2001;
wav2002 = pr2002+ev2002;
wav2003 = pr2003+ev2003;
wav2004 = pr2004+ev2004;
wav2005 = pr2005+ev2005;
wav2006 = pr2006+ev2006;
wav2007 = pr2007+ev2007;
wav2008 = pr2008+ev2008;
wav2009 = pr2009+ev2009;
wav2010 = pr2010+ev2010;
wav2011 = pr2011+ev2011;
wav2012 = pr2012+ev2012;
wav2013 = pr2013+ev2013;
wav2014 = pr2014+ev2014;
wav2015 = pr2015+ev2015;
wav2016 = pr2016+ev2016;
wav2017 = pr2017+ev2017;
wav2018 = pr2018+ev2018;
wav2019 = pr2019+ev2019;
wav2020 = pr2020+ev2020;

%Snowmelt
smlt1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1989_SMELT.nc','smlt'); %units (m of water equivalent)
smlt1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1990_SMELT.nc','smlt');
smlt1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1991_SMELT.nc','smlt');
smlt1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1992_SMELT.nc','smlt');
smlt1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1993_SMELT.nc','smlt');
smlt1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1994_SMELT.nc','smlt');
smlt1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1995_SMELT.nc','smlt');
smlt1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_SMELT.nc','smlt');
smlt1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1997_SMELT.nc','smlt');
smlt1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1998_SMELT.nc','smlt');
smlt1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1999_SMELT.nc','smlt');
smlt2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2000_SMELT.nc','smlt');
smlt2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2001_SMELT.nc','smlt');
smlt2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2002_SMELT.nc','smlt');
smlt2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2003_SMELT.nc','smlt');
smlt2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2004_SMELT.nc','smlt');
smlt2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2005_SMELT.nc','smlt');
smlt2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2006_SMELT.nc','smlt');
smlt2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2007_SMELT.nc','smlt');
smlt2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2008_SMELT.nc','smlt');
smlt2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2009_SMELT.nc','smlt');
smlt2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2010_SMELT.nc','smlt');
smlt2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2011_SMELT.nc','smlt');
smlt2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2012_SMELT.nc','smlt');
smlt2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2013_SMELT.nc','smlt');
smlt2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2014_SMELT.nc','smlt');
smlt2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2015_SMELT.nc','smlt');
smlt2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2016_SMELT.nc','smlt');
smlt2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2017_SMELT.nc','smlt');
smlt2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2018_SMELT.nc','smlt');
smlt2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2019_SMELT.nc','smlt');
smlt2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2020_SMELT.nc','smlt');

%Total column snow water
sw1989 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1989_SW.nc','tcsw'); %units (kg/m2)
sw1990 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1990_SW.nc','tcsw');
sw1991 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1991_SW.nc','tcsw');
sw1992 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1992_SW.nc','tcsw');
sw1993 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1993_SW.nc','tcsw');
sw1994 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1994_SW.nc','tcsw');
sw1995 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1995_SW.nc','tcsw');
sw1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_SW.nc','tcsw');
sw1997 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1997_SW.nc','tcsw');
sw1998 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1998_SW.nc','tcsw');
sw1999 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1999_SW.nc','tcsw');
sw2000 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2000_SW.nc','tcsw');
sw2001 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2001_SW.nc','tcsw');
sw2002 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2002_SW.nc','tcsw');
sw2003 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2003_SW.nc','tcsw');
sw2004 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2004_SW.nc','tcsw');
sw2005 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2005_SW.nc','tcsw');
sw2006 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2006_SW.nc','tcsw');
sw2007 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2007_SW.nc','tcsw');
sw2008 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2008_SW.nc','tcsw');
sw2009 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2009_SW.nc','tcsw');
sw2010 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2010_SW.nc','tcsw');
sw2011 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2011_SW.nc','tcsw');
sw2012 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2012_SW.nc','tcsw');
sw2013 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2013_SW.nc','tcsw');
sw2014 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2014_SW.nc','tcsw');
sw2015 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2015_SW.nc','tcsw');
sw2016 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2016_SW.nc','tcsw');
sw2017 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2017_SW.nc','tcsw');
sw2018 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2018_SW.nc','tcsw');
sw2019 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2019_SW.nc','tcsw');
sw2020 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_2020_SW.nc','tcsw');

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

smlt = cat(3,smlt1989,smlt1990,smlt1991,smlt1992,smlt1993,smlt1994,smlt1995,smlt1996,smlt1997,smlt1998,smlt1999,...
    smlt2000,smlt2001,smlt2002,smlt2003,smlt2004,smlt2005,smlt2006,smlt2007,smlt2008,smlt2009,...
    smlt2010,smlt2011,smlt2012,smlt2013,smlt2014,smlt2015,smlt2016,smlt2017,smlt2018,smlt2019,smlt2020);

sw = cat(3,sw1989,sw1990,sw1991,sw1992,sw1993,sw1994,sw1995,sw1996,sw1997,sw1998,sw1999,...
    sw2000,sw2001,sw2002,sw2003,sw2004,sw2005,sw2006,sw2007,sw2008,sw2009,...
    sw2010,sw2011,sw2012,sw2013,sw2014,sw2015,sw2016,sw2017,sw2018,sw2019,sw2020);

clearvars dt1989 dt1990 dt1991 dt1992 dt1993 dt1994 dt1995 dt1996 dt1997 dt1998 dt1999 dt2000 dt2001 dt2002 dt2003 dt2004 dt2005 dt2006 dt2007 dt2008 dt2009 dt2010 dt2011 dt2012 dt2013 dt2014 dt2015 dt2016 dt2017 dt2018 dt2019 dt2020
clearvars pr1989 pr1990 pr1991 pr1992 pr1993 pr1994 pr1995 pr1996 pr1997 pr1998 pr1999 pr2000 pr2001 pr2002 pr2003 pr2004 pr2005 pr2006 pr2007 pr2008 pr2009 pr2010 pr2011 pr2012 pr2013 pr2014 pr2015 pr2016 pr2017 pr2018 pr2019 pr2020
clearvars sm1989 sm1990 sm1991 sm1992 sm1993 sm1994 sm1995 sm1996 sm1997 sm1998 sm1999 sm2000 sm2001 sm2002 sm2003 sm2004 sm2005 sm2006 sm2007 sm2008 sm2009 sm2010 sm2011 sm2012 sm2013 sm2014 sm2015 sm2016 sm2017 sm2018 sm2019 sm2020
clearvars hr1989 hr1990 hr1991 hr1992 hr1993 hr1994 hr1995 hr1996 hr1997 hr1998 hr1999 hr2000 hr2001 hr2002 hr2003 hr2004 hr2005 hr2006 hr2007 hr2008 hr2009 hr2010 hr2011 hr2012 hr2013 hr2014 hr2015 hr2016 hr2017 hr2018 hr2019 hr2020
clearvars tt1989 tt1990 tt1991 tt1992 tt1993 tt1994 tt1995 tt1996 tt1997 tt1998 tt1999 tt2000 tt2001 tt2002 tt2003 tt2004 tt2005 tt2006 tt2007 tt2008 tt2009 tt2010 tt2011 tt2012 tt2013 tt2014 tt2015 tt2016 tt2017 tt2018 tt2019 tt2020
clearvars wav1989 wav1990 wav1991 wav1992 wav1993 wav1994 wav1995 wav1996 wav1997 wav1998 wav1999 wav2000 wav2001 wav2002 wav2003 wav2004 wav2005 wav2006 wav2007 wav2008 wav2009 wav2010 wav2011 wav2012 wav2013 wav2014 wav2015 wav2016 wav2017 wav2018 wav2019 wav2020
clearvars smlt1989 smlt1990 smlt1991 smlt1992 smlt1993 smlt1994 smlt1995 smlt1996 smlt1997 smlt1998 smlt1999 smlt2000 smlt2001 smlt2002 smlt2003 smlt2004 smlt2005 smlt2006 smlt2007 smlt2008 smlt2009 smlt2010 smlt2011 smlt2012 smlt2013 smlt2014 smlt2015 smlt2016 smlt2017 smlt2018 smlt2019 smlt2020
clearvars ev1989 ev1990 ev1991 ev1992 ev1993 ev1994 ev1995 ev1996 ev1997 ev1998 ev1999 ev2000 ev2001 ev2002 ev2003 ev2004 ev2005 ev2006 ev2007 ev2008 ev2009 ev2010 ev2011 ev2012 ev2013 ev2014 ev2015 ev2016 ev2017 ev2018 ev2019 ev2020
clearvars sw1989 sw1990 sw1991 sw1992 sw1993 sw1994 sw1995 sw1996 sw1997 sw1998 sw1999 sw2000 sw2001 sw2002 sw2003 sw2004 sw2005 sw2006 sw2007 sw2008 sw2009 sw2010 sw2011 sw2012 sw2013 sw2014 sw2015 sw2016 sw2017 sw2018 sw2019 sw2020

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

ERA_sweq = cat(3,sweq1989,sweq1990,sweq1991,sweq1992,sweq1993,sweq1994,sweq1995,sweq1996,sweq1997,sweq1998,...
    sweq1999,sweq2000,sweq2001,sweq2002,sweq2003,sweq2004,sweq2005,sweq2006,sweq2007,sweq2008,sweq2009,...
    sweq2010,sweq2011,sweq2012,sweq2013,sweq2014,sweq2015,sweq2016,sweq2017,sweq2018,sweq2019,sweq2020);

%Base 1 day lag + n-days lag mean
ERA_hr_1d = hr(:,:,lag01d);
ERA_tt_1d = tt(:,:,lag01d);
ERA_smlt_1d = smlt(:,:,lag01d);
ERA_wa_1d = wav(:,:,lag01d);

ERA_hr_nd = movmean(hr(:,:,lag01d),[0,n]);
ERA_tt_nd = movmean(tt(:,:,lag01d),[0,n]);
ERA_smlt_nd = movmean(smlt(:,:,lag01d),[0,n]);
ERA_wa_nd = movmean(wav(:,:,lag01d),[0,n]);

ERA_sm = sm(:,:,apr_sep);

cla = ncread('/home/sushama/wiki/RF_GEMVal_Project/aux/reg_CLAY.nc','CLAY',[1 1 1],[Inf Inf 1]);
snd = ncread('/home/sushama/wiki/RF_GEMVal_Project/aux/reg_SAND.nc','SAND',[1 1 1],[Inf Inf 1]);
top = ncread('/home/sushama/wiki/RF_GEMVal_Project/aux/reg_TOPO.nc','topo');

clay = zeros(110,69,5673);
sand = zeros(110,69,5673);
topo = zeros(110,69,5673);

for a=1:5673
   clay(:,:,a) = cla;
   sand(:,:,a) = snd;
   topo(:,:,a)= top;
end


clearvars -except ERA_sm ERA_hr_1d ERA_hr_nd ERA_smlt_1d ERA_smlt_nd ERA_sweq ERA_tt_1d ERA_tt_nd ERA_wa_1d ERA_wa_nd

save /home/sushama/wiki/RF_GEMVal_Project/preparedData/ERAPrep.mat -v7.3