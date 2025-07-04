

if image_xscale >= 1.1 {
Go = false	
}

if Go  {
image_xscale = lerp(image_xscale,1.1,0.7)
image_yscale = lerp(image_yscale,1.1,0.7)
} else {
image_xscale = lerp(image_xscale,1,0.1)
image_yscale = lerp(image_yscale,1,0.1)
}

alpha = lerp(alpha,0.5,0.1)