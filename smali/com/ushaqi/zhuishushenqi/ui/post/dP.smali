.class final Lcom/ushaqi/zhuishushenqi/ui/post/dP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;Z)Z

    .line 276
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V

    .line 277
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const-string v1, "\u5173\u95ed\u9009\u9879"

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V

    .line 280
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;Z)Z

    .line 281
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V

    .line 282
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const-string v1, "\u5c55\u5f00\u9009\u9879"

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
