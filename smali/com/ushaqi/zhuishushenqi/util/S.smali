.class public abstract Lcom/ushaqi/zhuishushenqi/util/S;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ushaqi/zhuishushenqi/model/Root;",
        ">",
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 19
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/ushaqi/zhuishushenqi/util/S;->a(Lcom/ushaqi/zhuishushenqi/api/ApiService;[Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/ushaqi/zhuishushenqi/api/ApiService;[Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ushaqi/zhuishushenqi/api/ApiService;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected a(Lcom/ushaqi/zhuishushenqi/model/Root;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method protected abstract b(Lcom/ushaqi/zhuishushenqi/model/Root;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/S;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Root;

    .line 1029
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1031
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Root;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/S;->b(Lcom/ushaqi/zhuishushenqi/model/Root;)V

    :goto_0
    return-void

    .line 1034
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/S;->a(Lcom/ushaqi/zhuishushenqi/model/Root;)V

    goto :goto_0
.end method
