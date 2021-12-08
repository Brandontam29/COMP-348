arr = ['shape\n', 'rhombus 10 20\n', 'circle 2\n',
       'ellipse 2 4\n', 'shape\n', 'ellipse -1 4\n', 'rhombus 5 0']
print(len(arr[0]))
print(arr[0].find('\n'))
print(arr[1].find('\n'))
stop1 = arr[1].find('\n')
print(arr[1][0:stop1])
print(len(arr))