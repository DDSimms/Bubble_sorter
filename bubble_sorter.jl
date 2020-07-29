function sorter(n::AbstractVector)::AbstractVector
    for i = 1:length(n) 
        for j = 1:(length(n)-1) #Single pass
            if n[j] > n[j+1]
                n[j],n[j+1] = n[j+1],n[j]
            end
        end
    end
    
    return n
    
end
