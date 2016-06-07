.class public Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
.super Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected a()Lcom/nostra13/universalimageloader/core/b/a;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public setApiImageUrl(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;ILcom/nostra13/universalimageloader/core/d/a;)V

    .line 34
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;ILcom/nostra13/universalimageloader/core/d/a;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 37
    new-instance v0, Lcom/nostra13/universalimageloader/core/e;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/e;->a(Z)Lcom/nostra13/universalimageloader/core/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/e;->b(Z)Lcom/nostra13/universalimageloader/core/e;

    move-result-object v0

    .line 38
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/e;->a(I)Lcom/nostra13/universalimageloader/core/e;

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->a()Lcom/nostra13/universalimageloader/core/b/a;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/e;->a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/e;

    .line 45
    :cond_1
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/e;->a()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    .line 47
    const-string v1, "Official"

    const-string v2, "macServer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string v1, "static"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/f;->a()Lcom/nostra13/universalimageloader/core/f;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0, p3}, Lcom/nostra13/universalimageloader/core/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/d;Lcom/nostra13/universalimageloader/core/d/a;)V

    goto :goto_0
.end method
