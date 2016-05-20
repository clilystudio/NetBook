.class public final Lcom/ushaqi/zhuishushenqi/adapter/b;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/album/Album;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f0300e0

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 21
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/b;->a:Landroid/content/res/Resources;

    .line 22
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 15
    check-cast p2, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .line 1037
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v10, v0}, Lcom/ushaqi/zhuishushenqi/adapter/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p2}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020106

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1038
    invoke-virtual {p2}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/b;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1039
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getAlbumIntro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/b;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1040
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/b;->a:Landroid/content/res/Resources;

    const v4, 0x7f050113

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getPlayCount()J

    move-result-wide v6

    .line 1046
    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 1047
    if-nez v0, :cond_0

    move v0, v1

    .line 1040
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ushaqi/zhuishushenqi/adapter/b;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1041
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/b;->a:Landroid/content/res/Resources;

    const v3, 0x7f0501a2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getIncludeTrackCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v10

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/b;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 15
    return-void
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c02f0
        0x7f0c02e5
        0x7f0c02f1
        0x7f0c02f3
        0x7f0c02f5
        0x7f0c02f4
    .end array-data
.end method
