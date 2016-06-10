.class final Lcom/ushaqi/zhuishushenqi/ui/D;
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
        "Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;I)V

    .line 266
    return-void
.end method

.method public final synthetic onSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 229
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;

    .line 1232
    const-string v0, "AudiobookInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "success total count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->getTotalCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " smallUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1233
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1232
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;I)V

    .line 1236
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V

    .line 1238
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    .line 1239
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->setShowData(Ljava/util/List;ZI)V

    .line 1243
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z

    .line 1246
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1247
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)V

    .line 1248
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(IZ)V

    .line 1252
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    .line 1258
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V

    .line 229
    :cond_1
    return-void

    .line 1250
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/D;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(IZ)V

    goto :goto_0
.end method
