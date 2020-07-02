using Statistics

function quartiles(arr::AbstractVector)
    for x in 2:length(arr), j in 1:length(arr)-1
        if arr[j] > arr[j+1]
            arr[j], arr[j+1] = arr[j+1], arr[j]
        end
    end
    
    if length(arr)%2==0
    println("1st Quartile: ")
    println(arr[floor(Int,(length(arr)/4))+1])
    println("Median: ")
    println(Statistics.mean([arr[floor(Int,(length(arr)/2))],arr[floor(Int,(length(arr)/2)+1)]]))
    println("3rd Quartile:")
    println(arr[floor(Int,(3*(length(arr))/4))+1])
     
    elseif ceil(Int,(0.5*length(arr)))%4!=0 
      println("1st Quartile: ")
      println(Statistics.mean([arr[floor(Int,(length(arr)/4))],arr[floor(Int,(length(arr)/4)+1)]]))
      println("Median: ")
      println(arr[floor(Int,(length(arr)+1)/2)])
      println("3rd Quartile: ")
      println(Statistics.mean([arr[floor(Int,((3*length(arr))/4)+1)],arr[floor(Int,((3*length(arr))/4)+2)]]))
     
    else
      println("1st Quartile: ")
      println(arr[ceil(Int,(length(arr))/4)])
      println("Median: ")
      println(arr[floor(Int,(length(arr)+1)/2)])
      println("3rd Quartile: ")
      println(arr[ceil(Int,(3*length(arr))/4)])
    end
end
 
v = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]
quartiles(v)
