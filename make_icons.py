from PIL import Image, ImageDraw

def draw_icon(size):
    img = Image.new('RGBA', (size, size), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)

    margin = size // 10
    d.rounded_rectangle(
        [margin, margin, size - margin, size - margin],
        radius=size // 5,
        fill=(26, 26, 46, 255)
    )

    rx = int(size * 0.28)
    ry = int(size * 0.18)
    rw = int(size * 0.60)
    rh = int(size * 0.65)
    d.rectangle([rx, ry, rx + rw, ry + rh], fill=(255, 255, 255, 255))
    d.rectangle([rx, ry, rx + rw, ry + int(rh * 0.15)], fill=(42, 130, 218, 255))

    line_color = (180, 180, 180, 255)
    line_x1 = rx + int(rw * 0.1)
    line_x2 = rx + int(rw * 0.9)
    for i in range(3):
        ly = ry + int(rh * (0.3 + i * 0.15))
        d.rectangle([line_x1, ly, line_x2, ly + max(1, size // 40)], fill=line_color)

    cx = int(size * 0.62)
    cy = int(size * 0.62)
    cr = int(size * 0.20)
    d.ellipse([cx - cr, cy - cr, cx + cr, cy + cr], fill=(39, 174, 96, 255))

    ck = cr // 2
    pts = [cx - ck + 2, cy, cx - 2, cy + ck - 2, cx + ck, cy - ck + 2]
    d.line(pts, fill=(255, 255, 255, 255), width=max(2, size // 20))

    return img

import os
os.makedirs('assets', exist_ok=True)

# Windows ICO
sizes = [16, 32, 48, 64, 128, 256]
images = [draw_icon(s) for s in sizes]
images[0].save('assets/icon.ico', format='ICO', sizes=[(s, s) for s in sizes], append_images=images[1:])
print("icon.ico created")

# Linux PNG
png = draw_icon(256)
png.save('assets/icon.png', format='PNG')
print("icon.png created")

# Mac ICNS
icns_sizes = [16, 32, 64, 128, 256, 512, 1024]
icns_images = [draw_icon(s) for s in icns_sizes]
icns_images[0].save('assets/icon.icns', format='ICNS', append_images=icns_images[1:])
print("icon.icns created")

print("All icons created in assets/")
