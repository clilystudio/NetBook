.class public Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;
.super Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
.source "SourceFile"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lm/framework/utils/Utils;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->b:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->CornerSmartImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    const/high16 v2, 0x40000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->b:I

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method


# virtual methods
.method protected a()Lcom/nostra13/universalimageloader/core/b/a;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/nostra13/universalimageloader/core/b/b;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->b:I

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/b/b;-><init>(I)V

    return-object v0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 51
    return-void
.end method
