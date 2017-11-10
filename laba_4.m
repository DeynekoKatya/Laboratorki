% ========= ���� 4

% ----- �������� �������
% (��� ������ �������, ������� ����� ������� ��������: �������� ����� ������� ���������� ������� ��-���������, ������� �� ����������� ���� � �� ����������� �� ������� ��� �������)

H=N_oper*(N_fact-1)*W; % ��������� ��� �������� ������� � ������� ����������, ��������� ����
fprintf('���������� �������� �������, H=%1.4f \n',H)
f=N_fact-1; % ����� �������� �������
fprintf('����� �������� �������, f=%1.0f \n',f)
H_table=input('������� ��������� �������� �������� ������� ��� �����=0.05, Hi_table='); % ������������ ������� "input" ��� ����� ���������� �������� �������. ������������ ����� - ('������� ��������� �������� �������� ������� ��� �����=0.05, Hi_table=')

if H>H_table % ��������� ��������� �������
    fprintf('\n����� ��������� �����������!\n')
else
    fprintf('\n����� ��������� �� �����������!\n')
end

% -

%% % - ��������� ������ -
[Rang_hist,Rang_pos]=sort(max(Rang_sum)-Rang_sum); % ����������� �� ����������� ������ � ������� ������ ������. ��� ���������� ��� ���������� �����������

bar(fliplr(Rang_hist'),'red') % ���������� �����������. ����������� � ������� ����������, ���������� ������� ����������.

set(gca,'XTickLabelMode','manual') % ��������� ������� � ��������� ������ ��������� ��� �
set(gca,'XTickLabel',fliplr(Rang_pos')) % ������ ������� ��������� ��� �

grid on % ��� ��������� ������ � ����� �������?
title('��������� ������ ��������')
xlabel('������ �������')
ylabel('����� ������')

% (�������������� �������: �������� ���, ���� �� ����������� ���������� ��������� ��������)

% --
for i=1:10
    
    X=get(get(l(i),'Children'),'XData');
    Y=get(get(l(i),'Children'),'YData');
    for ii=1:size(X,2)
        x=X(1,ii)+(X(3,ii)-X(1,ii))/2;
        y=Y(2,ii)+2;
text(x,y,num2str(Y(2,ii)))
    end
end


%% % --- ������ ������ �������� ���� Excel

letter='A':'Z'; % ����� ��������� ������ ������ �������?

xlswrite([fileway,filename],Rang_sum,[letter(N_oper+2),num2str(3),':',letter(N_oper+2),num2str(N_fact+2)]);% ������ � ���� Excel ����� ������

% �������������� ����������� � ������ ������� � ������� ���� -
% "[letter(N_oper+2),num2str(3),':',letter(N_oper+2),num2str(N_fact+2)]".

% ����� ��� ���������� �������� � ���� �� ���� Excel ���������� ������� ���������� � �������� ����������, ��������� �� ������� ��� ����. 

xlswrite([fileway,filename],Vidh,[letter(N_oper+3),num2str(3),':',letter(N_oper+3),num2str(N_fact+2)]); % ������ ����������

xlswrite([fileway,filename],Kvadr_vidh,[letter(N_oper+4),num2str(3),':',letter(N_oper+4),num2str(N_fact+2)]); % ������ �������� ���������� 