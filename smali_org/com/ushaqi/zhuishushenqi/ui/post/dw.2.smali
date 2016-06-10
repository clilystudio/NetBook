.class final Lcom/ushaqi/zhuishushenqi/ui/post/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/User;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 0

    .prologue
    .line 832
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dw;->b:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dw;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 835
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dw;->b:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 836
    const-string v1, "USER_ID"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dw;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const-string v1, "USER_NAME"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dw;->a:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dw;->b:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 839
    return-void
.end method
