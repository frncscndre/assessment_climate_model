
n = 14; %days of lag
load('/home/sushama/wiki/RF_GEMVal_Project/aux/rotated.mat')
apr_sep = 91:273;

%Surface soil moisture
sm1996_noVeg = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data_noVeg/regStLaw_noVeg_I1_1996.nc','I1'));%units (m3/m3)

%Relative humidity
hr1996_noVeg = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data_noVeg/regStLaw_noVeg_HR_1996.nc','rhum');%units (%)

%2 meter temperature
tt1996_noVeg = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data_noVeg/regStLaw_noVeg_TT2M_1996.nc','tt2m'))-273.15;%units (K)

%Total Precipitation (mm/s)
pr1996_noVeg = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data_noVeg/regStLaw_noVeg_PR_1996.nc','preacc')*86.4;%units (mm/s) to m

%Evaporation
ev1996_noVeg = squeeze(ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data_noVeg/regStLaw_noVeg_AVF_1996.nc','efluxf'))/2501000*86.4;%units (m of water equivalent)

%Water availability
%wav = PR - EV (m)
wav1996_noVeg = pr1996_noVeg - ev1996_noVeg;

%convective snowfall rate
sn1996_noVeg = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data_noVeg/regStLaw_noVeg_SN_1996.nc','sncon')*86400;%units (kg/m2d)

%snow mass (kg/m2)
snm1996_noVeg = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data_noVeg/regStLaw_noVeg_I5_1996.nc','SM');%units (m of water equivalent)

%Snowmelt
aux = 2:336;
smlt_noVeg(:,:,aux) = sn1996_noVeg(:,:,aux) - snm1996_noVeg(:,:,aux) + snm1996_noVeg(:,:,aux-1); 


%Snow density
dn1996_noVeg = ncread('/home/sushama/wiki/RF_GEMVal_Project/GEM_Data_noVeg/regStLaw_noVeg_DN_1996.nc','dnd');%units (kg/m3)



%Total column snow water (kg/m2)/(kg/m3)=(m)
sw1996_noVeg = snm1996_noVeg./dn1996_noVeg;
sw_noVeg = sw1996_noVeg(:,:,apr_sep);


%Index values for April-September (training data)
march = 60:90;

%Concatenate all training data
lag01d = apr_sep-1;


sweq1996_noVeg = zeros(110,69,183);
for j=1:183
    
    sweq1996_noVeg(:,:,j) = max(sw1996_noVeg(:,:,march),[],3);

end


GEM_sm = sm1996_noVeg(:,:,apr_sep);
GEM_hr_1d = hr1996_noVeg(:,:,lag01d)/100;
GEM_smlt_1d = smlt_noVeg(:,:,lag01d)/24;
GEM_tt_1d = tt1996_noVeg(:,:,lag01d)+273.15;
GEM_wa_1d = wav1996_noVeg(:,:,lag01d)/24;

GEM_hr_nd = movmean(hr1996_noVeg(:,:,lag01d),[0,n])/100;
GEM_tt_nd = movmean(tt1996_noVeg(:,:,lag01d),[0,n])+273.15;
GEM_smlt_nd = movmean(smlt_noVeg(:,:,lag01d),[0,n])/24;
GEM_wa_nd = movmean(wav1996_noVeg(:,:,lag01d),[0,n])/24;
GEM_sweq = sweq1996_noVeg;

clearvars -except GEM_sm GEM_hr_1d GEM_smlt_1d GEM_tt_1d GEM_wa_1d GEM_hr_nd GEM_tt_nd GEM_smlt_nd GEM_wa_nd GEM_sm_t GEM_hr_t1d GEM_smlt_t1d GEM_tt_t1d GEM_wa_t1d GEM_hr_tnd GEM_tt_tnd GEM_smlt_tnd GEM_wa_tnd GEM_sweq GEM_sweq_t

save /home/sushama/wiki/RF_GEMVal_Project/preparedData/GEMPrep_noVeg.mat