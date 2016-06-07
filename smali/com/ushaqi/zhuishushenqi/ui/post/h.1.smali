.class final Lcom/ushaqi/zhuishushenqi/ui/post/h;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/ResultStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 336
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/h;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    .line 337
    const v0, 0x7f05013e

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 338
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 343
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/h;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 334
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    .line 1353
    if-eqz p1, :cond_4

    .line 1355
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/h;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const-string v1, "\u53d1\u5e03\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/h;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->o()V

    .line 1358
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/h;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)V

    .line 1374
    :goto_0
    return-void

    .line 1362
    :cond_0
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/h;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->d()V

    goto :goto_0

    .line 1366
    :cond_1
    const-string v0, "FORBIDDEN"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1367
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 1368
    if-eqz v0, :cond_2

    .line 1369
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/h;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1371
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/h;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const v1, 0x7f050114

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1374
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/h;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const-string v1, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1380
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/h;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const-string v1, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
