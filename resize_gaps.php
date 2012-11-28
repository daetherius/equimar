<?php
$opts['w'] = 60;
$opts['h'] = 60;
$img = getimagesize($filename);
$size[0] = $img[0];
$size[1] = $img[1];
$original = imagecreatefromjpeg($filename); // change according to your source type
$new = imagecreatetruecolor($opts['w'], $opts['h']);
$white = imagecolorallocate($new, 255, 255, 255);
imagefill($new, 0, 0, $white);

if (($size[0] / $size[1]) >= ($opts['w'] / $opts['h'])) {
    // by width
    $nw = $opts['w'];
    $nh = $size[1] * ($opts['w'] / $size[0]);
    $nx = 0;
    $ny = round(fabs($opts['h'] - $nh) / 2);
} else {
    // by height
    $nw = $size[0] * ($opts['h'] / $size[1]);
    $nh = $max_height;
    $nx = round(fabs($opts['w'] - $nw) / 2);
    $ny = 0;
}

imagecopyresized($new, $original, $nx, $ny, 0, 0, $nw, $nh, $size[0], $size[1]);
// do something with new: like imagepng($new, ...);
imagedestroy($new);
imagedestroy($original);
