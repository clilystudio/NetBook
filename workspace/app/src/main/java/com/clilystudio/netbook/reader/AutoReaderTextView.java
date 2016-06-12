package com.clilystudio.netbook.reader;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$FontMetrics;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.ViewGroup$LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.RelativeLayout$LayoutParams;

import me.biubiubiu.justifytext.library.JustifyTextView;

public class AutoReaderTextView extends JustifyTextView {

    private int c;
    private Context d;
    private int f;
    private int g;
    private d i;
    private RelativeLayout$LayoutParams j;
    private int e = 5;
    private int[] h = {100, 50, 35, 25, 20, 16, 14, 12, 11, 10};
    private boolean k = false;
    private Animation$AnimationListener l = new c(this);
    public AutoReaderTextView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        d = Context1;
    }

    static boolean a(AutoReaderTextView AutoReaderTextView1) {
        return AutoReaderTextView1.k;
    }

    static boolean a(AutoReaderTextView AutoReaderTextView1, boolean boolean2) {
        AutoReaderTextView1.k = true;
        return true;
    }

    static RelativeLayout$LayoutParams b(AutoReaderTextView AutoReaderTextView1) {
        return AutoReaderTextView1.j;
    }

    static int c(AutoReaderTextView AutoReaderTextView1) {
        return AutoReaderTextView1.g;
    }

    static d d(AutoReaderTextView AutoReaderTextView1) {
        return AutoReaderTextView1.i;
    }

    private Animation h() {
        Object Object1 = new b(this);

        ((Animation) Object1).setDuration((long) (1000.0F * ((float) g / (float) f * (float) h[-1 + e])));
        ((Animation) Object1).setInterpolator((Interpolator) new LinearInterpolator());
        ((Animation) Object1).setAnimationListener(l);
        return (Animation) Object1;
    }

    public final void a() {
        k = false;
        g = f;
        startAnimation(h());
    }

    public final void a(int int1) {
        j.height = int1;
        setLayoutParams((ViewGroup$LayoutParams) j);
    }

    public final void b() {
        j.height = f;
        setLayoutParams((ViewGroup$LayoutParams) j);
    }

    public final void c() {
        if (e < 10) {
            e = 1 + e;
            e();
        }
    }

    public final void d() {
        if (e > 1) {
            e = -1 + e;
            e();
        }
    }

    public final void e() {
        k = false;
        g = getMeasuredHeight();
        startAnimation(h());
    }

    public final void f() {
        e = com.clilystudio.netbook.hpay100.a.a.a(d, "auto_reader_speed", 5);
        j = (RelativeLayout$LayoutParams) getLayoutParams();
    }

    public final int g() {
        return f;
    }

    protected void onDraw(Canvas Canvas1) {
        Object Object2 = getPaint();
        int int3;
        Object Object4;
        float float5;
        Layout Layout6;

        ((TextPaint) Object2).setColor(getCurrentTextColor());
        ((TextPaint) Object2).drawableState = getDrawableState();
        b = getMeasuredWidth();
        c = getMeasuredHeight();
        int3 = f - c;
        Object4 = getText().toString();
        float5 = getTextSize();
        a = 0;
        a = (int) (float5 + (float) a);
        a -= int3;
        Layout6 = getLayout();
        if (Layout6 != null) {
            Paint$FontMetrics FontMetrics7 = ((TextPaint) Object2).getFontMetrics();
            int int8 = (int) ((float) (int) Math.ceil((double) (FontMetrics7.descent - FontMetrics7.ascent)) * Layout6.getSpacingMultiplier() + Layout6.getSpacingAdd());
            int int9;

            for (int9 = 0; int9 < Layout6.getLineCount(); ++int9) {
                int int10 = Layout6.getLineStart(int9);
                int int11 = Layout6.getLineEnd(int9);
                float float12 = StaticLayout.getDesiredWidth((CharSequence) Object4, int10, int11, getPaint());
                String String13 = ((String) Object4).substring(int10, int11);

                if ((float) a > -float5) {
                    if (a(String13))
                        a(Canvas1, String13, float12, false);
                    else {
                        if (String13.length() > 0 && String13.charAt(-1 + String13.length()) == 10)
                            String13 = String13.substring(0, -1 + String13.length());
                        Canvas1.drawText(String13, 0.0F, (float) a, (Paint) Object2);
                    }
                }
                a = int8 + a;
            }
        }
    }

    public void setOnPageTurning(d d1) {
        i = d1;
    }

    public void setTotalHeight(int int1) {
        f = int1;
    }
}
