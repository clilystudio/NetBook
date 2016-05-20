.class final Lcom/ushaqi/zhuishushenqi/ui/post/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/Dialog;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/q;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/q;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/q;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/q;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 112
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/q;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "post_game_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/q;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 114
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/t;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/q;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/q;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    const v5, 0x7f05013e

    invoke-direct {v2, v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/ui/post/t;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;Landroid/app/Activity;I)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/q;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/t;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method
