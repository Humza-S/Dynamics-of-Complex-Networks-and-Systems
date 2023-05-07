% % question 1
% A = [0, 1; 1 -1]
% [v, d] = eig(A)
% 

% Define the given linear system
syms x1 x2
f1 = -1*x1 + 1*x2;
f2 = -2*x1 + 1*x2;

% Define the state matrix A
A = jacobian([f1; f2], [x1, x2])

% Compute the eigenvalues of A
[V, D] = eig(A)

% Extract the eigenvectors from V
v1 = V(:,1)
v2 = V(:,2)

% % Define the vector field f
f = [f1; f2];
% 
% % Define the equilibrium point x = 0
x_eq = [0; 0];
% 
% % Define the points for arrows in the phase plane plot
points = [-2, 2, 2, -2; 1, 1, -1, -1];
% 

% Convert symbolic expressions to function handles
f1_func = matlabFunction(f1, 'Vars', [x1, x2]);
f2_func = matlabFunction(f2, 'Vars', [x1, x2]);

% Evaluate the vector field at the points
f1_vals = f1_func(points(1,:), points(2,:));
f2_vals = f2_func(points(1,:), points(2,:));

% % Plot phase plane portrait with arrows and eigenvectors (if real)
figure;
hold on;
quiver(0, 0, v1(1), v1(2), 'r', 'LineWidth', 2); % Eigenvector 1
quiver(0, 0, v2(1), v2(2), 'b', 'LineWidth', 2); % Eigenvector 2




quiver(points(1,:), points(2,:), f1_vals, f2_vals);
hold off;
title('Phase Plane Portrait');
xlabel('x1');
ylabel('x2');
axis([-5 5 -5 5]);




% 
% % Check if eigenvectors are real
% if isreal(A)
%     % Compute eigenvectors of A
%     [V, D] = eig(A);
%     % Plot eigenvectors on phase plane portrait
%     for i = 1:size(V, 2)
%         eigenvector = V(:, i);
%         if isreal(eigenvector)
%             % Scale eigenvector for visualization
%             scaled_eigenvector = 0.5 * eigenvector;
%             quiver(x_eq(1), x_eq(2), scaled_eigenvector(1), scaled_eigenvector(2), 'r');
%         end
%     end
% end
% 
% % Plot arrows in the direction of the vector field f
% for i = 1:size(points, 2)
%     x = points(:, i);
%     dx = subs(f1_vals, [x1, x2], x);
%     dy = subs(f2_vals, [x1, x2], x);
%     quiver(x(1), x(2), dx, dy);
% end
% 
% % Plot equilibrium point x = 0
% plot(x_eq(1), x_eq(2), 'ro');
