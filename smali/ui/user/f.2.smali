.class final Lcom/ushaqi/zhuishushenqi/ui/user/f;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 273
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/f;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    .line 274
    const v0, 0x7f050129

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 275
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 4

    .prologue
    .line 280
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Account;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/f;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 271
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 1289
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1290
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->h(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;

    .line 1294
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/f;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1297
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Lcom/ushaqi/zhuishushenqi/model/Account;)V

    .line 1298
    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/t;

    invoke-direct {v1, p1}, Lcom/ushaqi/zhuishushenqi/event/t;-><init>(Lcom/ushaqi/zhuishushenqi/model/Account;)V

    .line 1299
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/f;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "KEY_SOURCE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/event/t;->a(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;)V

    .line 1300
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1301
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/f;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    const-string v1, "\u767b\u5f55\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1320
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/f;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->finish()V

    .line 271
    return-void

    .line 1305
    :cond_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 1306
    const-string v1, "AUTHENTICATION_FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1307
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/f;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    const v1, 0x7f0500cb

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1308
    :cond_1
    const-string v1, "BANNED_USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1309
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/f;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8be5\u8d26\u6237\u88ab\u5c01\u7981"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1311
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/f;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1317
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/f;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
