.class final Lcom/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/a/a/d;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/util/Map;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:D

.field private final synthetic f:I


# direct methods
.method constructor <init>(Lcom/a/a/d;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;DI)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/a/a/l;->a:Lcom/a/a/d;

    iput-object p2, p0, Lcom/a/a/l;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/a/a/l;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/a/a/l;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/a/a/l;->e:D

    iput p7, p0, Lcom/a/a/l;->f:I

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 937
    iget-object v0, p0, Lcom/a/a/l;->a:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/l;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/a/a/d;->b(Lcom/a/a/d;Landroid/content/Context;)V

    .line 939
    iget-object v0, p0, Lcom/a/a/l;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 940
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/a/a/l;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 944
    :goto_0
    :try_start_0
    const-string v1, "method"

    const-string v2, "MAddCart"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 945
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 946
    const-string v2, "i"

    iget-object v3, p0, Lcom/a/a/l;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 947
    const-string v2, "p"

    iget-wide v4, p0, Lcom/a/a/l;->e:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 948
    const-string v2, "n"

    iget v3, p0, Lcom/a/a/l;->f:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 949
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 950
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 951
    const-string v1, "lst"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 952
    iget-object v1, p0, Lcom/a/a/l;->a:Lcom/a/a/d;

    iget-object v2, p0, Lcom/a/a/l;->b:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/a/a/d;->a(Lcom/a/a/d;Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :goto_1
    return-void

    .line 942
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    goto :goto_1
.end method
