.class final Lcom/ushaqi/zhuishushenqi/ui/post/g;
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
    .line 262
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/g;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    .line 263
    const v0, 0x7f05013e

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 264
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 5

    .prologue
    .line 269
    :try_start_0
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

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/g;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 260
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    .line 1278
    const/4 v0, 0x1

    .line 1280
    if-eqz p1, :cond_4

    .line 1282
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/g;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const-string v2, "\u56de\u590d\u6210\u529f"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1284
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/g;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->o()V

    .line 1310
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/g;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a(Z)V

    .line 260
    return-void

    .line 1288
    :cond_0
    const-string v1, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1289
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/g;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->d()V

    goto :goto_0

    .line 1292
    :cond_1
    const-string v1, "FORBIDDEN"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1293
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->getMsg()Ljava/lang/String;

    move-result-object v1

    .line 1294
    if-eqz v1, :cond_2

    .line 1295
    const/4 v0, 0x0

    .line 1296
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/g;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-static {v2, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1298
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/g;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const v2, 0x7f050114

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1301
    :cond_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/g;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const-string v2, "\u56de\u590d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1307
    :cond_4
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/g;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const-string v2, "\u56de\u590d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
