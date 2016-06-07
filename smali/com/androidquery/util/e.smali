.class public final Lcom/androidquery/util/e;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/graphics/Matrix;

.field private e:I

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/util/e;->b:Ljava/lang/ref/WeakReference;

    .line 51
    iput p4, p0, Lcom/androidquery/util/e;->a:F

    .line 52
    iput p5, p0, Lcom/androidquery/util/e;->f:F

    .line 54
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 57
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Lcom/androidquery/util/e;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 61
    return-void
.end method

.method private a(III)I
    .locals 3

    .prologue
    .line 155
    iget v0, p0, Lcom/androidquery/util/e;->a:F

    .line 157
    iget v1, p0, Lcom/androidquery/util/e;->a:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 158
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 161
    :cond_0
    int-to-float v1, p3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/widget/ImageView;)I
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    :cond_0
    if-gtz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 74
    :cond_1
    if-lez v0, :cond_2

    .line 75
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 78
    :cond_2
    return v0
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 3

    .prologue
    .line 127
    invoke-static {p1}, Lcom/androidquery/util/e;->a(Landroid/widget/ImageView;)I

    move-result v0

    .line 128
    if-gtz v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 131
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 134
    invoke-direct {p0, v1, v2, v0}, Lcom/androidquery/util/e;->a(III)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 139
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    if-eq v0, v2, :cond_2

    .line 144
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :cond_2
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/util/e;->c:Z

    goto :goto_0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3fc00000    # 1.5f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/androidquery/util/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/androidquery/util/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    :cond_0
    iget v1, p0, Lcom/androidquery/util/e;->a:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    .line 91
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    :cond_2
    :goto_0
    return-void

    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/androidquery/util/e;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1166
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1168
    iget-object v1, p0, Lcom/androidquery/util/e;->d:Landroid/graphics/Matrix;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/androidquery/util/e;->e:I

    if-eq v5, v1, :cond_b

    .line 1172
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1173
    invoke-static {v0}, Lcom/androidquery/util/e;->a(Landroid/widget/ImageView;)I

    move-result v1

    .line 1174
    invoke-direct {p0, v5, v6, v1}, Lcom/androidquery/util/e;->a(III)I

    move-result v7

    .line 1176
    if-lez v5, :cond_5

    if-lez v6, :cond_5

    if-lez v1, :cond_5

    if-gtz v7, :cond_9

    :cond_5
    const/4 v1, 0x0

    .line 1109
    :goto_1
    if-eqz v1, :cond_8

    .line 1110
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 1111
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    .line 1112
    if-gtz v2, :cond_6

    if-lez v3, :cond_7

    .line 1113
    :cond_6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    sub-int v3, v5, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sub-int v2, v5, v2

    invoke-virtual {p1, v12, v12, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1115
    :cond_7
    invoke-virtual {p0}, Lcom/androidquery/util/e;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1118
    :cond_8
    iget-boolean v1, p0, Lcom/androidquery/util/e;->c:Z

    if-nez v1, :cond_2

    .line 1119
    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v1}, Lcom/androidquery/util/e;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 1178
    :cond_9
    iget-object v3, p0, Lcom/androidquery/util/e;->d:Landroid/graphics/Matrix;

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/androidquery/util/e;->e:I

    if-eq v5, v3, :cond_b

    .line 1183
    :cond_a
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/androidquery/util/e;->d:Landroid/graphics/Matrix;

    .line 1185
    mul-int v3, v5, v7

    mul-int v8, v1, v6

    if-lt v3, v8, :cond_c

    .line 1187
    int-to-float v3, v7

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 1188
    int-to-float v1, v1

    int-to-float v6, v5

    mul-float/2addr v6, v3

    sub-float/2addr v1, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v1, v6

    move v13, v2

    move v2, v1

    move v1, v13

    .line 1197
    :goto_2
    iget-object v6, p0, Lcom/androidquery/util/e;->d:Landroid/graphics/Matrix;

    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1198
    iget-object v3, p0, Lcom/androidquery/util/e;->d:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1200
    iput v5, p0, Lcom/androidquery/util/e;->e:I

    .line 1203
    :cond_b
    iget-object v1, p0, Lcom/androidquery/util/e;->d:Landroid/graphics/Matrix;

    goto :goto_1

    .line 1191
    :cond_c
    int-to-float v1, v1

    int-to-float v3, v5

    div-float v3, v1, v3

    .line 1209
    iget v1, p0, Lcom/androidquery/util/e;->f:F

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_d

    .line 1210
    iget v1, p0, Lcom/androidquery/util/e;->f:F

    sub-float v1, v9, v1

    div-float/2addr v1, v11

    .line 1194
    :goto_3
    int-to-float v7, v7

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float v6, v7, v6

    mul-float/2addr v1, v6

    goto :goto_2

    .line 1213
    :cond_d
    int-to-float v1, v6

    int-to-float v8, v5

    div-float/2addr v1, v8

    .line 1215
    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1216
    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1218
    const/high16 v8, 0x3e800000    # 0.25f

    sub-float v1, v10, v1

    div-float/2addr v1, v11

    add-float/2addr v1, v8

    goto :goto_3
.end method
