.class final Lcom/ushaqi/zhuishushenqi/ui/post/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/an;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/an;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/post/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/post/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/an;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/au;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/post/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/an;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/au;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/au;->cancel(Z)Z

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/post/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/an;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/av;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/post/an;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/an;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/av;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/av;)Lcom/ushaqi/zhuishushenqi/ui/post/av;

    .line 182
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/post/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/an;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/av;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/post/an;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/an;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/post/an;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/an;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/av;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method
