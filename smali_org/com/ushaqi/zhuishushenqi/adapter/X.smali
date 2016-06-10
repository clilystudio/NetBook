.class public final Lcom/ushaqi/zhuishushenqi/adapter/X;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f030115

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 19
    const-string v0, "\u5171%1$d\u672c\u4e66  |  %2$d\u4eba\u6536\u85cf"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/X;->a:Ljava/lang/String;

    .line 20
    const-string v0, "\u5171%1$d\u672c\u4e66"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/X;->b:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 18
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    .line 1041
    if-eqz p2, :cond_0

    .line 1042
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getFullCover()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1043
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1044
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1045
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->isDraft()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/X;->b:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getBookCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1047
    invoke-virtual {p0, v6, v3}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(IZ)Landroid/view/View;

    .line 1048
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1049
    invoke-virtual {p0, v7, v4}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(IZ)Landroid/view/View;

    .line 1050
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getBookCount()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 1051
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v4}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(IZ)Landroid/view/View;

    .line 1052
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(IZ)Landroid/view/View;

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(IZ)Landroid/view/View;

    .line 1055
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v4}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(IZ)Landroid/view/View;

    goto :goto_0

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/X;->a:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getBookCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getCollectorCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1059
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1060
    invoke-virtual {p0, v6, v4}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(IZ)Landroid/view/View;

    .line 1061
    invoke-virtual {p0, v7, v3}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(IZ)Landroid/view/View;

    .line 1062
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(IZ)Landroid/view/View;

    .line 1063
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(IZ)Landroid/view/View;

    goto :goto_0
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f0c02e4
        0x7f0c0048
        0x7f0c0177
        0x7f0c01c5
        0x7f0c0269
        0x7f0c0397
        0x7f0c0399
        0x7f0c039a
    .end array-data
.end method
