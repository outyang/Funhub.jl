using DataFrames
function Array2Dict(A::Array)
m,n=size(A);
B=Array{Any}(undef,m);
if n>2
    error("only two width is spport")
elseif n==2
    for i=1:m
        B[i]=(A[i,1],A[i,2]);
    end
end
return Dict(B)
end

function Frame2Array(dt::DataFrames.DataFrame)
return convert(Array,dt)
end

function Frame2Dict(dt::DataFrames.DataFrame)
A=convert(Array,dt);
m,n=size(A);
B=Array{Any}(undef,m);
for i=1:m
   B[i]=(A[i,1],A[i,2]);
end
return Dict(B)
end