.class final Lcom/ushaqi/zhuishushenqi/ui/post/z;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    .line 123
    const v0, 0x7f05013e

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 124
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 5

    .prologue
    .line 129
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const-string v4, "girl"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/z;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 120
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    .line 1139
    if-eqz p1, :cond_5

    .line 1141
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    const-string v1, "\u53d1\u5e03\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1143
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1144
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 1162
    :goto_0
    return-void

    .line 1148
    :cond_0
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    const-string v1, "\u8eab\u4efd\u8ba4\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u540e\u518d\u53d1\u5e03"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    :cond_1
    const-string v0, "LV_NOT_ENOUGH"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    const-string v1, "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u7b49\u7ea7\u4e0d\u591f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1154
    :cond_2
    const-string v0, "FORBIDDEN"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1155
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 1156
    if-eqz v0, :cond_3

    .line 1157
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1159
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    const v1, 0x7f050114

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1162
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    const-string v1, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1168
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/z;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    const-string v1, "\u53d1\u5e03\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
