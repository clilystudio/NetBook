.class final Lcom/ushaqi/zhuishushenqi/ui/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/album/BatchAlbumList;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/C;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/C;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;I)V

    .line 221
    return-void
.end method

.method public final synthetic onSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    .locals 4

    .prologue
    .line 205
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/album/BatchAlbumList;

    .line 1208
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/BatchAlbumList;->getAlbums()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1209
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/C;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/BatchAlbumList;->getAlbums()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;-><init>(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;)Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    .line 1210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/C;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/C;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getTotalCount()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;I)I

    .line 1211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/C;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/C;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->b(Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/C;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V

    :goto_0
    return-void

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/C;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;I)V

    goto :goto_0
.end method
