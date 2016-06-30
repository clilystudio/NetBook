package com.clilystudio.netbook.ui;

import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.netbook.api.ApiService;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.process.BitmapProcessor;

public class SmartImageView extends MaskAbleImageView {
    public SmartImageView(Context context) {
        super(context);
    }

    public SmartImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SmartImageView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    protected BitmapProcessor a() {
        return null;
    }

    public void setApiImageUrl(String string, int n) {
        this.setImageUrl(ApiService.a + string, n);
    }

    public void setImageUrl(String string) {
        this.setImageUrl(string, 0);
    }

    public void setImageUrl(String string, int n) {
        this.setImageUrl(string, n, null);
    }

    public void setImageUrl(String string, int n, ImageLoadingListener a2) {
        DisplayImageOptions.Builder v01 = new DisplayImageOptions.Builder();
        v01.cacheOnDisk(true);
        v01.resetViewBeforeLoading(true);
        if (n != 0) {
            v01.showImageForEmptyUri(n);
        }
        BitmapProcessor v11 = this.a();
        if (v11 != null) {
            v01.postProcessor(v11);
        }
        DisplayImageOptions v02 = v01.build();
        if (string == null || !string.contains("static")) {
            ImageLoader.getInstance().displayImage(string, this, v02, a2);
        }
    }
}
