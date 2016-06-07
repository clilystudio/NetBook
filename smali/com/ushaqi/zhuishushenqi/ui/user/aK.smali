.class final Lcom/ushaqi/zhuishushenqi/ui/user/aK;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;B)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/aK;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfo;
    .locals 2

    .prologue
    .line 208
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->K(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 203
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UserInfo;

    .line 1217
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1218
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    .line 1220
    if-eqz p1, :cond_2

    .line 1222
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;Lcom/ushaqi/zhuishushenqi/model/UserInfo;)V

    .line 1225
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "savedObject_userinfo"

    invoke-virtual {v0, p1, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/io/Serializable;Ljava/lang/String;)Z

    .line 1226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getNicknameUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 1227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/util/J;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;I)V

    .line 1228
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;Lcom/ushaqi/zhuishushenqi/model/UserInfo;)V

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    const-string v1, "\u5e10\u53f7\u65e0\u6548\u6216\u8fc7\u671f\uff0c\u8bf7\u9000\u51fa\u767b\u5f55\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1237
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    const-string v1, "\u8f7d\u5165\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1238
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "savedObject_userinfo"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;

    .line 1239
    if-eqz v0, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;Lcom/ushaqi/zhuishushenqi/model/UserInfo;)V

    goto :goto_0
.end method
