.class abstract Lcom/ushaqi/zhuishushenqi/reader/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/Reader;


# direct methods
.method protected constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;Z)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-boolean p2, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->a:Z

    .line 528
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Toc;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Toc;->getChapters()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)V

    .line 570
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/ab;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/ab;-><init>(Lcom/ushaqi/zhuishushenqi/reader/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 532
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    sget-object v3, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->TOC:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    invoke-static {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;ILcom/ushaqi/zhuishushenqi/reader/Reader$Type;)V

    .line 535
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->f(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/txt/U;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/Toc;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move v0, v1

    .line 552
    :goto_0
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 553
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/aa;->c()V

    .line 554
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->f(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 555
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->b(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/Toc;)V

    .line 557
    :cond_0
    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/ag;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-direct {v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/ag;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/ag;)Lcom/ushaqi/zhuishushenqi/reader/ag;

    .line 559
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/reader/ag;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ag;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 564
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->TOC:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    invoke-static {v0, v2, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;ILcom/ushaqi/zhuishushenqi/reader/Reader$Type;)V

    .line 565
    return-void

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->h(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->i(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v6}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->j(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/f;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/f;)Lcom/ushaqi/zhuishushenqi/reader/f;

    .line 541
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/Toc;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    .line 543
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->a:Z

    if-eqz v0, :cond_7

    :cond_3
    move v0, v2

    .line 546
    :goto_2
    if-eqz v0, :cond_4

    .line 547
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/Toc;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 549
    goto/16 :goto_0

    .line 1579
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/Toc;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    .line 1580
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1581
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/aa;->c()V

    goto :goto_1

    .line 1583
    :cond_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aa;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/ac;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/ac;-><init>(Lcom/ushaqi/zhuishushenqi/reader/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method
