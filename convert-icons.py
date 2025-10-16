#!/usr/bin/env python3
"""
Convert SVG icons to PNG format for PWA
"""

import os
from pathlib import Path

try:
    import cairosvg
    has_cairosvg = True
except ImportError:
    has_cairosvg = False
    print("Warning: cairosvg not installed. Trying alternative method...")

def convert_svg_to_png(svg_path, png_path, size):
    """Convert SVG to PNG using cairosvg"""
    if has_cairosvg:
        cairosvg.svg2png(
            url=str(svg_path),
            write_to=str(png_path),
            output_width=size,
            output_height=size
        )
        return True
    return False

def convert_all_icons():
    """Convert all SVG icons to PNG"""
    icons_dir = Path(__file__).parent / 'icons'
    
    if not icons_dir.exists():
        print("Error: icons directory not found!")
        return
    
    svg_files = list(icons_dir.glob('*.svg'))
    
    if not svg_files:
        print("No SVG files found in icons directory")
        return
    
    print(f"Converting {len(svg_files)} SVG icons to PNG...")
    
    converted = 0
    failed = 0
    
    for svg_file in svg_files:
        # Extract size from filename (e.g., icon-192x192.svg -> 192)
        filename = svg_file.stem
        
        if 'favicon' in filename:
            size = 32
        elif 'apple-touch-icon' in filename:
            size = 180
        else:
            # Extract size from filename like "icon-192x192"
            try:
                size_str = filename.split('-')[1].split('x')[0]
                size = int(size_str)
            except (IndexError, ValueError):
                print(f"⚠ Skipping {filename} - cannot determine size")
                continue
        
        png_file = svg_file.with_suffix('.png')
        
        try:
            if convert_svg_to_png(svg_file, png_file, size):
                print(f"✓ Converted {svg_file.name} -> {png_file.name}")
                converted += 1
            else:
                print(f"✗ Failed to convert {svg_file.name}")
                failed += 1
        except Exception as e:
            print(f"✗ Error converting {svg_file.name}: {e}")
            failed += 1
    
    print(f"\n✅ Conversion complete!")
    print(f"   Converted: {converted}")
    print(f"   Failed: {failed}")
    
    if failed > 0 and not has_cairosvg:
        print("\n💡 Tip: Install cairosvg for better conversion:")
        print("   pip3 install cairosvg")

if __name__ == '__main__':
    convert_all_icons()
