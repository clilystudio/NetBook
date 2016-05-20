.class final Lcom/ushaqi/zhuishushenqi/ui/bq;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 251
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bq;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    .line 252
    const v0, 0x7f0300f9

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/app/Activity;I)V

    .line 253
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 249
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/AppItem;

    .line 1267
    const/4 v0, 0x0

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bq;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getFullIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/bq;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1269
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bq;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1270
    const/4 v0, 0x3

    const-class v1, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bq;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;

    .line 1271
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setAppItem(Lcom/ushaqi/zhuishushenqi/model/AppItem;)V

    .line 1272
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->a(I)V

    .line 1273
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bq;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    :cond_0
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getActivateRequire()Ljava/lang/String;

    move-result-object v0

    .line 1277
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/bq;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 249
    return-void
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c00a1
        0x7f0c0040
        0x7f0c013c
        0x7f0c0349
        0x7f0c0348
    .end array-data
.end method
