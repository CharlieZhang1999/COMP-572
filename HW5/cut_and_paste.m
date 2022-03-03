function im_cut_and_paste = cut_and_paste(im_bg, im_s, mask_s)
    M = repmat(mask_s, [1,1,3]);
    im_cut_and_paste = im_bg;
    im_cut_and_paste(M>0) = im_s(M>0);    
end 