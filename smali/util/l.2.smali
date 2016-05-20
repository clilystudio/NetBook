.class final Lcom/ushaqi/zhuishushenqi/util/l;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/k;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/util/k;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/l;->a:Lcom/ushaqi/zhuishushenqi/util/k;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/util/k;B)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/l;-><init>(Lcom/ushaqi/zhuishushenqi/util/k;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 73
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

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/util/l;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 68
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    .line 1082
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1084
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/l;->a:Lcom/ushaqi/zhuishushenqi/util/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/k;->a(Lcom/ushaqi/zhuishushenqi/util/k;Z)V

    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/l;->a:Lcom/ushaqi/zhuishushenqi/util/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/k;->a(Lcom/ushaqi/zhuishushenqi/util/k;Z)V

    goto :goto_0
.end method
