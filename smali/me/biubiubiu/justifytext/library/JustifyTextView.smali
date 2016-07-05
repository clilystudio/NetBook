.class public Lme/biubiubiu/justifytext/library/JustifyTextView;
.super Landroid/widget/TextView;
.source "SourceFile"
# instance fields
.field public a:I
.field public b:I
.field private c:I
.field private d:I
# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .prologue
    p0.<init>(p1, p2);
    return;
.end method
.method private static a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 6
    .prologue
    v0 = 0x40400000    # 3.0f;
    p4.setStrokeWidth(v0);
    v0 = 0x41900000    # 18.0f;
    v2 = p3 + v0;
    v0 = p0;
    v1 = p1;
    v3 = p2;
    v4 = v2;
    v5 = p4;
    v0.drawLine(..v5);
    return;
.end method
.method public static a(Ljava/lang/String;)Z
    .locals 3
    .prologue
    v0 = 0x0;
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    v1 = p0.length();
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v1 = p0.length();
    v1 = v1 + -0x1;
    v1 = p0.charAt(v1);
    v2 = 0xa;
    if (v1 == v2) {
//       if-eq v1, v2, :cond_0
    }
    v0 = 0x1;
    goto :goto_0
.end method
.method private static b(Ljava/lang/String;)Z
    .locals 5
    .prologue
    v4 = 0x20;
    v0 = 0x1;
    v1 = 0x0;
    v2 = p0.length();
    v3 = 0x3;
    if (v2 <= v3) {
//       if-le v2, v3, :cond_0
    }
    v2 = p0.charAt(v1);
    if (v2 != v4) {
//       if-ne v2, v4, :cond_0
    }
    v2 = p0.charAt(v0);
    if (v2 != v4) {
//       if-ne v2, v4, :cond_0
    }
    :goto_0
    return v0
    :cond_0
    v0 = v1;
    goto :goto_0
