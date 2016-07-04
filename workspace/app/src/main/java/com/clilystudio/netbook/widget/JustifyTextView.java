package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;

public class JustifyTextView extends TextView {
    public int a;
    public int b;
    private int c;
    private int d;

    public JustifyTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private static void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, float paramFloat3, Paint paramPaint) {
        paramPaint.setStrokeWidth(3.0F);
        float f = paramFloat3 + 18.0F;
        paramCanvas.drawLine(paramFloat1, f, paramFloat2, f, paramPaint);
    }

    public static boolean a(String paramString) {
        return paramString != null && paramString.length() > 0 && paramString.charAt(-1 + paramString.length()) != '\n';
    }

    private static boolean b(String paramString) {
        return (paramString.length() > 3) && (paramString.charAt(0) == ' ') && (paramString.charAt(1) == ' ');
    }

    public final void a(Canvas paramCanvas, String paramString, float paramFloat, boolean paramBoolean) {
        boolean bool = b(paramString);
        float f1 = 0.0F;
        if (bool) {
            paramCanvas.drawText("  ", 0.0F, this.a, getPaint());
            f1 = 0.0F + StaticLayout.getDesiredWidth("  ", getPaint());
            paramString = paramString.substring(3);
        }
        int i = -1 + paramString.length();
        float f2;
        if ((paramString.length() > 2) && (paramString.charAt(0) == '　') && (paramString.charAt(1) == '　')) {
            String str2 = paramString.substring(0, 2);
            float f7 = StaticLayout.getDesiredWidth(str2, getPaint());
            paramCanvas.drawText(str2, f1, this.a, getPaint());
            f2 = f1 + f7;
        }
        for (int j = 2; ; j = 0) {
            float f3 = (this.b - paramFloat) / i;
            int k = j;
            float f4 = f2;
            float f5 = f2;
            while (k < paramString.length()) {
                String str1 = String.valueOf(paramString.charAt(k));
                float f6 = StaticLayout.getDesiredWidth(str1, getPaint());
                if (str1.charAt(0) != '\n') {
                    paramCanvas.drawText(str1, f5, this.a, getPaint());
                    f5 += f6 + f3;
                }
                k++;
                f4 = f5;
            }
            if (paramBoolean)
                a(paramCanvas, f2, f4, this.a, getPaint());
            return;
            f2 = f1;
        }
    }

    protected void onDraw(Canvas paramCanvas) {
        TextPaint localTextPaint = getPaint();
        localTextPaint.setColor(getCurrentTextColor());
        localTextPaint.drawableState = getDrawableState();
        this.b = getMeasuredWidth();
        String str1 = getText().toString();
        this.a = 0;
        this.a = (int) (this.a + getTextSize());
        Layout localLayout = getLayout();
        if (localLayout == null)
            return;
        Paint.FontMetrics localFontMetrics = localTextPaint.getFontMetrics();
        int i = (int) ((int) Math.ceil(localFontMetrics.descent - localFontMetrics.ascent) * localLayout.getSpacingMultiplier() + localLayout.getSpacingAdd());
        int j = 0;
        label112:
        float f1;
        String str2;
        boolean bool;
        if (j < localLayout.getLineCount()) {
            int k = localLayout.getLineStart(j);
            int m = localLayout.getLineEnd(j);
            f1 = StaticLayout.getDesiredWidth(str1, k, m, getPaint());
            str2 = str1.substring(k, m);
            if ((k < this.c) || (m > 1 + this.d))
                break label223;
            bool = true;
            label187:
            if (!a(str2))
                break label229;
            a(paramCanvas, str2, f1, bool);
        }
        while (true) {
            this.a = (i + this.a);
            j++;
            break label112;
            break;
            label223:
            bool = false;
            break label187;
            label229:
            if ((str2.length() > 0) && (str2.charAt(-1 + str2.length()) == '\n'))
                str2 = str2.substring(0, -1 + str2.length());
            paramCanvas.drawText(str2, 0.0F, this.a, localTextPaint);
            if (!bool)
                continue;
            int n = str2.length();
            float f2 = 0.0F;
            if (n > 2) {
                int i1 = str2.charAt(0);
                f2 = 0.0F;
                if (i1 == 12288) {
                    int i2 = str2.charAt(1);
                    f2 = 0.0F;
                    if (i2 == 12288)
                        f2 = 0.0F + StaticLayout.getDesiredWidth(str2.substring(0, 2), getPaint());
                }
            }
            if (b(str2))
                f2 = StaticLayout.getDesiredWidth("\t", getPaint());
            a(paramCanvas, f2, f1, this.a, localTextPaint);
        }
    }

    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
        super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    }

    public void setHighLight(int paramInt1, int paramInt2) {
        this.c = paramInt1;
        this.d = paramInt2;
        invalidate();
    }
}
