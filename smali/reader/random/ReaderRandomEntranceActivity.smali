.class public Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomEntranceActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mReadRandomBook:Lcom/ushaqi/zhuishushenqi/widget/SAutoBgButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0124
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 37
    :goto_0
    return-void

    .line 34
    :pswitch_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/random/b;

    const v1, 0x7f05006a

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/random/b;-><init>(Landroid/app/Activity;IZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/random/b;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x7f0c0124
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomEntranceActivity;->setContentView(I)V

    .line 25
    const-string v0, "\u968f\u673a\u770b\u4e66"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomEntranceActivity;->b(Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomEntranceActivity;->mReadRandomBook:Lcom/ushaqi/zhuishushenqi/widget/SAutoBgButton;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/SAutoBgButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method
