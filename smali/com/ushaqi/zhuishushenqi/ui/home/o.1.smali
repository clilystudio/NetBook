.class final Lcom/ushaqi/zhuishushenqi/ui/home/o;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/o;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1196
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return-void
.end method

.method public final synthetic onSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 1166
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/album/BatchAlbumList;

    .line 2169
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/o;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    .line 2171
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/o;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2172
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/o;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f()Ljava/util/List;

    move-result-object v0

    .line 2173
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/BatchAlbumList;->getAlbums()Ljava/util/List;

    move-result-object v4

    .line 2174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 2175
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    .line 2176
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .line 2177
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getId()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getBookId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getUpdatedAt()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getLastUpdate()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    .line 2179
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setUpdateReaded(Z)V

    .line 2180
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getLastUptrack()Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->getUpdatedAt()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setLastUpdate(J)V

    .line 2182
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getLastUpdate()J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->updateLastTime(Ljava/lang/String;J)V

    .line 2183
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->updateRecordRead(Ljava/lang/String;Z)V

    .line 2184
    const/4 v3, 0x1

    move v1, v3

    :goto_2
    move v3, v1

    .line 2186
    goto :goto_1

    :cond_0
    move v0, v3

    :goto_3
    move v1, v0

    .line 2188
    goto/16 :goto_0

    .line 2189
    :cond_1
    if-eqz v1, :cond_2

    .line 2190
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/o;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    .line 1166
    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3
.end method
