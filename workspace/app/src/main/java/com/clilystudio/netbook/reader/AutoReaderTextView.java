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
import android.view.animation.Transformation;
import android.widget.RelativeLayout;

import com.clilystudio.netbook.util.a;
import com.clilystudio.netbook.widget.JustifyTextView;


public class AutoReaderTextView extends JustifyTextView {
    private Context d;
    private int e = 5;
    private int f;
    private int g;
    private int[] h = new int[]{100, 50, 35, 25, 20, 16, 14, 12, 11, 10};
    private d_interface i;
    private RelativeLayout.LayoutParams j;
    private boolean k = false;
    private Animation.AnimationListener l;

    public AutoReaderTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = new Animation.AnimationListener() {
            @Override
            public void onAnimationStart(Animation animation) {

            }

            @Override
            public void onAnimationEnd(Animation animation) {
                if (AutoReaderTextView.d(AutoReaderTextView.this) != null && AutoReaderTextView.this.getMeasuredHeight() <= 5) {
                    AutoReaderTextView.a(AutoReaderTextView.this, true);
                    AutoReaderTextView.d(AutoReaderTextView.this).d();
                }
           }

            @Override
            public void onAnimationRepeat(Animation animation) {

            }
        };
        this.d = context;
    }

    static /* synthetic */ boolean a(AutoReaderTextView autoReaderTextView) {
        return autoReaderTextView.k;
    }

    static /* synthetic */ boolean a(AutoReaderTextView autoReaderTextView, boolean bl) {
        autoReaderTextView.k = bl;
        return bl;
    }

    static /* synthetic */ RelativeLayout.LayoutParams b(AutoReaderTextView autoReaderTextView) {
        return autoReaderTextView.j;
    }

    static /* synthetic */ int c(AutoReaderTextView autoReaderTextView) {
        return autoReaderTextView.g;
    }

    static /* synthetic */ d_interface d(AutoReaderTextView autoReaderTextView) {
        return autoReaderTextView.i;
    }

    private Animation h() {
        Animation b2 = new Animation(){

            @Override
            protected void applyTransformation(float interpolatedTime, Transformation t) {
                if (!AutoReaderTextView.a(AutoReaderTextView.this)) {
                    AutoReaderTextView.b(AutoReaderTextView.this).height = AutoReaderTextView.c(AutoReaderTextView.this) - (int) (f * (float) AutoReaderTextView.c(AutoReaderTextView.this));
                    AutoReaderTextView.this.setLayoutParams(AutoReaderTextView.b(AutoReaderTextView.this));
                }
            }
        };
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
        int c = this.getMeasuredHeight();
        int n = this.f - c;
        String string = this.getText().toString();
        float f2 = this.getTextSize();
        int a = 0;
        a = (int) (f2 + (float) a);
        a -= n;
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
            if ((float) a > -f2) {
                if (needScale(string2)) {
                    this.drawScaledText(canvas, string2, f3, false);
                } else {
                    if (string2.length() > 0 && string2.charAt(-1 + string2.length()) == '\n') {
                        string2 = string2.substring(0, -1 + string2.length());
                    }
                    canvas.drawText(string2, 0.0f, a, textPaint);
                }
            }
            a = n2 + a;
            ++n3;
        }
    }

    public void setOnPageTurning(d_interface d2) {
        this.i = d2;
    }

    public void setTotalHeight(int n) {
        this.f = n;
    }

    public interface d_interface {
        void d();
    }
}
