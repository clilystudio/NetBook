.class final Lcom/ushaqi/zhuishushenqi/ui/post/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/Dialog;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Y;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 486
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Y;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 487
    const-string v0, ","

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 488
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/Z;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    const v4, 0x7f05013e

    invoke-direct {v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/Z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/app/Activity;I)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    .line 489
    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 490
    return-void
.end method
