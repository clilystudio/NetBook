.class final Lcom/ushaqi/zhuishushenqi/ui/post/cI;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 169
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    .line 170
    const v0, 0x7f05013e

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 171
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4

    .prologue
    .line 176
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/cI;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 167
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    .line 1186
    if-eqz p1, :cond_4

    .line 1188
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    const-string v1, "\u53d1\u5e03\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1192
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V

    .line 1193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V

    .line 1209
    :goto_0
    return-void

    .line 1197
    :cond_0
    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->d()V

    goto :goto_0

    .line 1201
    :cond_1
    const-string v0, "FORBIDDEN"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1202
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 1203
    if-eqz v0, :cond_2

    .line 1204
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    const v1, 0x7f050114

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1209
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    const-string v1, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1215
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    const-string v1, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
