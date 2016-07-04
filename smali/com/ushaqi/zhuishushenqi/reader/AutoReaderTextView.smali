.class public Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;
.super Lme/biubiubiu/justifytext/library/JustifyTextView;
.source "SourceFile"
# instance fields
.field private c:I
.field private d:Landroid/content/Context;
.field private e:I
.field private f:I
.field private g:I
.field private h:[I
.field private i:Lcom/ushaqi/zhuishushenqi/reader/d;
.field private j:Landroid/widget/RelativeLayout$LayoutParams;
.field private k:Z
.field private l:Landroid/view/animation/Animation$AnimationListener;
# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .prologue
    p0.<init>(p1, p2);
    v0 = 0x5;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e = v0;
    v0 = 0xa;
    new-array v0, v0, [I
    fill-array-data v0, :array_0
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->h = v0;
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->k = v0;
    v0 = new c();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->l = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->d = p1;
    return;
    :array_0
    .array-data 4
        0x64
        0x32
        0x23
        0x19
        0x14
        0x10
        0xe
        0xc
        0xb
        0xa
    .end array-data
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)Z
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->k;
    return v0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;Z)Z
    .locals 1
    .prologue
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->k = v0;
    return v0
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j;
    return v0;
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->g;
    return v0
.end method
.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)Lcom/ushaqi/zhuishushenqi/reader/d;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->i;
    return v0;
.end method
.method private h()Landroid/view/animation/Animation;
    .locals 4
    .prologue
    v0 = new b();
    v0.<init>(p0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->g;
    int-to-float v1, v1
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f;
    int-to-float v2, v2
    v1 /= v2;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->h;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e;
    v3 = v3 + -0x1;
    v2 = v2[v3];
    int-to-float v2, v2
    v1 *= v2;
    v2 = 0x447a0000    # 1000.0f;
    v1 *= v2;
    float-to-long v2, v1
    v0.setDuration(v2, v3);
    v1 = new LinearInterpolator();
    v1.<init>();
    v0.setInterpolator(v1);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->l;
    v0.setAnimationListener(v1);
    return v0;
.end method
# virtual methods
.method public final a()V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->k = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->g = v0;
    v0 = p0.h();
    p0.startAnimation(v0);
    return;
.end method
.method public final a(I)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j;
    v0.Landroid/widget/RelativeLayout$LayoutParams;->height = p1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j;
    p0.setLayoutParams(v0);
    return;
.end method
.method public final b()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f;
    v0.Landroid/widget/RelativeLayout$LayoutParams;->height = v1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j;
    p0.setLayoutParams(v0);
    return;
.end method
.method public final c()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e;
    v1 = 0xa;
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e;
    v0 = v0 + 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e = v0;
    p0.e();
    :cond_0
    return;
.end method
.method public final d()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e;
    v1 = 0x1;
    if (v0 <= v1) {
//       if-le v0, v1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e;
    v0 = v0 + -0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e = v0;
    p0.e();
    :cond_0
    return;
.end method
.method public final e()V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->k = v0;
    v0 = p0.getMeasuredHeight();
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->g = v0;
    v0 = p0.h();
    p0.startAnimation(v0);
    return;
.end method
.method public final f()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->d;
    v1 = "auto_reader_speed";
    v2 = 0x5;
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v1, v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e = v0;
    v0 = p0.getLayoutParams();
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j = v0;
    return;
.end method
.method public final g()I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f;
    return v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .prologue
    v1 = 0x0;
    v3 = p0.getPaint();
    v0 = p0.getCurrentTextColor();
    v3.setColor(v0);
    v0 = p0.getDrawableState();
    v3.Landroid/text/TextPaint;->drawableState = v0;
    v0 = p0.getMeasuredWidth();
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->b = v0;
    v0 = p0.getMeasuredHeight();
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->c = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->c;
    v0 -= v2;
    v2 = p0.getText();
    v4 = v2.toString();
    v5 = p0.getTextSize();
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a = v1;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a;
    int-to-float v2, v2
    v2 += v5;
    float-to-int v2, v2
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a = v2;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a;
    v0 = v2 - v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a = v0;
    v6 = p0.getLayout();
    if (v6 != 0) {
//       if-nez v6, :cond_1
    }
    :cond_0
    return;
    :cond_1
    v0 = v3.getFontMetrics();
    v2 = v0.Landroid/graphics/Paint$FontMetrics;->descent;
    v0 = v0.Landroid/graphics/Paint$FontMetrics;->ascent;
    v0 = v2 - v0;
    float-to-double v8, v0
    v8 = Ljava/lang/Math.ceil(v8, v9);
    double-to-int v0, v8
    int-to-float v0, v0
    v2 = v6.getSpacingMultiplier();
    v0 *= v2;
    v2 = v6.getSpacingAdd();
    v0 += v2;
    float-to-int v7, v0
    v0 = v1;
    :goto_0
    v2 = v6.getLineCount();
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_0
    }
    v2 = v6.getLineStart(v0);
    v8 = v6.getLineEnd(v0);
    v9 = p0.getPaint();
    v9 = Landroid/text/StaticLayout.getDesiredWidth(v4, v2, v8, v9);
    v2 = v4.substring(v2, v8);
    v8 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a;
    int-to-float v8, v8
    neg-float v10, v5
    cmpl-float v8, v8, v10
    if (v8 <= 0) {
//       if-lez v8, :cond_2
    }
    v8 = Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView.a(v2);
    if (v8 == 0) {
//       if-eqz v8, :cond_3
    }
    p0.a(p1, v2, v9, v1);
    :cond_2
    :goto_1
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a;
    v2 += v7;
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a = v2;
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_3
    v8 = v2.length();
    if (v8 <= 0) {
//       if-lez v8, :cond_4
    }
    v8 = v2.length();
    v8 = v8 + -0x1;
    v8 = v2.charAt(v8);
    v9 = 0xa;
    if (v8 != v9) {
//       if-ne v8, v9, :cond_4
    }
    v8 = v2.length();
    v8 = v8 + -0x1;
    v2 = v2.substring(v1, v8);
    :cond_4
    v8 = 0x0;
    v9 = p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a;
    int-to-float v9, v9
    p1.drawText(v2, v8, v9, v3);
    goto :goto_1
.end method
.method public setOnPageTurning(Lcom/ushaqi/zhuishushenqi/reader/d;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->i = p1;
    return;
.end method
.method public setTotalHeight(I)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f = p1;
    return;
.end method
