%1.- ������������ �����

clc,clear
close all

[t,rain,temp]=getweatherdatayr('http://www.yr.no/sted/Ukraina/Kiev/Kiev/varsel.xml');
% ����� ���������� � ��

%.- �� ��������� ���������

%load([pwd,'\t.mat'])
%load([pwd,'\temp.mat'])
%load([pwd,'\rain.mat'])

%2.- ����������� �� ���������� ���

% Temp_now=[temp(1,1); {datestr(t(1,1))}];
% T=['Temperatura v Kieve na:',Temp_now(2,1),' scladaye: ',Temp_now(1,1)];
% 
% disp('---------------')
% disp(T)
% disp('---------------')

%3.- ³��������� ����� 

% hold on
% figure(1)
% plot(t,temp,'r'),
% plot(t,rain,'g')
% xlabel('Den'')
% ylabel('Znachennia')
% title('Temperatura i opadu v zalejnosti vid dniv')
% datetick('x','dd')
% 
% ...
% 
% axis tight
% 
% legend({'Temperatura','Opadu'},'Location','NorthEast')
% 
% hold off

%4.- ��������� ����������� �� �����

% CorMas=[temp(1,:);rain(1,:)];
% C=corrcoef(CorMas');
% 
% disp('---------------')
% disp('Coef Corr:')
% disp(C)
% disp('---------------')
% 
% figure(2)
% imagesc(C)
% title('Cor all prices')
% xlabel('temp')
% ylabel('rain')
% 
% if C(1,2)&&C(2,1)==1
%     disp('---------------')
%     disp('Dannie ne correlityut!!!')
%     disp('---------------')
% else
%     disp('---------------')
%     disp('Dannie crreliryut!!!')
%     disp('---------------')
% end

%5.- ������������ �����

% temperature=temp';
% rain_t=rain';
% 
% for i=1:length(t)
% DATE(i)={datestr(t(i))}; % �� ����� ������ ����������� �������� � ���������� �������, ���� 15:00-18:00, ������� ������ � ������ ������� ������� ����� �������� ����������� �� 15:00 �� 18:00, ������ � ������ ����������� �� 18:00-20:00.
% end
% 
% A=table(temperature,rain_t,...
%     'RowNames',DATE);
% A(1:5,:)


%6.- ���������� ����������� ������ ������ �������� � �������� ��������

S_temp=1/length(temp)*sqrt(std(temp));
S_rain=1/length(rain)*sqrt(std(rain));
mean_temp=mean(temp);
mean_rain=mean(rain);
t_tab=abs(mean_temp-mean_rain)/sqrt((S_temp^2/length(temp))*(S_rain^2/length(rain)));

disp('---------------')
disp('Kol-vo elementov v massive:')
disp(length(temp))
disp('Tablichniy koef. Studenta pri alpha=0,95:')
disp(t_tab)
disp('---------------')

v_temp_min=min(temp);
v_temp_max=max(temp);

v_rain_min=min(rain);
v_rain_max=max(rain);

disp('---------------')
fprintf('Doveritelniy interval dlya temperatyri:%4.2d -%4.2d\n',v_temp_min,v_temp_max)
% disp('Doveritelniy interval dlya osadkov:')
% fprintf('Doveritelniy interval dlya osadkov:%4.2d -%4.2d\n',v_rain_min,v_rain_max)
disp('---------------')

