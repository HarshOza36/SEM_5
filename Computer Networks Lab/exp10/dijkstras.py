INF = 99
n = int(input('Enter number of nodes>> '))
print('Enter the matrix>>')
adjmat = [list(map(int, input().split())) for i in range(n)]
src = int(input('Enter Source>> '))-1
dist = [INF for i in range(n)]
path = [-1 for i in range(n)]
dist[src] = 0
visited = [False] * n
for i in range(n):
    min_dist = INF
    min_index = -1
    for i in range(n):
        if dist[i] < min_dist and (not visited[i]):
            min_index = i
            min_dist = dist[i]
    visited[min_index] = True
    i = min_index
    for j in range(n):
        if adjmat[i][j] > 0 and not visited[j] and dist[j] > dist[i] + adjmat[i][j]:
            dist[j] = dist[i] + adjmat[i][j]
            path[j] = i
for i in range(n):
    if i == src:
        continue
    k = path[i]
    pt = []
    if dist[i] == INF:
        print('No path',end="")
    else:
        pt.append(str(i+1))
        while k != src:
            pt.append(str(k+1))
            k = path[k]
        pt.append(str(src+1))
        pt.reverse()
    
    print(' -> '.join(pt)+' : '+str(dist[i])+"\n")
    
		
'''	
OUTPUT:
enter n: 6
enter matrix
0 50 99 10 99 99
99 0 10 15 99 99
99 99 0 99 30 99
20 99 99 0 99 99
99 20 35 99 0 99
99 99 99 99 3 0
src: 2
2 -> 4 -> 1 :  35
2 -> 3 :  10
2 -> 4 :  15
2 -> 3 -> 5 :  40
No path :  99
'''
