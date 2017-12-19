import sys
import colorsys

def brightenColor(colorhex, factor):
    rgb = tuple(int(colorhex.lstrip('#')[i:i+2], 16) for i in (0, 2, 4))
    hsv = colorsys.rgb_to_hsv(rgb[0], rgb[1], rgb[2])
    hsv_brighter = (hsv[0], hsv[1], min(hsv[2]*factor, 255))
    rgb_brighter = colorsys.hsv_to_rgb(hsv_brighter[0], hsv_brighter[1], hsv_brighter[2])
    rgb_brighter = tuple([int(col) for col in rgb_brighter])
    hex_brighter = '#%02x%02x%02x' % rgb_brighter
    return hex_brighter

def getColorsFromFile(colorf):
    contents = colorf.read().split('\n')
    del contents[-1]
    colors = []
    for line in contents:
        color = line[-7:-1] + line[-1]
        colors.append(color)
    return colors

def replaceColors(xres, outfile, colors):
    idx = 0
    for lineX in xres:
        lineX = str(lineX)
        if lineX[0:11] == 'URxvt*color':
            newline = lineX[0:-8] + colors[idx]
            newline+= '\n'
            idx += 1
        else:
            newline = lineX
        outfile.write(newline)
        if idx > len(colors):
            break

def main():
    Xdefaults = open(sys.argv[1], "r")
    colorfile = open(sys.argv[2], "r")
    output = open(sys.argv[3], "w")

    colors = getColorsFromFile(colorfile)
    colorsb = [brightenColor(color, 1.35) for color in colors] 
    
    replaceColors(Xdefaults, output, colorsb)

main()
