.class final Lcom/ushaqi/zhuishushenqi/reader/bp;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 2602
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bp;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;B)V
    .locals 0

    .prologue
    .line 2602
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/bp;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;
    .locals 3

    .prologue
    .line 2607
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bp;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2611
    :goto_0
    return-object v0

    .line 2608
    :catch_0
    move-exception v0

    .line 2609
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2611
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2602
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bp;->a()Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 2602
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;

    .line 3617
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3618
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->getKeyLength()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3619
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->getKeys()[Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 3620
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;->get_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3622
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bp;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 3629
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bp;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Ljava/util/Map;)V

    .line 2602
    return-void

    .line 3624
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bp;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->M(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 3625
    if-nez v0, :cond_1

    .line 3626
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1
.end method
