%Author: James On
clear all
clc

%case 1
end_to_end_distance = [];

for i = 1:1:1000

    number_of_steps = 25;
    my_step_list=randi(4, number_of_steps, 1);
    N = number_of_steps;
    d = 10; %step length in Angstroms
    
    path = zeros(N,2);
    
    path(1,1:2) = [0,0];
    
    for i = 2:1:N
        if my_step_list(i) == 1
            steps(i,1) = d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 2
            steps(i,1) = 0;
            steps(i,2) = d;
        elseif my_step_list(i) == 3
            steps(i,1) = 0-d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 4
            steps(i,1) = 0;
            steps(i,2) = 0-d;
        end
    
        path(i,1:2) = path(i-1, 1:2) + steps(i,1:2);
    end
    
    end_to_end_distance = [end_to_end_distance (sqrt(path(N,1)^2 + path(N,2)^2))];
end
case1_mean_distance = mean(end_to_end_distance)

figure;
hold on
plot(path(1:N,1), path(1:N,2), 'r')

plotmax = max(max(abs(path(:,:))));
ylim([-plotmax plotmax])
xlim([-plotmax plotmax])
xlabel('x(A)')
ylabel('y(A)')
title('Random walks of N = 25 step of length a = 10 Angstroms')


%case 1 but this is for figure 2
figure;
hold on;
plot(path(1:N,1), path(1:N,2), 'r')

plotmax = max(max(abs(path(:,:))));
ylim([-plotmax plotmax])
xlim([-plotmax plotmax])
xlabel('x(A)')
ylabel('y(A)')
title('Random walks of N = 25 step of length a = 10 Angstroms')

%Case 2

end_to_end_distance2 = [];

for i = 1:1:1000
    number_of_steps = 50;
    my_step_list=randi(4, number_of_steps, 1);
    N = number_of_steps;
    d = 10; %step length in Angstroms
    
    path = zeros(N,2);
    
    path(1,1:2) = [0,0];
    
    for i = 2:1:N
        if my_step_list(i) == 1
            steps(i,1) = d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 2
            steps(i,1) = 0;
            steps(i,2) = d;
        elseif my_step_list(i) == 3
            steps(i,1) = 0-d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 4
            steps(i,1) = 0;
            steps(i,2) = 0-d;
        end
    
        path(i,1:2) = path(i-1, 1:2) + steps(i,1:2);
    end

    end_to_end_distance2 = [end_to_end_distance2 (sqrt(path(N,1)^2 + path(N,2)^2))];
end

case2_mean_distance = mean(end_to_end_distance2)


plot(path(1:N,1), path(1:N,2), 'g')

plotmax = max(max(abs(path(:,:))));
ylim([-plotmax plotmax])
xlim([-plotmax plotmax])
xlabel('x(A)')
ylabel('y(A)')
title('Random walks of N = 50 step of length a = 10 Angstroms')



%Case 3
end_to_end_distance3 = [];

for i=1:1:1000
    number_of_steps = 150;
    my_step_list=randi(4, number_of_steps, 1);
    N = number_of_steps;
    d = 10; %step length in Angstroms
    
    path = zeros(N,2);
    
    path(1,1:2) = [0,0];
    
    for i = 2:1:N
        if my_step_list(i) == 1
            steps(i,1) = d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 2
            steps(i,1) = 0;
            steps(i,2) = d;
        elseif my_step_list(i) == 3
            steps(i,1) = 0-d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 4
            steps(i,1) = 0;
            steps(i,2) = 0-d;
        end
    
        path(i,1:2) = path(i-1, 1:2) + steps(i,1:2);
    end
    end_to_end_distance3 = [end_to_end_distance3 (sqrt(path(N,1)^2 + path(N,2)^2))];
end
case3_mean_distance = mean(end_to_end_distance3)

plot(path(1:N,1), path(1:N,2), 'b')

plotmax = max(max(abs(path(:,:))));
ylim([-plotmax plotmax])
xlim([-plotmax plotmax])
xlabel('x(A)')
ylabel('y(A)')
title('Random walks of N = 150 step of length a = 10 Angstroms')




%Case 4
end_to_end_distance4 = [];

for i=1:1:1000
    number_of_steps = 500;
    my_step_list=randi(4, number_of_steps, 1);
    N = number_of_steps;
    d = 10; %step length in Angstroms
    
    path = zeros(N,2);
    
    path(1,1:2) = [0,0];
    
    for i = 2:1:N
        if my_step_list(i) == 1
            steps(i,1) = d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 2
            steps(i,1) = 0;
            steps(i,2) = d;
        elseif my_step_list(i) == 3
            steps(i,1) = 0-d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 4
            steps(i,1) = 0;
            steps(i,2) = 0-d;
        end
    
        path(i,1:2) = path(i-1, 1:2) + steps(i,1:2);
    end
    end_to_end_distance4 = [end_to_end_distance4 (sqrt(path(N,1)^2 + path(N,2)^2))];
end
case4_mean_distance = mean(end_to_end_distance4)

