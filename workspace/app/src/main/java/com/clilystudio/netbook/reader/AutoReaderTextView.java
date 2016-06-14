package com.clilystudio.netbook.reader;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.RelativeLayout;

import com.clilystudio.netbook.hpay100.a.a;

import me.biubiubiu.justifytext.library.JustifyTextView;

public class AutoReaderTextView extends JustifyTextView {
    private int c;
    private Context d;
    private int e = 5;
    private int f;
    private int g;
    private int[] h = new int[]{100, 50, 35, 25, 20, 16, 14, 12, 11, 10};
    private d i;
    private RelativeLayout.LayoutParams j;
    private boolean k = false;
    private Animation.AnimationListener l;

    public AutoReaderTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = new c(this);
        this.d = context;
    }

    static /* synthetic */ boolean a(AutoReaderTextView autoReaderTextView) {
        return autoReaderTextView.k;
    }

    static /* synthetic */ boolean a(AutoReaderTextView autoReaderTextView, boolean bl) {
        autoReaderTextView.k = true;
        return true;
    }

    static /* synthetic */ RelativeLayout.LayoutParams b(AutoReaderTextView autoReaderTextView) {
        return autoReaderTextView.j;
    }

    static /* synthetic */ int c(AutoReaderTextView autoReaderTextView) {
        return autoReaderTextView.g;
    }

    static /* synthetic */ d d(AutoReaderTextView autoReaderTextView) {
        return autoReaderTextView.i;
    }

    private Animation h() {
        b b2 = new b(this);
        b2.setDuration((long) (1000.0f * ((float) this.g / (float) this.f * (float) this.h[-1 + this.e])));
        b2.setInterpolator(new LinearInterpolator());
        b2.setAnimationListener(this.l);
        return b2;
    }

    public final void a() {
        this.k = false;
        this.g = this.f;
        this.startAnimation(this.h());
    }

    public final void a(int n) {
        this.j.height = n;
        this.setLayoutParams(this.j);
    }

    public final void b() {
        this.j.height = this.f;
        this.setLayoutParams(this.j);
    }

    public final void c() {
        if (this.e < 10) {
            this.e = 1 + this.e;
            this.e();
        }
    }

    public final void d() {
        if (this.e > 1) {
            this.e = -1 + this.e;
            this.e();
        }
    }

    public final void e() {
        this.k = false;
        this.g = this.getMeasuredHeight();
        this.startAnimation(this.h());
    }

    public final void f() {
        this.e = a.a(this.d, "auto_reader_speed", 5);
        this.j = (RelativeLayout.LayoutParams) this.getLayoutParams();
    }

    public final int g() {
        return this.f;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onDraw(Canvas canvas) {
        TextPaint textPaint = this.getPaint();
        textPaint.setColor(this.getCurrentTextColor());
        textPaint.drawableState = this.getDrawableState();
        this.b = this.getMeasuredWidth();
        this.c = this.getMeasuredHeight();
        int n = this.f - this.c;
        String string = this.getText().toString();
        float f2 = this.getTextSize();
        this.a = 0;
        this.a = (int) (f2 + (float) this.a);
        this.a -= n;
        Layout layout = this.getLayout();
        if (layout == null) {
            return;
        }
        Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
        int n2 = (int) ((float) ((int) Math.ceil(fontMetrics.descent - fontMetrics.ascent)) * layout.getSpacingMultiplier() + layout.getSpacingAdd());
        int n3 = 0;
        while (n3 < layout.getLineCount()) {
            int n4 = layout.getLineStart(n3);
            int n5 = layout.getLineEnd(n3);
            float f3 = StaticLayout.getDesiredWidth(string, n4, n5, this.getPaint());
            String string2 = string.substring(n4, n5);
            if ((float) this.a > -f2) {
                if (AutoReaderTextView.a(string2)) {
                    this.a(canvas, string2, f3, false);
                } else {
                    if (string2.length() > 0 && string2.charAt(-1 + string2.length()) == '\n') {
                        string2 = string2.substring(0, -1 + string2.length());
                    }
                    canvas.drawText(string2, 0.0f, this.a, textPaint);
                }
            }
            this.a = n2 + this.a;
            ++n3;
        }
    }

    public void setOnPageTurning(d d2) {
        this.i = d2;
    }

    public void setTotalHeight(int n) {
        this.f = n;
    }
}
