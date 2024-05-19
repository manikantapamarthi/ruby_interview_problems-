
def find_max(a,k)
  len = a.length
  return -1 if len < k

  for i in 0..len-k
    max=a[i]
    for j in i+1...i+k
      if a[j]>max
        max=a[j]
      end
    end
    print "#{max} "
  end
  return
end


find_max([9,1,8,2,7,3,6,4,5,15,17],4)
