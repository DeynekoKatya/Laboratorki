function pushbutton1_Callback(hObject, eventdata, handles)
x1={};% ������� ������ ������ ��� ����������
x1{1}= get(handles.edit1,'String');  % ������� � help �������, ������� ����� ���������� � ������ �������� GUI-���� � ��������� � � ������� ���� � ���� ����
x1{2}= get(handles.edit2,'String');  % ������� ������� ������ ������ �������
x1{3}= get(handles.edit3,'String');
x1{4}= get(handles.edit4,'String');
x1{5}= get(handles.edit5,'String');

x2={};% ������� ������ ������ ��� ����������
x2{1}= get(handles.edit7,'String');
x2{2}= get(handles.edit8,'String');
x2{3}= get(handles.edit9,'String');
x2{4}= get(handles.edit10,'String');
x2{5}= get(handles.edit11,'String');

x3={};% ������� ������ ������ ��� ����������
x3{1}= get(handles.edit13,'String');
x3{2}= get(handles.edit14,'String');
x3{3}= get(handles.edit15,'String');
x3{4}= get(handles.edit16,'String');
x3{5}= get(handles.edit17,'String');

x4={};% ������� ������ ������ ��� ����������
x4{1}= get(handles.edit19,'String'); 
x4{2}= get(handles.edit20,'String');
x4{3}= get(handles.edit21,'String');
x4{4}= get(handles.edit22,'String');
x4{5}= get(handles.edit23,'String');

F_tab={}; % ���� ������
F_tab{1}= get(handles.edit25,'String'); %  ���������� ���������� � ������ ���������� �������� ����������� ������
x1= str2double(x1); % ������� � help �������, ������� ������������� ������� ���������� ������� ����������, ������� �������� � ����������, � ��������
x2= str2double(x2);
x3= str2double(x3);
x4= str2double(x4);
F_tab= str2double(F_tab);

for i=1:5
   if   isempty (x1(i))==1 ||isempty(F_tab)==1 % ������� � help �������, ������� ��������� ������� ������� ������� (����������). �������� �� ������: ������ �� ������?
       fprintf('������ ����� ������!!! ��������� ��������...\n')
    return
   end
    if  isempty  (x2(i))==1||isempty(F_tab)==1 % ������� � help �������, ������� ��������� ������� ������� ������� (����������). �������� �� ������: ������ �� ������?
       fprintf('������ ����� ������!!! ��������� ��������...\n')
    return
   end
       if  isempty  (x3(i))==1||isempty(F_tab)==1 % ������� � help �������, ������� ��������� ������� ������� ������� (����������). �������� �� ������: ������ �� ������?
       fprintf('������ ����� ������!!! ��������� ��������...\n')
    return
       end
    if  isempty  (x4(i))==1||isempty(F_tab)==1 % ������� � help �������, ������� ��������� ������� ������� ������� (����������). �������� �� ������: ������ �� ������?
       fprintf('������ ����� ������!!! ��������� ��������...\n')
    return
   end
end


