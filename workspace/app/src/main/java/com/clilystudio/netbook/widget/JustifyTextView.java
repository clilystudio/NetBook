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
    private int mLineY;
    private int mViewWidth;
    private int mHighLightStart;
    private int mHighLightEnd;

    public JustifyTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private static void drawUnderLine(Canvas canvas, float startX, float stopX, float lineY, Paint paint) {
        paint.setStrokeWidth(3.0F);
        float startY = lineY + 18.0F;
        canvas.drawLine(startX, startY, stopX, startY, paint);
    }

    public static boolean needScale(String line) {
        return line != null && line.length() > 0 && line.charAt(line.length() - 1) != 10;
    }

    private static boolean isFirstLineOfParagraph(String line) {
        return line.length() > 3 && line.charAt(0) == 0x3000 && line.charAt(1) == 0x3000;
    }

    public final void drawScaledText(Canvas canvas, String line, float paramFloat, boolean isHighLight) {
        float x = 0.0F;
        if (isFirstLineOfParagraph(line)) {
            canvas.drawText("  ", 0.0F, this.mLineY, getPaint());
            x = 0.0F + StaticLayout.getDesiredWidth("  ", getPaint());
            line = line.substring(3);
        }
        int gapCount = line.length() - 1;
        int i = 0;
        if ((line.length() > 2) && (line.charAt(0) == '　') && (line.charAt(1) == '　')) {
            String substring = line.substring(0, 2);
            float cw = StaticLayout.getDesiredWidth(substring, getPaint());
            canvas.drawText(substring, x, this.mLineY, getPaint());
            x += cw;
            i = 2;
        }
        float gap = (mViewWidth - paramFloat) / gapCount;
        float startX = x;
        float stopX = x;
        while (i < line.length()) {
            String c = String.valueOf(line.charAt(i));
            float charWidth = StaticLayout.getDesiredWidth(c, getPaint());
            if (c.charAt(0) != 10) {
                canvas.drawText(c, stopX, this.mLineY, getPaint());
                stopX += charWidth + gap;
            }
            i++;
        }
        if (isHighLight) {
            drawUnderLine(canvas, startX, stopX, this.mLineY, getPaint());
        }
    }

    protected void onDraw(Canvas canvas) {
        TextPaint paint = getPaint();
        paint.setColor(getCurrentTextColor());
        paint.drawableState = getDrawableState();
        mViewWidth = getMeasuredWidth();
        String source = getText().toString();
        mLineY = 0;
        mLineY += getTextSize();
        Layout layout = getLayout();
        if (layout == null) {
            return;
        }
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        int textHeight = (int) Math.ceil(fontMetrics.descent - fontMetrics.ascent);
        textHeight = (int) (textHeight * layout.getSpacingMultiplier() + layout.getSpacingAdd());
        for (int i = 0; i < layout.getLineCount(); i++) {
            int lineStart = layout.getLineStart(i);
            int lineEnd = layout.getLineEnd(i);
            float width = StaticLayout.getDesiredWidth(source, lineStart, lineEnd, paint);
            String line = source.substring(lineStart, lineEnd);
            boolean isHighLight = lineStart >= this.mHighLightStart && lineEnd <= this.mHighLightEnd + 1;
            if (needScale(line)) {
                drawScaledText(canvas, line, width, isHighLight);
            } else {
                if (line.length() > 0 && line.charAt(line.length() - 1) == 10) {
                    line = line.substring(0, line.length() - 1);
                }
                canvas.drawText(line, 0, this.mLineY, paint);
                if (lineStart != 0) {
                    float startX = 0x0;
                    if (line.length() > 2 && line.charAt(0) == 0x3000 && line.charAt(1) != 0x3000) {
                        startX = StaticLayout.getDesiredWidth(line.substring(0, 2), paint);
                    }
                    if (isFirstLineOfParagraph(line)) {
                        startX = StaticLayout.getDesiredWidth("\t", paint);
                    }
                    drawUnderLine(canvas, startX, width, this.mLineY, paint);
                }
            }
            this.mLineY += textHeight;
        }
    }

    public void setHighLight(int start, int end) {
        this.mHighLightStart = start;
        this.mHighLightEnd = end;
        invalidate();
    }
}
