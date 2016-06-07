.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;Landroid/view/LayoutInflater;I)V
    .locals 1

    .prologue
    .line 267
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    .line 268
    const v0, 0x7f030114

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 269
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 265
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1289
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getFullCover()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1290
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1291
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1292
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getLatelyFollower()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1293
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getWordCount()I

    move-result v0

    int-to-long v0, v0

    .line 1294
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1295
    const-string v2, " \u5b57"

    .line 1296
    const-wide/16 v4, 0x2710

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 1297
    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    .line 1298
    const-string v2, " \u4e07\u5b57"

    .line 1303
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1304
    invoke-virtual {p0, v9, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1305
    invoke-virtual {p0, v8, v6}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(IZ)Landroid/view/View;

    .line 1306
    invoke-virtual {p0, v9, v6}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(IZ)Landroid/view/View;

    .line 1307
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v6}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(IZ)Landroid/view/View;

    .line 1313
    :goto_1
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1314
    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1315
    invoke-virtual {p0, v10, v7}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(IZ)Landroid/view/View;

    .line 1316
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v6}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(IZ)Landroid/view/View;

    :goto_2
    return-void

    .line 1299
    :cond_1
    const-wide/16 v4, 0x64

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 1300
    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    .line 1301
    const-string v2, " \u767e\u5b57"

    goto :goto_0

    .line 1309
    :cond_2
    invoke-virtual {p0, v8, v7}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(IZ)Landroid/view/View;

    .line 1310
    invoke-virtual {p0, v9, v7}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(IZ)Landroid/view/View;

    .line 1311
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v7}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(IZ)Landroid/view/View;

    goto :goto_1

    .line 1318
    :cond_3
    invoke-virtual {p0, v10, v6}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(IZ)Landroid/view/View;

    .line 1319
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v7}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(IZ)Landroid/view/View;

    goto :goto_2
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 273
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f0c0023
        0x7f0c0048
        0x7f0c01c5
        0x7f0c038f
        0x7f0c0390
        0x7f0c0391
        0x7f0c0394
        0x7f0c0392
        0x7f0c0393
        0x7f0c0223
    .end array-data
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 325
    invoke-super {p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/util/W;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 326
    const v1, 0x7f0c0395

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 327
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/R;

    invoke-direct {v2, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/R;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v1, 0x7f0c0392

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 334
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/S;

    invoke-direct {v2, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/S;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const v1, 0x7f0c0396

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 341
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/T;

    invoke-direct {v2, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/T;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(ILandroid/view/View;Ljava/lang/Object;)V

    .line 348
    return-object v0
.end method