.end method
# virtual methods
.method public final a(Landroid/graphics/Canvas;Ljava/lang/String;FZ)V
    .locals 10
    .prologue
    v6 = 0x3000;
    v1 = 0x2;
    v0 = 0x0;
    v2 = 0x0;
    v3 = Lme/biubiubiu/justifytext/library/JustifyTextView.b(p2);
    if (v3 == 0) {
//       if-eqz v3, :cond_0
    }
    v3 = "  ";
    v4 = p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->a;
    int-to-float v4, v4
    v5 = p0.getPaint();
    p1.drawText(v3, v0, v4, v5);
    v4 = p0.getPaint();
    v3 = Landroid/text/StaticLayout.getDesiredWidth(v3, v4);
    v0 += v3;
    v3 = 0x3;
    p2 = p2.substring(v3);
    :cond_0
    v3 = p2.length();
    v3 = v3 + -0x1;
    v4 = p2.length();
    if (v4 <= v1) {
//       if-le v4, v1, :cond_4
    }
    v4 = p2.charAt(v2);
    if (v4 != v6) {
//       if-ne v4, v6, :cond_4
    }
    v4 = 0x1;
    v4 = p2.charAt(v4);
    if (v4 != v6) {
//       if-ne v4, v6, :cond_4
    }
    v4 = p2.substring(v2, v1);
    v5 = p0.getPaint();
    v5 = Landroid/text/StaticLayout.getDesiredWidth(v4, v5);
    v6 = p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->a;
    int-to-float v6, v6
    v7 = p0.getPaint();
    p1.drawText(v4, v0, v6, v7);
    v0 += v5;
    v9 = v1;
    v1 = v0;
    v0 = v9;
    :goto_0
    v4 = p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->b;
    int-to-float v4, v4
    v4 -= p3;
    int-to-float v3, v3
    v5 = v4 / v3;
    v3 = v0;
    v4 = v1;
    v0 = v1;
    :goto_1
    v6 = p2.length();
    if (v3 >= v6) {
//       if-ge v3, v6, :cond_2
    }
    v4 = p2.charAt(v3);
    v4 = Ljava/lang/String.valueOf(v4);
    v6 = p0.getPaint();
    v6 = Landroid/text/StaticLayout.getDesiredWidth(v4, v6);
    v7 = v4.charAt(v2);
    v8 = 0xa;
    if (v7 == v8) {
//       if-eq v7, v8, :cond_1
    }
    v7 = p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->a;
    int-to-float v7, v7
    v8 = p0.getPaint();
    p1.drawText(v4, v0, v7, v8);
    v4 = v6 + v5;
    v0 += v4;
    :cond_1
    v3 = v3 + 0x1;
    v4 = v0;
    goto :goto_1
    :cond_2
    if (p4 == 0) {
//       if-eqz p4, :cond_3
    }
    v0 = p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->a;
    int-to-float v0, v0
    v2 = p0.getPaint();
    Lme/biubiubiu/justifytext/library/JustifyTextView.a(p1, v1, v4, v0, v2);
    :cond_3
    return;
    :cond_4
    v1 = v0;
    v0 = v2;
    goto :goto_0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .prologue
    v3 = p0.getPaint();
    v0 = p0.getCurrentTextColor();
    v3.setColor(v0);
    v0 = p0.getDrawableState();
    v3.Landroid/text/TextPaint;->drawableState = v0;
    v0 = p0.getMeasuredWidth();
    p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->b = v0;
    v0 = p0.getText();
    v4 = v0.toString();
    v0 = 0x0;
    p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->a = v0;
    v0 = p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->a;
    int-to-float v0, v0
    v1 = p0.getTextSize();
    v0 += v1;
    float-to-int v0, v0
    p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->a = v0;
    v5 = p0.getLayout();
    if (v5 != 0) {
//       if-nez v5, :cond_1
    }
    :cond_0
    return;
    :cond_1
    v0 = v3.getFontMetrics();
    v1 = v0.Landroid/graphics/Paint$FontMetrics;->descent;
    v0 = v0.Landroid/graphics/Paint$FontMetrics;->ascent;
    v0 = v1 - v0;
    float-to-double v0, v0
    v0 = Ljava/lang/Math.ceil(v0, v1);
    double-to-int v0, v0
    int-to-float v0, v0
    v1 = v5.getSpacingMultiplier();
    v0 *= v1;
    v1 = v5.getSpacingAdd();
    v0 += v1;
    float-to-int v6, v0
    v0 = 0x0;
    :goto_0
    v1 = v5.getLineCount();
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_0
    }
    v1 = v5.getLineStart(v0);
    v7 = v5.getLineEnd(v0);
    v2 = p0.getPaint();
    v8 = Landroid/text/StaticLayout.getDesiredWidth(v4, v1, v7, v2);
    v2 = v4.substring(v1, v7);
    v9 = p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->c;
    if (v1 < v9) {
//       if-lt v1, v9, :cond_3
    }
    v1 = p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->d;
    v1 = v1 + 0x1;
    if (v7 > v1) {
//       if-gt v7, v1, :cond_3
    }
    v1 = 0x1;
    :goto_1
    v7 = Lme/biubiubiu/justifytext/library/JustifyTextView.a(v2);
    if (v7 == 0) {
//       if-eqz v7, :cond_4
    }
    p0.a(p1, v2, v8, v1);
    :cond_2
    :goto_2
    v1 = p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->a;
    v1 += v6;
    p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->a = v1;
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_3
    v1 = 0x0;
    goto :goto_1
    :cond_4
    v7 = v2.length();
    if (v7 <= 0) {
//       if-lez v7, :cond_5
    }
    v7 = v2.length();
    v7 = v7 + -0x1;
    v7 = v2.charAt(v7);
    v9 = 0xa;
    if (v7 != v9) {
//       if-ne v7, v9, :cond_5
    }
    v7 = 0x0;
    v9 = v2.length();
    v9 = v9 + -0x1;
    v2 = v2.substring(v7, v9);
    :cond_5
    v7 = 0x0;
    v9 = p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->a;
    int-to-float v9, v9
    p1.drawText(v2, v7, v9, v3);
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v1 = 0x0;
    v7 = v2.length();
    v9 = 0x2;
    if (v7 <= v9) {
//       if-le v7, v9, :cond_6
    }
    v7 = 0x0;
    v7 = v2.charAt(v7);
    v9 = 0x3000;
    if (v7 != v9) {
//       if-ne v7, v9, :cond_6
    }
    v7 = 0x1;
    v7 = v2.charAt(v7);
    v9 = 0x3000;
    if (v7 != v9) {
//       if-ne v7, v9, :cond_6
    }
    v1 = 0x0;
    v7 = 0x2;
    v1 = v2.substring(v1, v7);
    v7 = 0x0;
    v9 = p0.getPaint();
    v1 = Landroid/text/StaticLayout.getDesiredWidth(v1, v9);
    v1 += v7;
    :cond_6
    v2 = Lme/biubiubiu/justifytext/library/JustifyTextView.b(v2);
    if (v2 == 0) {
//       if-eqz v2, :cond_7
    }
    v1 = "\t";
    v2 = p0.getPaint();
    v1 = Landroid/text/StaticLayout.getDesiredWidth(v1, v2);
    :cond_7
    v2 = p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->a;
    int-to-float v2, v2
    Lme/biubiubiu/justifytext/library/JustifyTextView.a(p1, v1, v8, v2, v3);
    goto :goto_2
.end method
.method protected onLayout(ZIIII)V
    .locals 0
    .prologue
    Landroid/widget/TextView.onLayout(p0 .. p5);
    return;
.end method
.method public setHighLight(II)V
    .locals 0
    .prologue
    p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->c = p1;
    p0.Lme/biubiubiu/justifytext/library/JustifyTextView;->d = p2;
    p0.invalidate();
    return;
.end method
