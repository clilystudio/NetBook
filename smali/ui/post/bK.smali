.class final Lcom/ushaqi/zhuishushenqi/ui/post/bK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bK;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bK;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bK;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method
