.class public Lcom/ushaqi/zhuishushenqi/widget/GameImageView;
.super Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
.source "SourceFile"


# instance fields
.field private final b:Landroid/graphics/Bitmap;

.field private final c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private final e:Landroid/graphics/Bitmap;

.field private final f:Landroid/graphics/Bitmap;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020128

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->e:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020129

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->f:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020126

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->d:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020127

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->b:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020125

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->c:Landroid/graphics/Bitmap;

    .line 37
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->isFirsthand()Z

    move-result v0

    .line 1062
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->g:Z

    .line 71
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->isRecommend()Z

    move-result v0

    .line 1066
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->h:Z

    .line 72
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->isGiftFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->i:Z

    .line 73
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->isActivityFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->j:Z

    .line 74
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->isHotFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->k:Z

    .line 75
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->invalidate()V

    .line 76
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->h:Z

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->e:Landroid/graphics/Bitmap;

    .line 56
    :goto_0
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 59
    :cond_0
    return-void

    .line 46
    :cond_1
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->g:Z

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->f:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 48
    :cond_2
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->i:Z

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->d:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 50
    :cond_3
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->j:Z

    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 52
    :cond_4
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->k:Z

    if-eqz v0, :cond_5

    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
