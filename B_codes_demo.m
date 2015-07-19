close all; clear all; clc;

loopnbits = 64;


% load dataset
    load feat4096Norml.mat;
    db_datalabel = feat_norm;
    db_data = db_datalabel(:, 1:end);
    db_data=double(db_data);
%% binary codes
%method
        addpath('./ITQ/');
        addpath('./PCAH/');
		fprintf('......%s start...... \n\n', 'PCA-ITQ');
        ITQparam.nbits = loopnbits;
        ITQparam =  trainPCAH(db_data, ITQparam);
        %ITQparam =  trainPCAH(train_data, ITQparam);
        ITQparam = trainITQ(db_data, ITQparam);
        [B_db, U_db] = compressITQ(db_data, ITQparam);
        %clear db_data ITQparam;
        








