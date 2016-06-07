.class final Lcom/ushaqi/zhuishushenqi/ui/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/server/r;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/http/server/h;Lcom/koushikdutta/async/http/server/l;)V
    .locals 5

    .prologue
    .line 204
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/h;->b_()Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/a/k;

    .line 205
    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a/k;->b()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/Multimap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 207
    const-string v3, "file_name"

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 210
    goto :goto_0

    .line 213
    :cond_0
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->I(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_1

    .line 215
    new-instance v1, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-direct {v1, v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->remove(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 219
    :cond_1
    const-string v0, "finish"

    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/server/l;->a(Ljava/lang/String;)V

    .line 220
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
