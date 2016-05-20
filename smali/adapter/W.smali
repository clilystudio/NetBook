.class public final Lcom/ushaqi/zhuishushenqi/adapter/W;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f030117

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v2, 0x7

    const/4 v8, 0x5

    const/4 v7, 0x6

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 16
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;

    .line 1038
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_2

    .line 1039
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1040
    invoke-virtual {p0, v2, v6}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(IZ)Landroid/view/View;

    .line 1044
    :goto_0
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->getBook()Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;

    move-result-object v1

    .line 1045
    if-eqz v1, :cond_1

    .line 1046
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1047
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->getLatelyFollower()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1048
    const/4 v0, 0x3

    const-class v2, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->getFullCover()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020106

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1049
    const/4 v0, 0x4

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1050
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->getWordCount()J

    move-result-wide v0

    .line 1051
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 1052
    const-string v2, " \u5b57"

    .line 1053
    const-wide/16 v4, 0x2710

    cmp-long v3, v0, v4

    if-lez v3, :cond_3

    .line 1054
    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    .line 1055
    const-string v2, " \u4e07\u5b57"

    .line 1060
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1061
    invoke-virtual {p0, v7, v2}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1062
    invoke-virtual {p0, v8, v6}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(IZ)Landroid/view/View;

    .line 1063
    invoke-virtual {p0, v7, v6}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(IZ)Landroid/view/View;

    .line 1064
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v6}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(IZ)Landroid/view/View;

    .line 1065
    :cond_1
    :goto_2
    return-void

    .line 1042
    :cond_2
    invoke-virtual {p0, v2, v4}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(IZ)Landroid/view/View;

    goto :goto_0

    .line 1056
    :cond_3
    const-wide/16 v4, 0x64

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 1057
    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    .line 1058
    const-string v2, " \u767e\u5b57"

    goto :goto_1

    .line 1066
    :cond_4
    invoke-virtual {p0, v8, v4}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(IZ)Landroid/view/View;

    .line 1067
    invoke-virtual {p0, v7, v4}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(IZ)Landroid/view/View;

    .line 1068
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v4}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a(IZ)Landroid/view/View;

    goto :goto_2
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f0c0048
        0x7f0c0177
        0x7f0c0269
        0x7f0c0023
        0x7f0c01c5
        0x7f0c039e
        0x7f0c039f
        0x7f0c03a0
        0x7f0c039d
    .end array-data
.end method
