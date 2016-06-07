.class final Lcom/ushaqi/zhuishushenqi/ui/post/dU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dU;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 388
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dU;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dU;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    return-void
.end method
