.class final Lcom/ushaqi/zhuishushenqi/ui/post/t;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/t;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    .line 125
    const v0, 0x7f05013e

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 126
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/t;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 122
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    .line 1141
    if-eqz p1, :cond_5

    .line 1143
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/t;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    const-string v1, "\u53d1\u5e03\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/t;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->finish()V

    .line 1163
    :goto_0
    return-void

    .line 1149
    :cond_0
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/t;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    const-string v1, "\u8eab\u4efd\u8ba4\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u540e\u518d\u53d1\u5e03"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1151
    :cond_1
    const-string v0, "LV_NOT_ENOUGH"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/t;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    const-string v1, "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u7b49\u7ea7\u4e0d\u591f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_2
    const-string v0, "FORBIDDEN"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1156
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 1157
    if-eqz v0, :cond_3

    .line 1158
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/t;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1160
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/t;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    const v1, 0x7f050114

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1163
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/t;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    const-string v1, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/t;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    const-string v1, "\u53d1\u5e03\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
