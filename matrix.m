clear all;
clc;
n=input ('matrix A= ');
m=input ('matrix B= ');
for i = 1:n 
    M(i, : )= input([' Masukkan nilai matriks m ' num2str(i) '=']);
    %N(i, : )= input('Masukkan nilai matriks n' num2str(i) '=']);
end
disp('nilai matriks A')
disp(M)
for i=1:n-1
    if M(i,i)==0
        a= i;
        while M(a,i)==0
            a=a+1;
        end
        T=M(i, :);
        M(i, :)= M(a, :);
        M(a, :)= T;
        disp (['B'num2str(i)'<-->B'num2str(a)])
        disp (M)
    end
    
    for j=i+1 :n
        if M(j,i) ~=0
            disp(['B' num2str(j)'-'(num2str(M(j,i)) '/' num2str(M(i,i)) ')B' num2str(i)])
            M(j, :)=M(j, :)- ((M(j,i)./M(i,i)* M(i, :)));
            
            disp (M)
        end
    end
end
if M(n,n)==0 && M(n, n+1) ~=0
    disp('Matriks tidak ada penyelesaian')
else
    for i=n:0:i
        for j=i-1 : 0:i
            disp(['B' num2str(j)'-(' num2str (M(j,i)) '/' num2str(M(i,i)) ')B' num2str(i)])
            M(j, :)= M(j, :)- (M(j,i)./ M (i,i)*M(i, :));
            
            disp (M)
        end
    end
    for i=1:n
        disp (['B' num2str(M(i,i)) ')B' num2str(i)])
        M(i, :) = (M(i,i))*M(i, :);
        disp(M)
    end
    disp('Perkalian Hasil Matriks A dan B')
    disp(M)
    disp('Hasil dari matriks A dan B adalah')
    for i=1 :n
        disp (['x' num2str(i) '=' num2str(M(i, n+1)])
    end
end
            