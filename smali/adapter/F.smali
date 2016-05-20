.class public final Lcom/ushaqi/zhuishushenqi/adapter/F;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/TopicPost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f0300fa

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/TopicPost;

    .line 1040
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1041
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1042
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1045
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getBlock()Ljava/lang/String;

    move-result-object v1

    .line 1046
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v3, v0}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    .line 1049
    const-string v2, "help"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1050
    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageResource(I)V

    .line 1058
    :goto_0
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1059
    const-string v1, "vote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1061
    invoke-virtual {p0, v6, v3}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(IZ)Landroid/view/View;

    .line 1062
    invoke-virtual {p0, v7, v4}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(IZ)Landroid/view/View;

    .line 1063
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getVoteCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1072
    :goto_1
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getState()Ljava/lang/String;

    move-result-object v0

    .line 1073
    const-string v1, "focus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1074
    invoke-virtual {p0, v5, v3}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(IZ)Landroid/view/View;

    .line 1075
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1078
    :goto_2
    return-void

    .line 1051
    :cond_0
    const-string v2, "ramble"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageResource(I)V

    goto :goto_0

    .line 1054
    :cond_1
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getBook()Lcom/ushaqi/zhuishushenqi/model/PostBook;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/PostBook;->getFullCover()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    goto :goto_0

    .line 1066
    :cond_2
    invoke-virtual {p0, v6, v4}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(IZ)Landroid/view/View;

    .line 1067
    invoke-virtual {p0, v7, v3}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(IZ)Landroid/view/View;

    .line 1068
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getCommentCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    goto :goto_1

    .line 1076
    :cond_3
    const-string v1, "hot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1077
    invoke-virtual {p0, v5, v3}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(IZ)Landroid/view/View;

    .line 1078
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 1080
    :cond_4
    invoke-virtual {p0, v5, v4}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(IZ)Landroid/view/View;

    goto :goto_2
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c034a
        0x7f0c034b
        0x7f0c0047
        0x7f0c0048
        0x7f0c034c
        0x7f0c034d
        0x7f0c034e
    .end array-data
.end method
