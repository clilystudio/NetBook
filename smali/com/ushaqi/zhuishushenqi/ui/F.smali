.class final Lcom/ushaqi/zhuishushenqi/ui/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/F;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferProgress(I)V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public final onBufferingStart()V
    .locals 0

    .prologue
    .line 547
    return-void
.end method

.method public final onBufferingStop()V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method public final onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)Z
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public final onPlayPause()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public final onPlayProgress(II)V
    .locals 0

    .prologue
    .line 559
    return-void
.end method

.method public final onPlayStart()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public final onPlayStop()V
    .locals 0

    .prologue
    .line 518
    return-void
.end method

.method public final onSoundPlayComplete()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public final onSoundPrepared()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public final onSoundSwitch(III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 533
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/F;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/F;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/F;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->setPlayButtonDefault(I)V

    .line 535
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/F;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/F;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;I)I

    .line 536
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/F;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/F;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(IZ)V

    .line 538
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/F;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V

    .line 543
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/F;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z

    goto :goto_0
.end method
