.class final Lcom/ushaqi/zhuishushenqi/ui/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/an;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/an;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/an;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/ushaqi/zhuishushenqi/ui/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/an;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/ushaqi/zhuishushenqi/ui/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/aq;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/an;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/ushaqi/zhuishushenqi/ui/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/aq;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/an;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/ushaqi/zhuishushenqi/ui/aq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aq;->cancel(Z)Z

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/an;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/aq;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/an;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/an;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/aq;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;Z)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;Lcom/ushaqi/zhuishushenqi/ui/aq;)Lcom/ushaqi/zhuishushenqi/ui/aq;

    .line 145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ao;->a:Lcom/ushaqi/zhuishushenqi/ui/an;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/an;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/ushaqi/zhuishushenqi/ui/aq;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aq;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    return-void
.end method
