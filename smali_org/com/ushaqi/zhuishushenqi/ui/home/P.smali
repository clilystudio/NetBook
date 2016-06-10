.class final Lcom/ushaqi/zhuishushenqi/ui/home/P;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/P;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;B)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/P;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfo;
    .locals 2

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/P;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->K(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 325
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/P;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 316
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UserInfo;

    .line 1330
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1332
    if-eqz p1, :cond_3

    .line 1334
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->isOk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1336
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "savedObject_userinfo"

    invoke-virtual {v0, p1, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/io/Serializable;Ljava/lang/String;)Z

    .line 1337
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getGender()Ljava/lang/String;

    move-result-object v0

    .line 1338
    if-eqz v0, :cond_1

    .line 1339
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 1340
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/model/User;->setGender(Ljava/lang/String;)V

    .line 1341
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Lcom/ushaqi/zhuishushenqi/model/Account;)V

    .line 1342
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/P;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;Ljava/lang/String;)V

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/P;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u6027\u522b\u4fe1\u606f\uff0c\u8bf7\u9000\u51fa\u767b\u5f55\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1347
    :cond_2
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/P;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u5e10\u53f7\u65e0\u6548\u6216\u8fc7\u671f\uff0c\u8bf7\u9000\u51fa\u767b\u5f55\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1354
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/P;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u5e10\u53f7\u65e0\u6548\u6216\u8fc7\u671f\uff0c\u8bf7\u9000\u51fa\u767b\u5f55\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1355
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "savedObject_userinfo"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b(Ljava/lang/String;)Ljava/io/Serializable;

    goto :goto_0
.end method
