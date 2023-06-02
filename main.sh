#!/bin/bash
# this script only does one at a time, so do put a lock at the server side

touch .VITON-lock
convert input.jpg -gravity center -crop 3:4 -resize 768x1024 cropped.jpg

cd openpose-1.7.0
cp ../cropped.jpg img/
./build/examples/openpose/openpose.bin --image_dir img --hand --display 0 --disable_blending --write_images output --write_json json_output
cp output/cropped_rendered.png ../pose.png
cp json_output/cropped_keypoints.json ../pose.json
cd ..

convert cropped.jpg -resize 192x256 downscale.jpg

cd cihp
cp ../downscale.jpg datasets/images/
conda activate tf
python inference_pgn.py
conda deactivate
cp output/cihp_parsing_maps/downscale_vis.png ../cihp.png
cd ..

# todo: process this image???
convert cihp.png -resize 768x1024 upscaled.png
python sharpen.py upscaled.png # does not work well, just a placeholder

cd VITON-HD
cp ../cropped.jpg datasets/test/image/user.jpg
cp ../converted.png datasets/test/image-parse/user.png
cp ../pose.png datasets/test/openpose-img/user_rendered.png
cp ../pose.json datasets/test/openpose-json/user_keypoints.json
python test.py --name production
# i would have edited test_pairs.txt from the server
mv results/production/* ../final.png
rm ../.VITON-lock
