.class final Lcom/ushaqi/zhuishushenqi/ui/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/server/r;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/http/server/h;Lcom/koushikdutta/async/http/server/l;)V
    .locals 5

    .prologue
    .line 175
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 176
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->f()Ljava/util/List;

    move-result-object v0

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    .line 179
    new-instance v4, Lcom/ushaqi/zhuishushenqi/model/ResponseBookFile;

    invoke-direct {v4, v0}, Lcom/ushaqi/zhuishushenqi/model/ResponseBookFile;-><init>(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v1, "application/json; charset=utf-8"

    invoke-interface {p2, v1, v0}, Lcom/koushikdutta/async/http/server/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method
