.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ResultStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V
    .locals 1

    .prologue
    .line 357
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    .line 358
    const v0, 0x7f05006a

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 359
    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_2

    .line 366
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 370
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a()Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/high16 v3, 0x4000000

    .line 355
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    .line 2384
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->isOk()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2385
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    const-string v1, "\u53d1\u5e03\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 2388
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2389
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    const-string v1, "\u53d1\u5e03\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2390
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/user/UserUGCActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2391
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2407
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2392
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2393
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    const-string v1, "\u4fee\u6539\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2394
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v5

    .line 2395
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->b()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2396
    const-string v0, "book_id"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2397
    const-string v0, "my_list"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2398
    const-string v0, "modify_update"

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2399
    const-string v0, "my_author"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2400
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2401
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v7

    new-instance v0, Lcom/ushaqi/zhuishushenqi/event/J;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getDesc()Ljava/lang/String;

    move-result-object v3

    .line 2402
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getCover()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/event/J;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2401
    invoke-virtual {v7, v0}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    move-object v0, v6

    .line 2403
    goto/16 :goto_1

    .line 2404
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    const-string v1, "\u53d1\u5e03\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2405
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1
.end method
