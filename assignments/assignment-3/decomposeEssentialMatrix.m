function [R, t] = decomposeEssentialMatrix(E, x1, x2, K)
% DECOMPOSEESSENTIALMATRIX  Computes the relative motion between two-views
% by decomposing the essential matrix and recovering R, t after cheirality
% testing.
% Inputs:
%   E:  3 x 3   Essential matrix
%   x1: 3 x N   Features in the first view
%   x2: 3 x N   Features in the second view
%   K:  3 x 3   Intrinsics


% Define the matrices W and Z as in the Hartley & Zisserman book
W = [0, -1, 0; 1, 0, 0; 0, 0, 1];
Z = [0, 1, 0; -1, 0, 0; 0, 0, 0];

% Perform an SVD of the essential matrix
[U, D, V] = svd(E, 0);

if abs(D(3,3)) > 1e-5
    error('Essential matrix must be of rank 2');
end

if abs(D(2,2) - D(1,1)) > 1e-5
    error('First two singular values of the essential matrix must be equal');
end

% Translation guess(es)
t_guess = U(:,3);

% Rotation guess(es)
R_guess_1 = U * W * V';
R_guess_1 = R_guess_1 * sign(det(R_guess_1)) * sign(det(K));
R_guess_2 = U * W' * V';
R_guess_2 = R_guess_2 * sign(det(R_guess_2)) * sign(det(K));

% Initialize the projection matrices for the 4 solutions.
P1 = K * [eye(3), [0; 0; 0]];
P21 = K * [R_guess_1, t_guess];
P22 = K * [R_guess_1, -t_guess];
P23 = K * [R_guess_2, t_guess];
P24 = K * [R_guess_2, -t_guess];

% To test cheirality, we reconstruct a few points and pick that solution
% where most points are in front of both cameras.
X_1 = algebraicTriangulation(x1, x2, P1, P21);
X_2 = algebraicTriangulation(x1, x2, P1, P22);
X_3 = algebraicTriangulation(x1, x2, P1, P23);
X_4 = algebraicTriangulation(x1, x2, P1, P24);

% Picking the best solution. Adopting the strategy followed in the COLMAP
% library.
%
% Here, we pick that paris of R, t as the correct solution where most
% points are in front of the camera.

% Homogenize the 3D points
X_1 = X_1 ./ repmat(X_1(4,:), 4, 1);
X_2 = X_2 ./ repmat(X_2(4,:), 4, 1);
X_3 = X_3 ./ repmat(X_3(4,:), 4, 1);
X_4 = X_4 ./ repmat(X_4(4,:), 4, 1);

% Compute image coordinates for all 3D point sets
x1_1 = P1 * X_1;
x2_1 = P21 * X_1;

x1_2 = P1 * X_2;
x2_2 = P22 * X_2;

x1_3 = P1 * X_3;
x2_3 = P23 * X_3;

x1_4 = P1 * X_4;
x2_4 = P24 * X_4;

% Compute the third image coordinate (homogeneous) and check if it is
% positive (and finite)
depth1_1 = x1_1(3,:);
depth2_1 = x2_1(3,:);
scores_1 = (depth1_1 > 0) + (depth2_1 > 0);
scores_1 = sum(scores_1 == 2);

depth1_2 = x1_2(3,:);
depth2_2 = x2_2(3,:);
scores_2 = (depth1_2 > 0) + (depth2_2 > 0);
scores_2 = sum(scores_2 == 2);

depth1_3 = x1_3(3,:);
depth2_3 = x2_3(3,:);
scores_3 = (depth1_3 > 0) + (depth2_3 > 0);
scores_3 = sum(scores_3 == 2);

depth1_4 = x1_4(3,:);
depth2_4 = x2_4(3,:);
scores_4 = (depth1_4 > 0) + (depth2_4 > 0);
scores_4 = sum(scores_4 == 2);

[~, correctSolution] = max([scores_1, scores_2, scores_3, scores_4]);

if correctSolution == 1
    R = R_guess_1;
    t = t_guess;
elseif correctSolution == 2
    R = R_guess_1;
    t = -t_guess;
elseif correctSolution == 3
    R = R_guess_2;
    t = t_guess;
elseif correctSolution == 4
    R = R_guess_2;
    t = -t_guess;
end

end
