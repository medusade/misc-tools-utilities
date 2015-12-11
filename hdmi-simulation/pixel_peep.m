function pixel_peep
    % main script 
    
    init

    mkdir('results')

    test_set('yuv', 50, '-yv', images);
    test_set('gamma', 50, '-gm', images);
    test_set('bits', bit_order_m1, '-m1', images);
    test_set('bits', bit_order_m2, '-m2', images);
end

function test_set(method, arg, mt, images)
    global HDMI_PROCESS_YUV_BLUR_SHARPEN, global HDMI_PROCESS_YUV_NOISE, global HDMI_PROCESS_RGB_COMPRESS
    
    % simulate just RGB->YUV422->RGB (ideal uncompressed 422 recording)
    HDMI_PROCESS_YUV_BLUR_SHARPEN = 0;
    HDMI_PROCESS_YUV_NOISE = 0;
    HDMI_PROCESS_RGB_COMPRESS = 0;
    test_images([mt '-42'], images, method, arg);

    % also add some blur and sharpening
    HDMI_PROCESS_YUV_BLUR_SHARPEN = 1;
    test_images([mt '-bs'], images, method, arg);
    HDMI_PROCESS_YUV_BLUR_SHARPEN = 0;

    % also add JPEG compression (without blur and sharpening)
    HDMI_PROCESS_RGB_COMPRESS = 1;
    test_images([mt '-jp'], images, method, arg);
    HDMI_PROCESS_RGB_COMPRESS = 0;
end

function test_images(suffix, images, method, arg)
    simulate_hdmi(images{1}, method, arg, sprintf('results/color%s.jpg', suffix))
    simulate_hdmi(images{2}, method, arg, sprintf('results/food%s.jpg', suffix))
    simulate_hdmi(images{3}, method, arg, sprintf('results/res%s.jpg', suffix))
end
