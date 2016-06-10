.class public Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;
.super Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;
.source "SourceFile"


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100f4

    aput v1, v0, v2

    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;->b:I

    .line 30
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->CircularSmartImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void
.end method


# virtual methods
.method protected final synthetic a()Lcom/nostra13/universalimageloader/core/b/a;
    .locals 2

    .prologue
    .line 21
    .line 1036
    new-instance v0, Lcom/nostra13/universalimageloader/core/b/b;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;->b:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/b/b;-><init>(I)V

    .line 21
    return-object v0
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;->a:I

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 53
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;->b:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f02006e

    invoke-super {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 42
    return-void
.end method
