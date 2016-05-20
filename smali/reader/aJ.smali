.class final Lcom/ushaqi/zhuishushenqi/reader/aJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/dc;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 494
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 495
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    .line 497
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setTotalHeight(I)V

    .line 498
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f()V

    .line 506
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 508
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aJ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
