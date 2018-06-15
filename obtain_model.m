function Model=obtain_model(dataN, pM, N, s)

res= 1;
Model= [];
Colval= [1 1 0;
         1 0 1;
         0 1 1;
         1 0 0.0;
         0 1 0;
         0 0 1;
         0.6,0.5,0.4;
         0.5 0.7 0.3;
         0.7 0.3 0.5;
         0.4 0.5 0.6;
         0.5,0.3,0.7;
         0.3,0.5,0.7;
         0.3,0.7,0.5;
         0.7,0.5,0.3;
         0.5,0.4,0.6;
         0.6,0.5,0.4;
         0.5 0.7 0.3;
         0.7 0.3 0.5;
         0.4 0.5 0.6;
         0.5,0.3,0.7;
         0.3,0.5,0.7;
         0.3,0.7,0.5;
         0.7,0.5,0.3;
         0.5,0.4,0.6;
         ];
for i=1:N
     R0= pM(i).M(1:3,1:3);    t0= pM(i).M(1:3,4);
    TData= transform_to_global(dataN{i,1}'*s, R0, t0);
    Model= [Model,TData];
%     id= find(TData(1,:)<-100);
%     TData(:,id)= [];
    plot3(TData(1,1:res:end),TData(2,1:res:end),TData(3,1:res:end),'.','Color',Colval(mod(i,24)+1,:));
    hold on
end