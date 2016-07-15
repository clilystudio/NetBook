package com.clilystudio.netbook.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.widget.ImageView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.TempUtil;

public class MaskAbleImageView extends ImageView {
    protected int a;

    public MaskAbleImageView(Context context) {
        super(context);
        this.a(context);
    }

    public MaskAbleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a(context);
    }

    public MaskAbleImageView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.a(context);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(Context context) {
        this.a = TempUtil.getBoolPref(context, "customer_night_theme", false) ? this.getResources().getColor(R.color.drak_img_mask) : -1;
    }

    protected void a(Canvas canvas) {
        canvas.drawColor(this.a, PorterDuff.Mode.SRC_ATOP);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.a != -1) {
            this.a(canvas);
        }
    }
}
