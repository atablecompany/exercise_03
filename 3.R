IndexOfMin = function(array, first, last){
  index = first
  for (k in (first+1):last){
    if (array[k] < array[index]){
      index = k
    }
  }
  return(index)
}
# 1       1
# 2(k+1)  1
# 1       k
# 1       k
# T1 = 2(k+1)+k+k = 4k+1

SelectionSort = function(a, n){
  for (i in 1:(n-1)){
    j = IndexOfMin(a, i, n)
    pom = a[i]
    a[i] = a[j]
    a[j] = pom
    print(a)
  }
  return(a)
}
# 2(n+1)  1
# T1      n
# 1       n
# 1       n
# 1       n
# T2 = 2(n+1)+T1*n+n+n+n = 2n+2+(4k+1)n+3n = 4kn+6n+2

RecursiveSelectionSort = function(a, first = 1){
  last = length(a)
  if (first < last){
    index = IndexOfMin(a, first, last)
    pom = a[first]
    a[first] = a[index]
    a[index] = pom
    a = RecursiveSelectionSort(a, first + 1)
  }
  return(a)
}
# 1     1
# T1    1
# 1     1
# 1     1
# 1     1
# T1+4  m
# T2 = T1+4+(T1+4)m = 4k+1+(4k+1)m+4 = 4km+4k+m+5

aaa = array(c(1,5,34,23,5342,452,98,4))
SelectionSort(aaa, length(aaa))
RecursiveSelectionSort(aaa)
