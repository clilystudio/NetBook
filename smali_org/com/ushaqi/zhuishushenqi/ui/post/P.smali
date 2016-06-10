.class final Lcom/ushaqi/zhuishushenqi/ui/post/P;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    .line 251
    const v0, 0x7f05013e

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 252
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 6

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 271
    :pswitch_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 260
    :pswitch_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    const/4 v4, 0x2

    aget-object v4, p1, v4

    const/4 v5, 0x3

    aget-object v5, p1, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    goto :goto_0

    .line 263
    :pswitch_2
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    goto :goto_0

    .line 266
    :pswitch_3
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_4
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 248
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    .line 1282
    if-eqz p1, :cond_9

    .line 1284
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->isOk()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1285
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    const-string v1, "\u53d1\u5e03\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1296
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->startActivity(Landroid/content/Intent;)V

    .line 1314
    :goto_1
    return-void

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 1291
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1292
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1294
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1300
    :cond_4
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1301
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->d()V

    goto :goto_1

    .line 1302
    :cond_5
    const-string v0, "LV_NOT_ENOUGH"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1303
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    const-string v1, "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u7b49\u7ea7\u4e0d\u591f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1306
    :cond_6
    const-string v0, "FORBIDDEN"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1307
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 1308
    if-eqz v0, :cond_7

    .line 1309
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1311
    :cond_7
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    const v1, 0x7f050114

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1314
    :cond_8
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    const-string v1, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1320
    :cond_9
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/P;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    const-string v1, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
