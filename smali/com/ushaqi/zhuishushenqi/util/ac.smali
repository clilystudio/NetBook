.class final Lcom/ushaqi/zhuishushenqi/util/ac;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/Z;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/util/Z;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 319
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/ac;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    .line 320
    const v0, 0x7f05019c

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 321
    return-void
.end method


# virtual methods
.method public final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 317
    check-cast p1, [Ljava/lang/String;

    .line 2325
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ac;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/Z;->a(Lcom/ushaqi/zhuishushenqi/util/Z;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;

    move-result-object v0

    .line 2327
    if-eqz v0, :cond_3

    .line 2328
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->isNeedSync()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2330
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2331
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/ac;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/Z;->a(Lcom/ushaqi/zhuishushenqi/util/Z;Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;)V

    .line 2332
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/ac;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/Z;->b(Lcom/ushaqi/zhuishushenqi/util/Z;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u540c\u6b65\u5b8c\u6210"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 317
    :goto_0
    return-object v0

    .line 2336
    :cond_0
    const-string v1, "TOKEN_INVALID"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2337
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/ac;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/Z;->b(Lcom/ushaqi/zhuishushenqi/util/Z;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f05019d

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 2339
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/ac;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/Z;->b(Lcom/ushaqi/zhuishushenqi/util/Z;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u540c\u6b65\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2343
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/ac;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/Z;->b(Lcom/ushaqi/zhuishushenqi/util/Z;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u540c\u6b65\u5b8c\u6210"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2348
    :cond_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/ac;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/Z;->b(Lcom/ushaqi/zhuishushenqi/util/Z;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u540c\u6b65\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 317
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;

    .line 1355
    if-eqz p1, :cond_0

    .line 1356
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/A;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->getTotalBookCounts()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1358
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/A;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method
