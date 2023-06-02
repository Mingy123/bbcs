from PIL import Image
import sys

image = Image.open(sys.argv[1])
pixels = list(image.getdata())
width, height = image.size
pixels = [pixels[i * width:(i + 1) * width] for i in range(height)]
# pixels[y][x]

PIXEL_VAR = 3
CUTOFF = 10
START_RADIUS = 5
MAX_SEARCH = 20

colours = [
(0, 0, 0), (0, 254, 254), (0, 0, 254), (0, 119, 252), (0, 0, 85), (85, 51, 0), (85, 254, 169), (0, 128, 0), (0, 85, 85), (254, 0, 0), (254, 85, 0), (254, 169, 0), (254, 254, 0), (169, 254, 85), (52, 86, 128), (51, 169, 220)
]

def same_col(p1, p2):
    if abs(p1[0]-p2[0]) > PIXEL_VAR: return False
    if abs(p1[1]-p2[1]) > PIXEL_VAR: return False
    if abs(p1[2]-p2[2]) > PIXEL_VAR: return False
    return True
def valid_colour(p):
    for c in colours:
        if same_col(p, c): return c

# look around based on radius (ring around it)
# for pixels that match, store in a dict { tuple: int }
# when `cutoff` amount of pixels of that colour, return that
def solve(x, y):
    matches = {}
    for radius in range(START_RADIUS, MAX_SEARCH):
        above = [(-radius, i) for i in range(-radius, radius+1)]
        below = [(radius, i) for i in range(-radius, radius+1)]
        left = [(i[1], i[0]) for i in above[1:-1]]
        right = [(i[1], i[0]) for i in below[1:-1]]
        combine = above+below+left+right
        # check that its valid based on the image size
        for y1, x1 in combine:
            x2, y2 = x+x1, y+y1
            if x2 < 0 or y2 < 0 or x2 >= width or y2 >= height: continue
            # check if its a valid colour
            pixel = pixels[y2][x2]
            test = valid_colour(pixel)
            if test:
                if test in matches.keys(): matches[test] += 1
                else: matches[test] = 1

        for col, count in matches.items():
            if count >= CUTOFF:
                return col
    return (255, 255, 255)

'''
possible improvement
store which coordinates have been changed.
after that, use bfs to find the "land size" of the same colours
if its 10x smaller than the one around it, replace.
'''

used_colours = set()

#imm_n = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)]
for y in range(height):
    for x in range(width):
        pixel = pixels[y][x]
        test = valid_colour(pixel)
        if test:
            image.putpixel((x, y), test)
            used_colours.add(test)
            continue
        sol = solve(x, y)
        image.putpixel((x, y), sol)
        used_colours.add(sol)


image.save('io.png')
conv = image.convert(mode="P", palette=Image.ADAPTIVE, colors=len(used_colours))
conv.save('converted.png')
