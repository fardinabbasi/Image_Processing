# Image Processing
Finding an Electrical Element(BA3240) on a PCB with **2D Correlation**.

<div style="display: flex;">
  <img src="/readme_images/PCB.jpg">
  <img src="/readme_images/BA3240.png">
</div>

## Implementation
By converting images to grayscale, the computational complexity is reduced to a 2D dimension.

```ruby
function B = rgb_to_gray(A)
    red = A(:,:,1);
    green = A(:,:,2);
    blue = A(:,:,3);
    
    B = 0.299 * red + 0.578 * green + 0.114 * blue;
end
```
To locate the IC on the PCB, a 2D correlation is employed, with its formula described below:
<img src="/readme_images/coeff.jpg">
