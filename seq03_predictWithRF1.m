%Load data
load('/home/sushama/wiki/RF_GEMVal_Project/preparedData/ERAPrep.mat')
load('/home/sushama/wiki/RF_GEMVal_Project/preparedData/GEMPrep.mat')
load('/home/sushama/wiki/RF_GEMVal_Project/aux/rotated.mat')

%Data has to be reshaped to be used as input of RF1 model
ERA_hr_1d = reshape(ERA_hr_1d,[],1); %Reshape ERA5 data, each predictor in 1 column
ERA_hr_nd = reshape(ERA_hr_nd,[],1);
ERA_sm = reshape(ERA_sm,[],1);
ERA_smlt_1d = reshape(ERA_smlt_1d,[],1);
ERA_smlt_nd = reshape(ERA_smlt_nd,[],1);
ERA_sweq = reshape(ERA_sweq,[],1);
ERA_tt_1d = reshape(ERA_tt_1d,[],1);
ERA_tt_nd = reshape(ERA_tt_nd,[],1);
ERA_wa_1d = reshape(ERA_wa_1d,[],1);
ERA_wa_nd = reshape(ERA_wa_nd,[],1);

GEM_hr_1d = reshape(GEM_hr_1d,[],1); %Reshape GEM data, each predictor in 1 column
GEM_hr_nd = reshape(GEM_hr_nd,[],1);
GEM_sm = reshape(GEM_sm,[],1);
GEM_smlt_1d = reshape(GEM_smlt_1d,[],1);
GEM_smlt_nd = reshape(GEM_smlt_nd,[],1);
GEM_sweq = reshape(GEM_sweq,[],1);
GEM_tt_1d = reshape(GEM_tt_1d,[],1);
GEM_tt_nd = reshape(GEM_tt_nd,[],1);
GEM_wa_1d = reshape(GEM_wa_1d,[],1);
GEM_wa_nd = reshape(GEM_wa_nd,[],1);

%Load geophyisical fields
cla = ncread('/pixel/project01/framirez/ERA5/reg_CLAY.nc','CLAY',[1 1 1],[Inf Inf 1]);
snd = ncread('/pixel/project01/framirez/ERA5/reg_SAND.nc','SAND',[1 1 1],[Inf Inf 1]);
top = ncread('/pixel/project01/framirez/ERA5/reg_TOPO.nc','topo');

clay = zeros(110,69,5856);
sand = zeros(110,69,5856);
topo = zeros(110,69,5856);

for a=1:5856
   clay(:,:,a) = cla;
   sand(:,:,a) = snd;
   topo(:,:,a)= top;
end

%Reshape geophysical fields, each predictor 1 column
clay = reshape(clay,[],1);
sand = reshape(sand,[],1);
topo = reshape(topo,[],1);

%Load model
%Grid cell model mls=1000 lag 14days
load('/home/sushama/wiki/RF_GEMVal_Project/models/RF1_ModWholeCell_MLS1000_Lag_14d_SavedModel.mat') %This process may take hours as the model is very heavy ~17GB

%In this section one GEM predictor replaces one ERA predictor
%Relative humidity
T_hr = table(ERA_sm,GEM_hr_1d,GEM_hr_nd,ERA_smlt_1d,ERA_smlt_nd,...
    ERA_sweq,ERA_tt_1d,ERA_tt_nd,ERA_wa_1d,ERA_wa_nd,clay,sand,topo,...
    'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag','clay','sand','topo'});

%Snowmelt
T_smlt = table(ERA_sm,ERA_hr_1d,ERA_hr_nd,GEM_smlt_1d,GEM_smlt_nd,...
    ERA_sweq,ERA_tt_1d,ERA_tt_nd,ERA_wa_1d,ERA_wa_nd,clay,sand,topo,...
    'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag','clay','sand','topo'});

%Snow water equivalent
T_sweq = table(ERA_sm,ERA_hr_1d,ERA_hr_nd,ERA_smlt_1d,ERA_smlt_nd,...
    GEM_sweq,ERA_tt_1d,ERA_tt_nd,ERA_wa_1d,ERA_wa_nd,clay,sand,topo,...
    'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag','clay','sand','topo'});

%2-m temperature
T_tt = table(ERA_sm,ERA_hr_1d,ERA_hr_nd,ERA_smlt_1d,ERA_smlt_nd,...
    ERA_sweq,GEM_tt_1d,GEM_tt_nd,ERA_wa_1d,ERA_wa_nd,clay,sand,topo,...
    'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag','clay','sand','topo'});

%Water availability
T_wa = table(ERA_sm,ERA_hr_1d,ERA_hr_nd,ERA_smlt_1d,ERA_smlt_nd,...
    ERA_sweq,ERA_tt_1d,ERA_tt_nd,GEM_wa_1d,GEM_wa_nd,clay,sand,topo,...
    'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag','clay','sand','topo'});

%Every ERA predictor is replaced
T_GEM = table(GEM_sm,GEM_hr_1d,GEM_hr_nd,GEM_smlt_1d,GEM_smlt_nd,...
    GEM_sweq,GEM_tt_1d,GEM_tt_nd,GEM_wa_1d,GEM_wa_nd,clay,sand,topo,...
    'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag','clay','sand','topo'});

%Using the tables from above, we use RF1 to predict SSM
sm_pred_hr = reshape(predict(forest,T_hr),110,69,[]).*bbb; %Prediction with Relative Humidity replaced
disp('sm_pred_hr 1/6')
sm_pred_smlt = reshape(predict(forest,T_smlt),110,69,[]).*bbb; %Prediction with Snowmelt replaced
disp('sm_pred_smlt 2/6')
sm_pred_sweq = reshape(predict(forest,T_sweq),110,69,[]).*bbb; %Prediction with Snow water equivalent replaced
disp('sm_pred_sweq 3/6')
sm_pred_tt = reshape(predict(forest,T_tt),110,69,[]).*bbb; %Prediction with 2-m temperature replaced
disp('sm_pred_tt 4/6')
sm_pred_wa = reshape(predict(forest,T_wa),110,69,[]).*bbb; %Prediction with Water availability replaced
disp('sm_pred_wa 5/6')

sm_pred_gem = reshape(predict(forest,T_GEM),110,69,[]).*bbb; %Prediction with all GEM predictors replaced
disp('sm_pred_tt 6/6')

clearvars -except sm_pred_hr_t sm_pred_smlt_t sm_pred_sweq_t sm_pred_tt_t sm_pred_wa_t sm_pred_hr sm_pred_smlt sm_pred_sweq sm_pred_tt sm_pred_wa sm_pred_gem sm_pred_gem_t 

save /home/sushama/wiki/RF_GEMVal_Project/SSM_predictions/SSMPred_RF1.mat