.class final Lcom/ushaqi/zhuishushenqi/ui/k;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->q(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    .line 350
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;I)I

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)Z

    .line 354
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    const-string v1, "\u66f4\u65b0\u5217\u8868\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public final synthetic onSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;

    .line 1324
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;)V

    .line 1334
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 1335
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)Z

    .line 1336
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v1

    if-gt v0, v1, :cond_5

    .line 1337
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    .line 1338
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 1342
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->o(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)Z

    .line 321
    :cond_3
    return-void

    .line 1327
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1328
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 1329
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)V

    .line 1331
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    goto :goto_0

    .line 1339
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->o(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1340
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/k;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    goto :goto_1
.end method
