.class final Lcom/ushaqi/zhuishushenqi/ui/post/dT;
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
    .line 337
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V

    .line 342
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;Z)Z

    .line 344
    :cond_0
    return-void
.end method
