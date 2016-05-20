.class public final Lcom/ushaqi/zhuishushenqi/util/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ushaqi/zhuishushenqi/util/H;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    const-string v0, "ts.tab"

    .line 1076
    const-string v1, "UTF-8"

    invoke-static {p1, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/H;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1077
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1078
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The conversion table may be damaged or not exists"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/H;->b:Ljava/util/Map;

    .line 47
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/H;->b:Ljava/util/Map;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/H;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/H;->a:Lcom/ushaqi/zhuishushenqi/util/H;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/H;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/H;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/H;->a:Lcom/ushaqi/zhuishushenqi/util/H;

    .line 41
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/H;->a:Lcom/ushaqi/zhuishushenqi/util/H;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 92
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 93
    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 96
    return-object v0
.end method


# virtual methods
.method public final a(C)Ljava/lang/Character;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/H;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/H;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    goto :goto_0
.end method
