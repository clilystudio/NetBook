.class final Lcom/ushaqi/zhuishushenqi/util/P;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ResultStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/N;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/util/N;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/P;->a:Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/util/N;B)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/P;-><init>(Lcom/ushaqi/zhuishushenqi/util/N;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->y(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/util/P;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 87
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    .line 1101
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1103
    if-eqz p1, :cond_2

    .line 1104
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/P;->a:Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Lcom/ushaqi/zhuishushenqi/util/N;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6536\u85cf\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1108
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    const-string v0, "11000"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/P;->a:Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Lcom/ushaqi/zhuishushenqi/util/N;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4f60\u5df2\u7ecf\u6536\u85cf\u8fc7\u5566\uff5e"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1112
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/P;->a:Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Lcom/ushaqi/zhuishushenqi/util/N;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6536\u85cf\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
