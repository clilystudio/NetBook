.class final Lcom/ushaqi/zhuishushenqi/ui/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/ushaqi/zhuishushenqi/ui/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/ushaqi/zhuishushenqi/ui/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/aq;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/aq;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/aq;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;Lcom/ushaqi/zhuishushenqi/ui/aq;)Lcom/ushaqi/zhuishushenqi/ui/aq;

    .line 235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/ushaqi/zhuishushenqi/ui/aq;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aq;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    :cond_1
    return-void
.end method
