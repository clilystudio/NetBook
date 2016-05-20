.class final Lcom/ushaqi/zhuishushenqi/ui/post/bO;
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
    .line 207
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bO;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bO;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bO;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method
