function im_feather = feather_blend(im_bg, im_s, mask_s, blur)
    h = fspecial('gaussian',[size(im_s,1) size(im_s,2)], blur);
    mask_s = imfilter(mask_s,h);
    alpha = cat(3, mask_s, mask_s, mask_s);
    im_feather = double(im_s).*alpha + (double(im_bg)-double(im_bg).*alpha);
    %im_feather = im_s.*alpha+im_bg.*(1-alpha);

end