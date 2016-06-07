.class final Lcom/ushaqi/zhuishushenqi/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferProgress(I)V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public final onBufferingStart()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public final onBufferingStop()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 602
    return-void
.end method

.method public final onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)Z
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public final onPlayPause()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->t(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 554
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 555
    return-void
.end method

.method public final onPlayProgress(II)V
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Landroid/widget/TextView;

    move-result-object v1

    div-int/lit16 v2, p1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Landroid/widget/TextView;I)V

    .line 612
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->v(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Landroid/widget/TextView;

    move-result-object v1

    div-int/lit16 v2, p2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Landroid/widget/TextView;I)V

    .line 613
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)Z

    .line 614
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->w(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    mul-int/lit8 v1, p1, 0x64

    div-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 615
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)Z

    .line 617
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit16 v0, p2, -0x3e8

    if-lt p1, v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->x(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    .line 619
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->y(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 622
    return-void
.end method

.method public final onPlayStart()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->t(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 548
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 549
    return-void
.end method

.method public final onPlayStop()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->t(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 560
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 561
    return-void
.end method

.method public final onSoundPlayComplete()V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public final onSoundPrepared()V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public final onSoundSwitch(III)V
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 579
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->u(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)Z

    .line 585
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 586
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 587
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 588
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;I)V

    .line 591
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;JI)V

    .line 592
    return-void

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/m;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    goto :goto_0
.end method
