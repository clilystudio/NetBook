.class final Lcom/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/a/a/d;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/util/Map;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/a/a/d;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/a/a/j;->a:Lcom/a/a/d;

    iput-object p2, p0, Lcom/a/a/j;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/a/a/j;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/a/a/j;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/a/a/j;->e:Landroid/os/Handler;

    .line 1652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1655
    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/j;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/a/a/d;->b(Lcom/a/a/d;Landroid/content/Context;)V

    .line 1657
    iget-object v0, p0, Lcom/a/a/j;->c:Ljava/util/Map;

    .line 1658
    if-nez v0, :cond_0

    .line 1659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1661
    :cond_0
    const-string v1, "appkey"

    iget-object v2, p0, Lcom/a/a/j;->a:Lcom/a/a/d;

    invoke-static {v2}, Lcom/a/a/d;->c(Lcom/a/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    const-string v1, "gid"

    iget-object v2, p0, Lcom/a/a/j;->a:Lcom/a/a/d;

    invoke-static {v2}, Lcom/a/a/d;->d(Lcom/a/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    const-string v1, "sid"

    iget-object v2, p0, Lcom/a/a/j;->a:Lcom/a/a/d;

    invoke-static {v2}, Lcom/a/a/d;->g(Lcom/a/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    const-string v1, "method"

    iget-object v2, p0, Lcom/a/a/j;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1666
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1668
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    .line 1669
    const-string v2, "http://m.api.baifendian.com/rec"

    .line 1668
    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1670
    iget-object v2, p0, Lcom/a/a/j;->a:Lcom/a/a/d;

    iget-object v3, p0, Lcom/a/a/j;->b:Landroid/content/Context;

    invoke-static {v2, v3, v1, v0}, Lcom/a/a/d;->a(Lcom/a/a/d;Landroid/content/Context;Lorg/apache/http/client/methods/HttpPost;[B)Ljava/lang/String;

    move-result-object v1

    .line 1672
    const/4 v0, 0x0

    .line 1676
    if-eqz v1, :cond_3

    .line 1677
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v1, v5, :cond_1

    .line 1679
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1681
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 1682
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1690
    :goto_0
    if-nez v0, :cond_2

    .line 1691
    const-string v0, ""

    .line 1694
    :cond_2
    iget-object v2, p0, Lcom/a/a/j;->e:Landroid/os/Handler;

    new-instance v3, Lcom/a/a/o;

    .line 1695
    invoke-direct {v3, v0, v1}, Lcom/a/a/o;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1694
    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1696
    iget-object v1, p0, Lcom/a/a/j;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1697
    return-void

    :catch_0
    move-exception v1

    .line 1688
    :cond_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method
