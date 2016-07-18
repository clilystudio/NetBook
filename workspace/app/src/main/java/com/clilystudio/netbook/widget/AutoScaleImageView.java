package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;

public class AutoScaleImageView extends SmartImageView {
    private final int b;

    public AutoScaleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = context.getResources().getDisplayMetrics().widthPixels;
    }

    static /* synthetic */ int a(AutoScaleImageView autoScaleImageView) {
        return autoScaleImageView.b;
    }

    @Override
    public void setImageUrl(String string) {
        this.setImageUrl(string, 0, new ImageLoadingListener(){

            @Override
            public void onLoadingStarted(String imageUri, View view) {

            }

            @Override
            public void onLoadingFailed(String imageUri, View view, FailReason failReason) {

            }

            @Override
            public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
                float f = (float) loadedImage.getHeight() / (float) loadedImage.getWidth() * (float) AutoScaleImageView.this.b;
                ViewGroup.LayoutParams layoutParams = AutoScaleImageView.this.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.height = (int) f;
                    layoutParams.width = AutoScaleImageView.this.b;
                    AutoScaleImageView.this.requestLayout();
                }
            }

            @Override
            public void onLoadingCancelled(String imageUri, View view) {

            }
        });
    }

    @Override
    public final void setImageUrl(String string, int n) {
        super.setImageUrl(string, n);
    }

    @Override
    public final void setImageUrl(String string, int n, ImageLoadingListener a2) {
        super.setImageUrl(string, n, a2);
    }
}
