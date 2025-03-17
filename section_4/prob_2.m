%%prebaring workplace%%
clc; clear; close all

%%parameters and relations%%
i=0;
s=0;

%%loop%%
while s<=120
    i=i+1;
    if rem(i,2)==0 && rem(i,13)==0 && rem(i,16)==0
        s=sqrt(i);
    end
end

%%print the reqruid number%%
fprintf('The required number is: %i\n',i)