plot(path(1:N,1), path(1:N,2), 'c')

plotmax = max(max(abs(path(:,:))));
ylim([-plotmax plotmax])
xlim([-plotmax plotmax])
xlabel('x(A)')
ylabel('y(A)')
title('Random walks of N = 500 step of length a = 10 Angstroms')




%Case 5
end_to_end_distance5 = [];

for i=1:1:1000
    number_of_steps = 2000;
    my_step_list=randi(4, number_of_steps, 1);
    N = number_of_steps;
    d = 10; %step length in Angstroms
    
    path = zeros(N,2);
    
    path(1,1:2) = [0,0];
    
    for i = 2:1:N
        if my_step_list(i) == 1
            steps(i,1) = d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 2
            steps(i,1) = 0;
            steps(i,2) = d;
        elseif my_step_list(i) == 3
            steps(i,1) = 0-d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 4
            steps(i,1) = 0;
            steps(i,2) = 0-d;
        end
    
        path(i,1:2) = path(i-1, 1:2) + steps(i,1:2);
    end
    end_to_end_distance5 = [end_to_end_distance5 (sqrt(path(N,1)^2 + path(N,2)^2))];
end
case5_mean_distance = mean(end_to_end_distance5)

plot(path(1:N,1), path(1:N,2), 'm')

plotmax = max(max(abs(path(:,:))));
ylim([-plotmax plotmax])
xlim([-plotmax plotmax])
xlabel('x(A)')
ylabel('y(A)')
title('Random walks of N = 2000 step of length a = 10 Angstroms')



%Case 6
end_to_end_distance6 = [];

for i=1:1:1000
    number_of_steps = 6000;
    my_step_list=randi(4, number_of_steps, 1);
    N = number_of_steps;
    d = 10; %step length in Angstroms
    
    path = zeros(N,2);
    
    path(1,1:2) = [0,0];
    
    for i = 2:1:N
        if my_step_list(i) == 1
            steps(i,1) = d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 2
            steps(i,1) = 0;
            steps(i,2) = d;
        elseif my_step_list(i) == 3
            steps(i,1) = 0-d;
            steps(i,2) = 0;
        elseif my_step_list(i) == 4
            steps(i,1) = 0;
            steps(i,2) = 0-d;
        end
        path(i,1:2) = path(i-1, 1:2) + steps(i,1:2);
    end
    
    end_to_end_distance6 = [end_to_end_distance6 (sqrt(path(N,1)^2 + path(N,2)^2))];
end

case6_mean_distance = mean(end_to_end_distance6)

plot(path(1:N,1), path(1:N,2), 'y')

plotmax = max(max(abs(path(:,:))));
ylim([-plotmax plotmax])
xlim([-plotmax plotmax])
xlabel('x(A)')
ylabel('y(A)')
title('Random walks of N = 6000, 2000, 500, 150, 50, 25 step of length a = 10 Angstroms')

%PART III

%section 7
figure;

tiledlayout(3, 2, 'TileSpacing', 'compact', 'Padding', 'compact');

%subplot 1
nexttile
histogram(end_to_end_distance)
xlabel('Polymer End-to-End Length')
ylabel('Number of Occurrences')
title('End-to-End Distances: CASE 1')

%subplot 2
nexttile
histogram(end_to_end_distance2)
xlabel('Polymer End-to-End Length')
ylabel('Number of Occurrences')
title('End-to-End Distances: CASE 2')

%subplot 3
nexttile
histogram(end_to_end_distance3)
xlabel('Polymer End-to-End Length')
ylabel('Number of Occurrences')
title('End-to-End Distances: CASE 3')

%subplot 4
nexttile
histogram(end_to_end_distance4)
xlabel('Polymer End-to-End Length')
ylabel('Number of Occurrences')
title('End-to-End Distances: CASE 4')

%subplot 5
nexttile
histogram(end_to_end_distance5)
xlabel('Polymer End-to-End Length')
ylabel('Number of Occurrences')
title('End-to-End Distances: CASE 5')

%subplot 6
nexttile
histogram(end_to_end_distance6)
xlabel('Polymer End-to-End Length')
ylabel('Number of Occurrences')
title('End-to-End Distances: CASE 6')


%section 8
figure;

hold on

%Number of steps array
N_array = [25, 50, 150, 500, 2000, 6000];

%x and y values for the graph
x = d*sqrt(N_array);
y = [case1_mean_distance, case2_mean_distance, case3_mean_distance, case4_mean_distance, case5_mean_distance, case6_mean_distance];

%plot scatterplot
plot(x, y, 'ro', 'LineStyle','none')

%now add linear trendline
p = polyfit(x,y, 1);
y_fit = polyval(p,x);

plot(x, y_fit, 'g-', 'LineWidth', 2)
ld = legend('Data', sprintf('y = %fx + %f', p(1), p(2)), 'Location', 'best');
ld.Title.String = 'Info:';
xlabel('Molecular Weight of Polymer')
ylabel('Mean distances')

