.class final Lcom/ushaqi/zhuishushenqi/ui/post/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/bj;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/bj;I)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bk;->b:Lcom/ushaqi/zhuishushenqi/ui/post/bj;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bk;->b:Lcom/ushaqi/zhuishushenqi/ui/post/bj;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bk;->a:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 93
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bk;->b:Lcom/ushaqi/zhuishushenqi/ui/post/bj;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/post/bj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 94
    const-string v2, "USER_ID"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Follower;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v2, "USER_NAME"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Follower;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bk;->b:Lcom/ushaqi/zhuishushenqi/ui/post/bj;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
