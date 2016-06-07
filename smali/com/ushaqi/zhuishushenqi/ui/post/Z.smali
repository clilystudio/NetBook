.class final Lcom/ushaqi/zhuishushenqi/ui/post/Z;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/PostPublish;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 319
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    .line 320
    const v0, 0x7f05013e

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 321
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    invoke-virtual/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 329
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    const/4 v4, 0x4

    aget-object v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    const/4 v4, 0x4

    aget-object v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 317
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    .line 1342
    if-eqz p1, :cond_8

    .line 1344
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->isOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1345
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    const-string v1, "\u53d1\u5e03\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1349
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1350
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1352
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V

    goto :goto_0

    .line 1355
    :cond_3
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1356
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->d()V

    goto :goto_0

    .line 1357
    :cond_4
    const-string v0, "LV_NOT_ENOUGH"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1358
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    const-string v1, "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u7b49\u7ea7\u4e0d\u591f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1359
    :cond_5
    const-string v0, "SHUAPOST"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1360
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    const-string v1, "\u60a8\u53d1\u8d77\u6295\u7968\u7684\u9891\u7387\u592a\u9ad8\u5566,\u8bf7\u6b47\u4e00\u6b47\uff5e"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1363
    :cond_6
    const-string v0, "FORBIDDEN"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 1365
    if-eqz v0, :cond_7

    .line 1366
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1368
    :cond_7
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    const v1, 0x7f050114

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1375
    :cond_8
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/Z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    const-string v1, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
