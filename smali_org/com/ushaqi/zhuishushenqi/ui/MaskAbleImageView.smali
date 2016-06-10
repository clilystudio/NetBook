.class public Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    const-string v0, "customer_night_theme"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;->a:I

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;->a:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 52
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;->a(Landroid/graphics/Canvas;)V

    .line 48
    :cond_0
    return-void
.end method
