# Import dependencies


import zipfile
import os
import random
import shutil


# Set variables


zip_path = r'C:\path\to\folder\File-Of-Images-To-Unzip.zip"'  # zip file path
all_images_root = r'C:\path\to\folder\all_images'  # all_images will be folder housing unzipped images
batch_dir = r'C:\path\to\folder\batch_folder'      # folder to store randomly selected sample images
sample_size = 10


with zipfile.ZipFile(zip_path, 'r') as zip_ref:
    zip_ref.extractall(all_images_root)


print(f"✅ Unzipped to '{all_images_root}'")


# Create batch folder if it doesn't exist


os.makedirs(batch_dir, exist_ok=True)


# Recursively collect all image files


image_extensions = ('.jpg', '.jpeg', '.png', '.gif')
all_images = []


for root, dirs, files in os.walk(all_images_root):
    for file in files:
        if file.lower().endswith(image_extensions):
            full_path = os.path.join(root, file)
            all_images.append(full_path)


# Check if there are enough images


sample_size = 10
if len(all_images) < sample_size:
    raise ValueError(f"Not enough images to sample {sample_size}. Found only {len(all_images)}.")


# Sample and copy the images


sampled_images = random.sample(all_images, sample_size)


for img_path in sampled_images:
    dest_path = os.path.join(batch_dir, os.path.basename(img_path))
    shutil.copy(img_path, dest_path)


print(f"Copied {sample_size} random images to '{batch_dir}'.")
