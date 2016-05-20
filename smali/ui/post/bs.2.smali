.class final Lcom/ushaqi/zhuishushenqi/ui/post/bs;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/VoteResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 386
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    .line 387
    const v0, 0x7f0501d8

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 388
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/VoteResult;
    .locals 4

    .prologue
    .line 393
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/VoteResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 384
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/VoteResult;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/VoteResult;

    .line 1403
    if-eqz p1, :cond_4

    .line 1405
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;IZ)V

    .line 1408
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    const-string v1, "\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->get_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->create(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1430
    :goto_0
    return-void

    .line 1414
    :cond_0
    const-string v0, "ALREADY_VOTED"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1415
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->getSelected()I

    move-result v0

    .line 1417
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;IZ)V

    .line 1418
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->create(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1419
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    const-string v1, "\u60a8\u5df2\u7ecf\u6295\u8fc7\u5566"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1422
    :cond_1
    const-string v0, "FORBIDDEN"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1423
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 1424
    if-eqz v0, :cond_2

    .line 1425
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1427
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    const v1, 0x7f050114

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1430
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    const-string v1, "\u6295\u7968\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1436
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    const-string v1, "\u6295\u7968\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
