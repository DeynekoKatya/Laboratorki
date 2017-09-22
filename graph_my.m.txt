function [Lam_mas,Mu_mas]=graph_my(x1,x2)

if x1==4 % если выбрано 4 аппарата
    Lam_mas = fliplr([1:1:x1]); 
    if x2==x1 
        Mu_mas= 1:1:x2; 
    end
    if x2<x1 
        Mu_mas= 1:1:x2;
        for i=1:(x1-x2) 
Mu_mas = [Mu_mas, x2];
        end
    end
    
fprintf('S0 <-> (%1.0f*Lam,%1.0f*Mu) <-> S1 <-> (%1.0f*Lam,%1.0f*Mu) <-> S2 <-> (%1.0f*Lam,%1.0f*Mu) <-> S3 <-> (%1.0f*Lam,%1.0f*Mu) <-> S4 \n', [Lam_mas(1),Mu_mas(1),Lam_mas(2),Mu_mas(2),Lam_mas(3),Mu_mas(3),Lam_mas(4),Mu_mas(4)]) % 4 прибора

end


if x1==5 % если выбрано 5 аппаратов
    Lam_mas = fliplr([1:1:x1]); 
    if x2==x1
        Mu_mas= 1:1:x2; 
    end
    if x2<x1 
        Mu_mas= 1:1:x2;
        for i=1:(x1-x2) 
Mu_mas = [Mu_mas, x2];
        end
    end
fprintf('S0 <-> (%1.0f*Lam,%1.0f*Mu) <-> S1 <-> (%1.0f*Lam,%1.0f*Mu) <-> S2 <-> (%1.0f*Lam,%1.0f*Mu) <-> S4 <-> (%1.0f*Lam,%1.0f*Mu) <-> S4 <-> (%1.0f*Lam,%1.0f*Mu) <-> S5 \n', [Lam_mas(1),Mu_mas(1),Lam_mas(2),Mu_mas(2),Lam_mas(3),Mu_mas(3),Lam_mas(4),Mu_mas(4),Lam_mas(5),Mu_mas(5)])% 5 прибора
end

if x1==6 % если выбрано 6 аппаратов
    
% («аполните пропущенные строки самосто€тельно!!!)
    
end

if x1==7 % если выбрано 7 аппаратов

% («аполните пропущенные строки самосто€тельно!!!)

end

if x1==8 % если выбрано 8 аппаратов

% («аполните пропущенные строки самосто€тельно!!!)

end

if x1==9 % если выбрано 9 аппаратов

% («аполните пропущенные строки самосто€тельно!!!)
    
end

if x1==10 % если выбрано 10 аппаратов

% («аполните пропущенные строки самосто€тельно!!!)
    
end