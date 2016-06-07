.class final Lcom/ushaqi/zhuishushenqi/adapter/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/adapter/N;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/N;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/O;->a:Lcom/ushaqi/zhuishushenqi/adapter/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 511
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/S;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/O;->a:Lcom/ushaqi/zhuishushenqi/adapter/N;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/adapter/N;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/S;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/O;->a:Lcom/ushaqi/zhuishushenqi/adapter/N;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/adapter/N;->b:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/S;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 512
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/O;->a:Lcom/ushaqi/zhuishushenqi/adapter/N;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/adapter/N;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/O;->a:Lcom/ushaqi/zhuishushenqi/adapter/N;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/adapter/N;->a:Lcom/ushaqi/zhuishushenqi/adapter/R;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/adapter/R;->q:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;Landroid/view/View;)Landroid/view/View;

    .line 513
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/O;->a:Lcom/ushaqi/zhuishushenqi/adapter/N;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/adapter/N;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/O;->a:Lcom/ushaqi/zhuishushenqi/adapter/N;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/adapter/N;->b:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->d(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)Lcom/ushaqi/zhuishushenqi/model/Tweet;

    .line 514
    return-void
.end method
