function varargout = TED_Lab_56(varargin)
% TED_LAB_56 MATLAB code for TED_Lab_56.fig
%      TED_LAB_56, by itself, creates a new TED_LAB_56 or raises the existing
%      singleton*.
%
%      H = TED_LAB_56 returns the handle to a new TED_LAB_56 or the handle to
%      the existing singleton*.
%
%      TED_LAB_56('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TED_LAB_56.M with the given input arguments.
%
%      TED_LAB_56('Property','Value',...) creates a new TED_LAB_56 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TED_Lab_56_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TED_Lab_56_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TED_Lab_56

% Last Modified by GUIDE v2.5 24-Nov-2017 14:01:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TED_Lab_56_OpeningFcn, ...
                   'gui_OutputFcn',  @TED_Lab_56_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TED_Lab_56 is made visible.
function TED_Lab_56_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TED_Lab_56 (see VARARGIN)

% Choose default command line output for TED_Lab_56
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TED_Lab_56 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TED_Lab_56_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1={};% ������� ������ ������ ��� ����������
x1{1}= get(handles.edit1,'String');  % ������� � help �������, ������� ����� ���������� � ������ �������� GUI-���� � ��������� � � ������� ���� � ���� ����
x1{2}= get(handles.edit2,'String');  % ������� ������� ������ ������ �������
x1{3}= get(handles.edit3,'String');
x1{4}= get(handles.edit4,'String');
x1{5}= get(handles.edit5,'String');

x2={};% ������� ������ ������ ��� ����������
x2{1}= get(handles.edit6,'String');
x2{2}= get(handles.edit7,'String');
x2{3}= get(handles.edit8,'String');
x2{4}= get(handles.edit9,'String');
x2{5}= get(handles.edit10,'String');

x3={};% ������� ������ ������ ��� ����������
x3{1}= get(handles.edit11,'String');
x3{2}= get(handles.edit12,'String');
x3{3}= get(handles.edit13,'String');
x3{4}= get(handles.edit14,'String');
x3{5}= get(handles.edit15,'String');

x4={};% ������� ������ ������ ��� ����������
x4{1}= get(handles.edit16,'String'); 
x4{2}= get(handles.edit17,'String');
x4{3}= get(handles.edit18,'String');
x4{4}= get(handles.edit19,'String');
x4{5}= get(handles.edit20,'String');

F_tab={}; % ���� ������
F_tab{1}= get(handles.edit25,'String'); %  ���������� ���������� � ������ ���������� �������� ����������� ������
xx1= str2double(x1) % ������� � help �������, ������� ������������� ������� ���������� ������� ����������, ������� �������� � ����������, � ��������
xx2= str2double(x2)
xx3= str2double(x3)
xx4= str2double(x4)
F_tab= str2double(F_tab);

for i=1:5
   if   isnan (xx1(i))==1 ||isnan(F_tab)==1 % ������� � help �������, ������� ��������� ������� ������� ������� (����������). �������� �� ������: ������ �� ������?
       fprintf('������ ����� ������!!! ��������� ��������...\n')
    return
   end
    if  isnan  (xx2(i))==1||isnan(F_tab)==1 % ������� � help �������, ������� ��������� ������� ������� ������� (����������). �������� �� ������: ������ �� ������?
       fprintf('������ ����� ������!!! ��������� ��������...\n')
    return
   end
       if  isnan  (xx3(i))==1||isnan(F_tab)==1 % ������� � help �������, ������� ��������� ������� ������� ������� (����������). �������� �� ������: ������ �� ������?
       fprintf('������ ����� ������!!! ��������� ��������...\n')
    return
       end
    if  isnan  (xx4(i))==1||isnan(F_tab)==1 % ������� � help �������, ������� ��������� ������� ������� ������� (����������). �������� �� ������: ������ �� ������?
       fprintf('������ ����� ������!!! ��������� ��������...\n')
    return
   end
end

%%-----------Laba 6------------------
% 
%% % ----- ������� -----

% --- ������� �������������� ���������� ������� ������

% ��� �������� ������� ��������� �� ������ ������� ���������� ���������
% ������� �������������� ��� ������ �� ������� (��. ������� � ������������)

X=[xx1;xx2;xx3;xx4]; % ���������� ������ � ���� ���������� ��� ���������
for i=1:4
yi(i)=sum(X(i,:))/length(X(i,:)); % ��� ���������� �� ������� �������� �����. ������� ����� ������ � �������� �� ��� ����� ���� �� �������. ������� ��� ���������� ���� ����������� � ���������� ���.
end % ��� ��������� ������ "(i,:)" � ����� ����������?

fprintf('������� �������������� ���������� ������� ������, \n y1=%1.4f ; \n y2=%1.4f ; \n y3=%1.4f ; \n y4=%1.4f .\n',yi)

% -- ������� ��������� �������� �������� ���������� � �������
for i=1:4
yi_txt{i}=num2str(yi(i)); % ������� � help �������, ������� ��������� �������� ������ ������ � ��������� ������. 
end

set(handles.edit21,'String',yi_txt{1}) % ������� � help �������, ������� ������� ���� ����������� ������ � GUI-���� ���������
set(handles.edit22,'String',yi_txt{2})
set(handles.edit23,'String',yi_txt{3})
set(handles.edit24,'String',yi_txt{4})
% --% 
% ---
% % --- ������� �������������� ������� ������
Y=sum(yi)/length(yi); % ��������� ������� �����. �� �������� � �����, ������� ��� ����
fprintf('������� �������������� ������� ������ Y=%1.4f\n',Y)
% ---

 
% ----- ��������� �� ��������� ����������� (Se) -------

% ���� ������� �������������� ������ ������� �� ����� ��������� ���������
% ������ �������

yij=[xx1;xx2;xx3;xx4];

for i=1:4
Se(i)=(sum(yij(i,:)-yi(i)).^2)   ; % �� ������� �������������� � �/�, ��������� ���������� ��������� ���� (yij � yi), �������� ������� ��� �������� �������� ���������� � ��������� Se

% ��������! � ������ ����� ������������� ����� �������� ���������� ���
% ������(!) ����� ������������. ����� ���������� ����� ����� ���� ���� 
% ��������� ���������� � �������� �� ������� �������. ��������� ������ 
% ����������� ������������ ������� ������� ��� ������ ������! 

% ������, ��� � ����� ��������� ��� ������� ��������� ��� ��������������
% �������� ���������.
end

Se=sum(Se)/(length(yij(:,1))*length(x1)-1); % ��� ������� �������� ������� ������� ����� ������������ ������� ������ �������� � ����������� yij � x1
% ����� (Se) ����� ������������ ������� �����
fprintf('��������� �� ��������� �����������, Se=%1.4f\n',Se)
% ---------
% -----  ��������� �� ������������ ������� (Si)  ------
Si=(sum(yi-Y).^2)/(length(yi)-1); % ���������� ������� ��� ��������� ����, � ��� �� � ������� ������� �������������� � �/�, ��������� ���������� ��������� ���� (yi � Y), �������� ������� ��� �������� ��������� Si
% ��������! � ������ ������� ����� ����� ������� �������� ������� ��
% ������� �������, ������� ����������� � ������� ����� ���������� (yi). ���
% ��������� ������ ���������� ��������� ������� �������� ������ �/�

fprintf('��������� �� ������������ �������, Si=%1.4f\n',Si)
%------
% ----------   ����� ��������� (Sy) ------------
for i=1:4
Sy(i)=(sum((yij(i,:)-Y).^2)); % ���������� ������� ��� ��������� Se, � ��� �� � ������� ������� �������������� � �/�, ��������� ���������� ��������� ���� (yij � Y), �������� ������� ��� �������� ��������� Sy

% ��������! � ������ ����� ������������� ����� �������� ���������� ���
% ������(!) ����� ������������. ����� ���������� ����� ����� ���� ���� 
% ��������� ���������� � �������� �� ������� �������. ��������� ������ 
% ����������� ������������ ������� ������� ��� ������ ������! 

end
Sy=sum(Sy)/((length(yij(:,1))*length(x1))-1);% ��� ������� �������� ������� ������� ����� ������������ ������� ������ �������� � ����������� yij � x1
% ����� (Sy) ����� ������������ ������� �����
fprintf('����� ���������, Sy=%1.4f\n',Sy)

%-----------
% 
% ----- �������� ������ ---------
F=Si/Se; % ���������� ���������� ������ � ������� ��������� ���������, ���������� ����
fprintf('���������� �������� ������, F=%1.4f\n',F)

fad=length(yi)-1;% ��������� ������ ���������� �������� ������ ������� ������� ��������� (!) ��� ����. ������ �� ������� �������������� � �/�
fy=length(yij(:,1))*(length(x1)-1);% ��������� ������ ���������� �������� ������ ������� ������� ����������� (!) ��� ����. ������ �� ������� �������������� � �/�
fprintf('������� ������� ���������, fad=%1.4f\n',fad)
fprintf('������� ������� �����������, fy=%1.4f\n',fy)

set(handles.text15,'Visible','off')

if F_tab<=F % �������� ������� ��������� ������������� � ���������� �������� ����. ������ �������������� ���� ���������� �������, ��������������� 
    fprintf('�������� �����!\n')
     set  (handles.text15,'String','�������� �����!') % ��������� ������� ������ ���������� � GUI-���� ���������� ��������� �������� ��������
% ��� �������� ������ ������ ����?
       
else
    fprintf('�������� �� �����!\n')
     set(handles.text15,'String','�������� �� �����!') % ��������� ������� ������ ���������� � GUI-���� ���������� ��������� �������� ��������
end
% -------------------------------

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double

% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double

% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% %%-----------Laba 6------------------
% % 
% %% % ----- ������� -----
% 
% % --- ������� �������������� ���������� ������� ������
% 
% % ��� �������� ������� ��������� �� ������ ������� ���������� ���������
% % ������� �������������� ��� ������ �� ������� (��. ������� � ������������)
% 
% X=[xx1;xx2;xx3;xx4]; % ���������� ������ � ���� ���������� ��� ���������
% for i=1:4
% yi(i)=sum(X(i,:))/length(X(i,:)); % ��� ���������� �� ������� �������� �����. ������� ����� ������ � �������� �� ��� ����� ���� �� �������. ������� ��� ���������� ���� ����������� � ���������� ���.
% end % ��� ��������� ������ "(i,:)" � ����� ����������?
% 
% fprintf('������� �������������� ���������� ������� ������, \n y1=%1.4f ; \n y2=%1.4f ; \n y3=%1.4f ; \n y4=%1.4f .\n',yi)
% 
% % -- ������� ��������� �������� �������� ���������� � �������
% for i=1:4
% yi_txt{i}=num2str(yi(i)); % ������� � help �������, ������� ��������� �������� ������ ������ � ��������� ������. 
% end
% 
% set(handles.edit21,'String',yi_txt{1}) % ������� � help �������, ������� ������� ���� ����������� ������ � GUI-���� ���������
% set(handles.edit22,'String',yi_txt{2})
% set(handles.edit23,'String',yi_txt{3})
% set(handles.edit24,'String',yi_txt{4})
% % --% 
% % ---
% % % --- ������� �������������� ������� ������
% Y=sum(yi)/length(yi); % ��������� ������� �����. �� �������� � �����, ������� ��� ����
% fprintf('������� �������������� ������� ������ Y=%1.4f\n',Y)
% % ---
% 
%  
% % ----- ��������� �� ��������� ����������� (Se) -------
% 
% % ���� ������� �������������� ������ ������� �� ����� ��������� ���������
% % ������ �������
% 
% yij=[x1;x2;x3;x4];
% 
% for i=1:4
% Se(i)=(sum(yij(i,:)-yi(i)).^2)   ; % �� ������� �������������� � �/�, ��������� ���������� ��������� ���� (yij � yi), �������� ������� ��� �������� �������� ���������� � ��������� Se
% 
% % ��������! � ������ ����� ������������� ����� �������� ���������� ���
% % ������(!) ����� ������������. ����� ���������� ����� ����� ���� ���� 
% % ��������� ���������� � �������� �� ������� �������. ��������� ������ 
% % ����������� ������������ ������� ������� ��� ������ ������! 
% 
% % ������, ��� � ����� ��������� ��� ������� ��������� ��� ��������������
% % �������� ���������.
% end
% 
% Se=sum(Se)/(length(yij(:,1))*length(x1)-1); % ��� ������� �������� ������� ������� ����� ������������ ������� ������ �������� � ����������� yij � x1
% % ����� (Se) ����� ������������ ������� �����
% fprintf('��������� �� ��������� �����������, Se=%1.4f\n',Se)
% % ---------
% % -----  ��������� �� ������������ ������� (Si)  ------
% Si=(sum(yi-Y).^2)/(length(yi)-1); % ���������� ������� ��� ��������� ����, � ��� �� � ������� ������� �������������� � �/�, ��������� ���������� ��������� ���� (yi � Y), �������� ������� ��� �������� ��������� Si
% % ��������! � ������ ������� ����� ����� ������� �������� ������� ��
% % ������� �������, ������� ����������� � ������� ����� ���������� (yi). ���
% % ��������� ������ ���������� ��������� ������� �������� ������ �/�
% 
% fprintf('��������� �� ������������ �������, Si=%1.4f\n',Si)
% %------
% % ----------   ����� ��������� (Sy) ------------
% for i=1:4
% Sy(i)=(sum((yij(i,:)-Y).^2)); % ���������� ������� ��� ��������� Se, � ��� �� � ������� ������� �������������� � �/�, ��������� ���������� ��������� ���� (yij � Y), �������� ������� ��� �������� ��������� Sy
% 
% % ��������! � ������ ����� ������������� ����� �������� ���������� ���
% % ������(!) ����� ������������. ����� ���������� ����� ����� ���� ���� 
% % ��������� ���������� � �������� �� ������� �������. ��������� ������ 
% % ����������� ������������ ������� ������� ��� ������ ������! 
% 
% end
% Sy=sum(Sy)/((length(yij(:,1))*length(x1))-1);% ��� ������� �������� ������� ������� ����� ������������ ������� ������ �������� � ����������� yij � x1
% % ����� (Sy) ����� ������������ ������� �����
% fprintf('����� ���������, Sy=%1.4f\n',Sy)
% 
% %-----------
% % 
% % ----- �������� ������ ---------
% F=Si/Se; % ���������� ���������� ������ � ������� ��������� ���������, ���������� ����
% fprintf('���������� �������� ������, F=%1.4f\n',F)
% 
% fad=length(yi)-1;% ��������� ������ ���������� �������� ������ ������� ������� ��������� (!) ��� ����. ������ �� ������� �������������� � �/�
% fy=length(yij(:,1))*(length(x1)-1);% ��������� ������ ���������� �������� ������ ������� ������� ����������� (!) ��� ����. ������ �� ������� �������������� � �/�
% fprintf('������� ������� ���������, fad=%1.4f\n',fad)
% fprintf('������� ������� �����������, fy=%1.4f\n',fy)
% 
% if F_tab<=F % �������� ������� ��������� ������������� � ���������� �������� ����. ������ �������������� ���� ���������� �������, ��������������� 
%     fprintf('�������� �����!\n')
%      set  (handles.text25,'String','�������� �����!') % ��������� ������� ������ ���������� � GUI-���� ���������� ��������� �������� ��������
% % ��� �������� ������ ������ ����?
%        
% else
%     fprintf('�������� �� �����!\n')
%      set(handles.text25,'String','�������� �� �����!') % ��������� ������� ������ ���������� � GUI-���� ���������� ��������� �������� ��������
% end
% % -------------------------------



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
