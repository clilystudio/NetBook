.class final Lcom/ushaqi/zhuishushenqi/ui/post/dW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dW;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dW;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dW;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
