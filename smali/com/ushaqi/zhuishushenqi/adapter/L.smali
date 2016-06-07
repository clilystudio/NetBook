.class final Lcom/ushaqi/zhuishushenqi/adapter/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/adapter/R;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/adapter/G;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->b:Lcom/ushaqi/zhuishushenqi/adapter/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 406
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    if-nez v2, :cond_0

    .line 407
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 426
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-static {v2, v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Account;Lcom/ushaqi/zhuishushenqi/model/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 412
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 414
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->b:Lcom/ushaqi/zhuishushenqi/adapter/R;

    invoke-static {v0, v3, v4}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V

    .line 415
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v3, "\t\t\u8f6c\u53d1\u6210\u529f\t\t"

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->save2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/U;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->b:Lcom/ushaqi/zhuishushenqi/adapter/R;

    invoke-direct {v0, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/adapter/U;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/U;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050168

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/model/Account;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->a:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v1

    if-nez v1, :cond_2

    .line 421
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 423
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/L;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto/16 :goto_1
.end method
