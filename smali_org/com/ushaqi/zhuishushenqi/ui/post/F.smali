.class final Lcom/ushaqi/zhuishushenqi/ui/post/F;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    .line 152
    const v0, 0x7f05013e

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 153
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 7

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
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

    const/4 v5, 0x4

    aget-object v5, p1, v5

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-static {v6}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 161
    :cond_0
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

    const/4 v5, 0x4

    aget-object v5, p1, v5

    invoke-virtual/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 149
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    .line 1171
    if-eqz p1, :cond_7

    .line 1173
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->isOk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1174
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    const-string v1, "\u53d1\u5e03\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)V

    .line 1177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1183
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->setResult(I)V

    .line 1186
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->finish()V

    .line 1204
    :goto_1
    return-void

    .line 1181
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1190
    :cond_2
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1191
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->d()V

    goto :goto_1

    .line 1192
    :cond_3
    const-string v0, "LV_NOT_ENOUGH"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    const-string v1, "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u7b49\u7ea7\u4e0d\u591f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1196
    :cond_4
    const-string v0, "FORBIDDEN"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1197
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 1198
    if-eqz v0, :cond_5

    .line 1199
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1201
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    const v1, 0x7f050114

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1204
    :cond_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    const-string v1, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1210
    :cond_7
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/F;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    const-string v1, "\u53d1\u5e03\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
