%Load data
load('/home/sushama/wiki/RF_GEMVal_Project/preparedData/ERAPrep.mat') %Data from ERA5
load('/home/sushama/wiki/RF_GEMVal_Project/preparedData/GEMPrep.mat') %Data from GEM
load('/home/sushama/wiki/RF_GEMVal_Project/aux/rotated.mat') %Land sea mask data

%Load model
%Grid cell model mls=1000 lag 14days
load('RF2_ModGridCell_MLS1000_Lag_14d_SavedModel.mat') %This process may take hours as the model is very heavy ~90GB

%Pre-allocate memory for faster loops
sm_pred_hr = zeros(110,69,5856);
sm_pred_smlt = zeros(110,69,5856);
sm_pred_sweq = zeros(110,69,5856);
sm_pred_tt = zeros(110,69,5856);
sm_pred_wa = zeros(110,69,5856);

sm_pred_gem = zeros(110,69,5856);

for i = 1:110
    for j = 1:69
        if bbb(i,j) == 1

            %Iteration Relative humidity
            T_hr = table(squeeze(ERA_sm(i,j,:)),squeeze(GEM_hr_1d(i,j,:)),squeeze(GEM_hr_nd(i,j,:)),squeeze(ERA_smlt_1d(i,j,:)),squeeze(ERA_smlt_nd(i,j,:)),...
                squeeze(ERA_sweq(i,j,:)),squeeze(ERA_tt_1d(i,j,:)),squeeze(ERA_tt_nd(i,j,:)),squeeze(ERA_wa_1d(i,j,:)),squeeze(ERA_wa_nd(i,j,:)),...
                'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag'});
            
                sm_pred_hr(i,j,:) = predict(models{i,j},T_hr);

            %Iteration snowmelt
            T_smlt = table(squeeze(ERA_sm(i,j,:)),squeeze(ERA_hr_1d(i,j,:)),squeeze(ERA_hr_nd(i,j,:)),squeeze(GEM_smlt_1d(i,j,:)),squeeze(GEM_smlt_nd(i,j,:)),...
                squeeze(ERA_sweq(i,j,:)),squeeze(ERA_tt_1d(i,j,:)),squeeze(ERA_tt_nd(i,j,:)),squeeze(ERA_wa_1d(i,j,:)),squeeze(ERA_wa_nd(i,j,:)),...
                'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag'});

                sm_pred_smlt(i,j,:) = predict(models{i,j},T_smlt);

            %Iteration snow water equivalent                    
            T_sweq = table(squeeze(ERA_sm(i,j,:)),squeeze(ERA_hr_1d(i,j,:)),squeeze(ERA_hr_nd(i,j,:)),squeeze(ERA_smlt_1d(i,j,:)),squeeze(ERA_smlt_nd(i,j,:)),...
                squeeze(GEM_sweq(i,j,:)),squeeze(ERA_tt_1d(i,j,:)),squeeze(ERA_tt_nd(i,j,:)),squeeze(ERA_wa_1d(i,j,:)),squeeze(ERA_wa_nd(i,j,:)),...
                'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag'});

                sm_pred_sweq(i,j,:) = predict(models{i,j},T_sweq);

            %Iteration 2m temp    
            T_tt = table(squeeze(ERA_sm(i,j,:)),squeeze(ERA_hr_1d(i,j,:)),squeeze(ERA_hr_nd(i,j,:)),squeeze(ERA_smlt_1d(i,j,:)),squeeze(ERA_smlt_nd(i,j,:)),...
                squeeze(ERA_sweq(i,j,:)),squeeze(GEM_tt_1d(i,j,:)),squeeze(GEM_tt_nd(i,j,:)),squeeze(ERA_wa_1d(i,j,:)),squeeze(ERA_wa_nd(i,j,:)),...
                'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag'});

                sm_pred_tt(i,j,:) = predict(models{i,j},T_tt);

            %Iteration water availability    
            T_wa = table(squeeze(ERA_sm(i,j,:)),squeeze(ERA_hr_1d(i,j,:)),squeeze(ERA_hr_nd(i,j,:)),squeeze(ERA_smlt_1d(i,j,:)),squeeze(ERA_smlt_nd(i,j,:)),...
                squeeze(ERA_sweq(i,j,:)),squeeze(ERA_tt_1d(i,j,:)),squeeze(ERA_tt_nd(i,j,:)),squeeze(GEM_wa_1d(i,j,:)),squeeze(GEM_wa_nd(i,j,:)),...
                'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag'});

                sm_pred_wa(i,j,:) = predict(models{i,j},T_wa);
                
            T_gem = table(squeeze(GEM_sm(i,j,:)),squeeze(GEM_hr_1d(i,j,:)),squeeze(GEM_hr_nd(i,j,:)),squeeze(GEM_smlt_1d(i,j,:)),squeeze(GEM_smlt_nd(i,j,:)),...
                squeeze(GEM_sweq(i,j,:)),squeeze(GEM_tt_1d(i,j,:)),squeeze(GEM_tt_nd(i,j,:)),squeeze(GEM_wa_1d(i,j,:)),squeeze(GEM_wa_nd(i,j,:)),...
                'VariableNames',{'sm','hr_l01','hr_lag','smlt_l01','smlt_lag','sweq','tt_l01','tt_lag','wa_l01','wa_lag'});

                sm_pred_gem(i,j,:) = predict(models{i,j},T_gem);
            
        else
            
            sm_pred_hr(i,j,:) = NaN;
            sm_pred_smlt(i,j,:) = NaN;
            sm_pred_sweq(i,j,:) = NaN;
            sm_pred_tt(i,j,:) = NaN; 
            sm_pred_wa(i,j,:) = NaN;
            sm_pred_gem(i,j,:) = NaN;
            
        end
        disp('i')
        disp(i)
        disp('j')
        disp(j)
    end
end

clearvars -except sm_pred_gem sm_pred_gem_t sm_pred_hr sm_pred_hr_t sm_pred_smlt sm_pred_smlt_t sm_pred_sweq sm_pred_sweq_t sm_pred_tt sm_pred_tt_t sm_pred_wa sm_pred_wa_t

save /home/sushama/wiki/RF_GEMVal_Project/SSM_predictions/SSMPred_RF2.mat