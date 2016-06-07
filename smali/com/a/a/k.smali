.class final Lcom/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/a/a/d;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/util/Map;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/a/a/d;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/a/a/k;->a:Lcom/a/a/d;

    iput-object p2, p0, Lcom/a/a/k;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/a/a/k;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/a/a/k;->d:Ljava/lang/String;

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 915
    iget-object v0, p0, Lcom/a/a/k;->a:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/k;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/a/a/d;->b(Lcom/a/a/d;Landroid/content/Context;)V

    .line 917
    iget-object v0, p0, Lcom/a/a/k;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 918
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/a/a/k;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 922
    :goto_0
    :try_start_0
    const-string v1, "method"

    const-string v2, "MVisit"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 923
    const-string v1, "iid"

    iget-object v2, p0, Lcom/a/a/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    iget-object v1, p0, Lcom/a/a/k;->a:Lcom/a/a/d;

    iget-object v2, p0, Lcom/a/a/k;->b:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/a/a/d;->a(Lcom/a/a/d;Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :goto_1
    return-void

    .line 920
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 927
    :catch_0
    move-exception v0

    goto :goto_1
.end method
