.class final Lcom/ushaqi/zhuishushenqi/ui/home/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0

    .prologue
    .line 1922
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferProgress(I)V
    .locals 0

    .prologue
    .line 1985
    return-void
.end method

.method public final onBufferingStart()V
    .locals 2

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Z)V

    .line 1975
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u7f13\u51b2\u4e2d!"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1976
    return-void
.end method

.method public final onBufferingStop()V
    .locals 2

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Z)V

    .line 1981
    return-void
.end method

.method public final onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)Z
    .locals 1

    .prologue
    .line 1995
    const/4 v0, 0x0

    return v0
.end method

.method public final onPlayPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1932
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Z)V

    .line 1933
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->o(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    .line 1934
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Z)V

    .line 1935
    return-void
.end method

.method public final onPlayProgress(II)V
    .locals 4

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->p(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/t;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/t;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/t;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/t;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/e;->b(Ljava/lang/String;)V

    .line 1991
    return-void
.end method

.method public final onPlayStart()V
    .locals 1

    .prologue
    .line 1925
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Z)V

    .line 1926
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->o(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    .line 1927
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->v(Landroid/content/Context;)V

    .line 1928
    return-void
.end method

.method public final onPlayStop()V
    .locals 2

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Z)V

    .line 1940
    return-void
.end method

.method public final onSoundPlayComplete()V
    .locals 0

    .prologue
    .line 1945
    return-void
.end method

.method public final onSoundPrepared()V
    .locals 0

    .prologue
    .line 1950
    return-void
.end method

.method public final onSoundSwitch(III)V
    .locals 2

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/util/as;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 1964
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/x;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V

    .line 1970
    return-void
.end method
