import sys

def getcolor(xres, colorf, outfile):
    colors = (colorf.read()).split('\n')
    idx = 0
    for lineX in xres:
        lineX = str(lineX)
        if lineX[0:11] == 'URxvt*color':
            newline = colors[idx]
            newline+= '\n'
            idx += 1
        else:
            newline = lineX
        outfile.write(newline)
        if idx > len(colors):
            break

def main():
    Xdefaults = sys.argv[1]
    colorfile = sys.argv[2]
    output = sys.argv[3]
    f1 = open(Xdefaults) 
    f2 = open(colorfile)
    f3 = open(output, "w")
    getcolor(f1, f2, f3)

main()
