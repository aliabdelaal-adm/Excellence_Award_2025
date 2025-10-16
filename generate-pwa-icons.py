#!/usr/bin/env python3
"""
Generate PWA icons for Excellence Award 2025 Platform
Creates icons in various sizes for different devices and purposes
"""

import os
from pathlib import Path

def create_svg_icon(size, is_maskable=False):
    """Create an SVG icon with the platform logo"""
    
    # Colors from the platform theme
    gradient_id = "grad1"
    
    # Add safe zone for maskable icons (20% padding)
    if is_maskable:
        view_box = "0 0 100 100"
        content_margin = 20
        content_size = 60
        content_x = content_margin
        content_y = content_margin
    else:
        view_box = "0 0 100 100"
        content_margin = 10
        content_size = 80
        content_x = content_margin
        content_y = content_margin
    
    svg_content = f'''<?xml version="1.0" encoding="UTF-8"?>
<svg width="{size}" height="{size}" viewBox="{view_box}" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="{gradient_id}" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#4facfe;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#00f2fe;stop-opacity:1" />
    </linearGradient>
  </defs>
  
  <!-- Background for maskable icons -->
  {f'<rect width="100" height="100" fill="#0f172a"/>' if is_maskable else ''}
  
  <!-- Excellence Award Logo Symbol -->
  <!-- Star/Award Icon -->
  <g transform="translate({content_x + content_size/2}, {content_y + content_size/2})">
    <!-- Outer Star -->
    <path d="M 0,-{content_size*0.4} L {content_size*0.1},-{content_size*0.15} L {content_size*0.35},-{content_size*0.1} L {content_size*0.15},{content_size*0.05} L {content_size*0.25},{content_size*0.3} L 0,{content_size*0.18} L -{content_size*0.25},{content_size*0.3} L -{content_size*0.15},{content_size*0.05} L -{content_size*0.35},-{content_size*0.1} L -{content_size*0.1},-{content_size*0.15} Z" 
          fill="url(#{gradient_id})" 
          stroke="#fff" 
          stroke-width="1"/>
    
    <!-- Inner Circle -->
    <circle cx="0" cy="0" r="{content_size*0.12}" fill="#0f172a" stroke="#00f2fe" stroke-width="2"/>
    
    <!-- Arabic Number 1 (indicating #1 Excellence) -->
    <text x="0" y="{content_size*0.05}" 
          font-family="Arial, sans-serif" 
          font-size="{content_size*0.15}" 
          font-weight="bold" 
          fill="#00f2fe" 
          text-anchor="middle">1</text>
  </g>
</svg>'''
    
    return svg_content

def create_icons_directory():
    """Create the icons directory if it doesn't exist"""
    icons_dir = Path(__file__).parent / 'icons'
    icons_dir.mkdir(exist_ok=True)
    return icons_dir

def generate_icons():
    """Generate all required PWA icons"""
    icons_dir = create_icons_directory()
    
    # Icon sizes for PWA
    sizes = [72, 96, 128, 144, 152, 192, 384, 512]
    
    print("Generating PWA icons...")
    
    # Generate regular icons
    for size in sizes:
        icon_path = icons_dir / f'icon-{size}x{size}.png'
        svg_content = create_svg_icon(size, is_maskable=False)
        svg_path = icons_dir / f'icon-{size}x{size}.svg'
        
        with open(svg_path, 'w', encoding='utf-8') as f:
            f.write(svg_content)
        
        print(f"✓ Created {svg_path.name}")
    
    # Generate maskable icons (for adaptive icons on Android)
    for size in [192, 512]:
        icon_path = icons_dir / f'icon-{size}x{size}-maskable.png'
        svg_content = create_svg_icon(size, is_maskable=True)
        svg_path = icons_dir / f'icon-{size}x{size}-maskable.svg'
        
        with open(svg_path, 'w', encoding='utf-8') as f:
            f.write(svg_content)
        
        print(f"✓ Created {svg_path.name} (maskable)")
    
    # Create favicon.ico equivalent (SVG)
    favicon_path = icons_dir / 'favicon.svg'
    with open(favicon_path, 'w', encoding='utf-8') as f:
        f.write(create_svg_icon(32, is_maskable=False))
    print(f"✓ Created favicon.svg")
    
    # Create apple-touch-icon
    apple_icon_path = icons_dir / 'apple-touch-icon.svg'
    with open(apple_icon_path, 'w', encoding='utf-8') as f:
        f.write(create_svg_icon(180, is_maskable=False))
    print(f"✓ Created apple-touch-icon.svg")
    
    print("\n✅ All PWA icons generated successfully!")
    print(f"📁 Icons location: {icons_dir}")
    print("\nNote: SVG icons created. For production, convert to PNG using:")
    print("  - ImageMagick: convert icon.svg icon.png")
    print("  - Or use an online converter like https://cloudconvert.com/svg-to-png")

if __name__ == '__main__':
    generate_icons()
