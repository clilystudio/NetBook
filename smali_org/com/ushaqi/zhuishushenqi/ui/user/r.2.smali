.class final Lcom/ushaqi/zhuishushenqi/ui/user/r;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/r;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;B)V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/r;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfo;
    .locals 2

    .prologue
    .line 390
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->K(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 394
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 385
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/r;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 385
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UserInfo;

    .line 1399
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1401
    if-eqz p1, :cond_3

    .line 1403
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->isOk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1405
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "savedObject_userinfo"

    invoke-virtual {v0, p1, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/io/Serializable;Ljava/lang/String;)Z

    .line 1406
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getNicknameUpdated()Ljava/util/Date;

    move-result-object v0

    .line 1407
    if-nez v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/r;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const-wide/16 v2, -0x2

    invoke-static {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;J)J

    .line 1412
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/r;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Z)Z

    .line 1413
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/r;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->isGenderChanged()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Z)Z

    .line 1416
    :cond_0
    :goto_1
    return-void

    .line 1410
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/r;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;J)J

    goto :goto_0

    .line 1415
    :cond_2
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/r;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const-string v1, "\u5e10\u53f7\u65e0\u6548\u6216\u8fc7\u671f\uff0c\u8bf7\u9000\u51fa\u767b\u5f55\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1422
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/r;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const-string v1, "\u8f7d\u5165\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1423
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "savedObject_userinfo"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b(Ljava/lang/String;)Ljava/io/Serializable;

    goto :goto_1
.end method
