package com.clilystudio.netbook.view;

import android.view.ViewTreeObserver$OnPreDrawListener;

final class b implements ViewTreeObserver$OnPreDrawListener {

    private CropView a;

    b(CropView CropView1) {
        a = CropView1;
    }

    public final boolean onPreDraw() {
        float float1 = (float) a.getWidth();
        float float2 = float1 / CropView.a(a);
        float float3;
        float float4;

        if (float2 >= (float) a.getHeight()) {
            float1 = float1 * ((float) a.getHeight() / float2);
            float2 = (float) a.getHeight();
        }
        float3 = Math.min(float1, float2);
        float4 = CropView.b(a) / float3;
        CropView.c(a).d(float4);
        a.getViewTreeObserver().removeOnPreDrawListener(this);
        CropView.c(a).a(float4, false);
        return true;
    }
}
