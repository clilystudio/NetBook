.class public final Lcom/ushaqi/zhuishushenqi/reader/bG;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/TocSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 239
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bG;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    .line 240
    const v0, 0x7f0300f7

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 241
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 237
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    .line 1255
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 1256
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/reader/bG;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1257
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {p0, v6, v1}, Lcom/ushaqi/zhuishushenqi/reader/bG;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1258
    const-string v3, "baidu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1259
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1260
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1261
    const v1, 0x7f0201f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1280
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/bG;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1281
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bG;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1282
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getLastChapter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bG;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1284
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bG;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1285
    invoke-virtual {p0, v7, v4}, Lcom/ushaqi/zhuishushenqi/reader/bG;->a(IZ)Landroid/view/View;

    :goto_1
    return-void

    .line 1262
    :cond_0
    const-string v3, "leidian"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1263
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1264
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1265
    const v1, 0x7f0201fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1266
    :cond_1
    const-string v3, "sogou"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1267
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1268
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1269
    const v1, 0x7f020200

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1270
    :cond_2
    const-string v3, "easou"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1271
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1272
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1273
    const v1, 0x7f0201fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1275
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1276
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1277
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1287
    :cond_4
    invoke-virtual {p0, v7, v6}, Lcom/ushaqi/zhuishushenqi/reader/bG;->a(IZ)Landroid/view/View;

    goto :goto_1
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c0340
        0x7f0c0341
        0x7f0c0342
        0x7f0c01c8
        0x7f0c0344
        0x7f0c0343
    .end array-data
.end method
