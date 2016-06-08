package com.clilystudio.netbook.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;

import com.arcsoft.hpay100.a.a;

public class MaskAbleImageView extends ImageView {
    protected int a;

    public MaskAbleImageView(Context paramContext) {
        super(paramContext);
        a(paramContext);
    }

    public MaskAbleImageView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        a(paramContext);
    }

    public MaskAbleImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
        super(paramContext, paramAttributeSet, paramInt);
        a(paramContext);
    }

    private void a(Context paramContext) {
        if (a.a(paramContext, "customer_night_theme", false)) ;
        for (int i = getResources().getColor(2131427405); ; i = -1) {
            this.a = i;
            return;
        }
    }

    protected void a(Canvas paramCanvas) {
        paramCanvas.drawColor(this.a, PorterDuff.Mode.SRC_ATOP);
    }

    protected void onDraw(Canvas paramCanvas) {
        super.onDraw(paramCanvas);
        if (this.a != -1)
            a(paramCanvas);
    }
}

