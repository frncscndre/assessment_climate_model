%Prepares ERA data to compile in table
n = 14;

sm1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_SM.nc','swvl1');%units (m3/m3)

%2 meter dewpoint temperature
dt1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_DT.nc','d2m');%units (K)

%2 meter temperature
tt1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_TT.nc','t2m');%units (K)

%Relative humidity
%H = exp(17.269*(d2m-273.16)/(d2m-35.86)) / exp(17.269*(t2m-273.16)/(t2m-35.86))
hr1996 = exp(17.269.*(dt1996-273.16)./(dt1996-35.86))./exp(17.269.*(tt1996-273.15)./(tt1996-35.86));

%Total Precipitation
pr1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_PR.nc','tp');%units (m)

%Evaporation
ev1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_EV.nc','e');%units (m of water equivalent)

%Water availability
%wav = PR - EV (m)
%From https://cds.climate.copernicus.eu/cdsapp#!/dataset/reanalysis-era5-single-levels?tab=overview
%"negative values indicate evaporation and positive values indicate
%condensation."
wav1996 = pr1996+ev1996;

%Snowmelt
smlt1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_SMELT.nc','smlt'); %units (m of water equivalent)

%Total column snow water
sw1996 = ncread('/home/sushama/wiki/RF_GEMVal_Project/ERA5_Data/regERA5_1996_SW.nc','tcsw');%units (kg/m2)

%Index values for April-September (training data)
apr_sep = 91:273;
march = 60:90;

lag01d = apr_sep-1;


sweq1996 = zeros(110,69,183);
for j=1:183
    
    sweq1996(:,:,j) = max(sw1996(:,:,march),[],3);

end

ERA_sweq = sweq1996;

%Base 1 day lag + n-days lag mean
ERA_hr_1d = hr1996(:,:,lag01d);
ERA_tt_1d = tt1996(:,:,lag01d);
ERA_smlt_1d = smlt1996(:,:,lag01d);
ERA_wa_1d = wav1996(:,:,lag01d);

ERA_hr_nd = movmean(hr1996(:,:,lag01d),[0,n]);
ERA_tt_nd = movmean(tt1996(:,:,lag01d),[0,n]);
ERA_smlt_nd = movmean(smlt1996(:,:,lag01d),[0,n]);
ERA_wa_nd = movmean(wav1996(:,:,lag01d),[0,n]);

ERA_sm = sm1996(:,:,apr_sep);

clearvars -except ERA_sm ERA_hr_1d ERA_hr_nd ERA_smlt_1d ERA_smlt_nd ERA_sweq ERA_tt_1d ERA_tt_nd ERA_wa_1d ERA_wa_nd         
