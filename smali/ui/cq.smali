.class final Lcom/ushaqi/zhuishushenqi/ui/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/server/r;


# instance fields
.field private synthetic a:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/cq;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/http/server/h;Lcom/koushikdutta/async/http/server/l;)V
    .locals 4

    .prologue
    .line 190
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/h;->b_()Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/a/k;

    .line 191
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a/k;->b()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/Multimap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 192
    const-string v2, "filename"

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/cq;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    goto :goto_0

    .line 197
    :cond_1
    const-string v0, "finish"

    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/server/l;->a(Ljava/lang/String;)V

    .line 198
    return-void
.end method
