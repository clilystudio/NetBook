.class final Lcom/ushaqi/zhuishushenqi/reader/cN;
.super Lcom/a/a/c;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/cM;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/cM;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cN;->b:Lcom/ushaqi/zhuishushenqi/reader/cM;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/cN;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONArray;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 50
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 51
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/16 v0, 0x14

    if-ge v1, v0, :cond_1

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "iid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v1, :cond_0

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ids="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :goto_1
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/cN;->b:Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/reader/cM;->a(Lcom/ushaqi/zhuishushenqi/reader/cM;)[Ljava/lang/String;

    move-result-object v4

    aput-object v0, v4, v1

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&ids="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cO;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cN;->b:Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/cO;-><init>(Lcom/ushaqi/zhuishushenqi/reader/cM;)V

    new-array v1, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/cN;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/cO;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    :goto_2
    return-void

    .line 60
    :cond_1
    :try_start_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cP;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cN;->b:Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/cP;-><init>(Lcom/ushaqi/zhuishushenqi/reader/cM;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/cP;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
