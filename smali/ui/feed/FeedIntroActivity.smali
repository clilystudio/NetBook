.class public Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f05010d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;->b(I)V

    .line 1037
    const v0, 0x7f0c0106

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1038
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/feed/d;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/d;-><init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onPause()V

    .line 33
    const-string v0, "feed_intro"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 34
    return-void
.end method
