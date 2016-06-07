.class public final Lcom/ushaqi/zhuishushenqi/reader/cM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/reader/cQ;

.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/reader/cQ;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cM;->c:[Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/cM;->a:Lcom/ushaqi/zhuishushenqi/reader/cQ;

    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cM;->b:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/cM;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cM;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/cM;)Lcom/ushaqi/zhuishushenqi/reader/cQ;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cM;->a:Lcom/ushaqi/zhuishushenqi/reader/cQ;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 38
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->H(Landroid/content/Context;)F

    move-result v3

    .line 39
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cM;->b:Landroid/content/Context;

    const-string v4, "BFD_RANDOM_RATE"

    invoke-static {v2, v4, v5}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v2

    .line 40
    cmpl-float v4, v2, v5

    if-nez v4, :cond_0

    .line 41
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v2, v4

    .line 42
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/cM;->b:Landroid/content/Context;

    const-string v5, "BFD_RANDOM_RATE"

    invoke-static {v4, v5, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;F)V

    .line 44
    :cond_0
    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    .line 45
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cM;->b:Landroid/content/Context;

    const-string v2, "rec_C6613205_93B6_61A6_9FEC_180B70F91B94"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/cM;->b:Landroid/content/Context;

    const/16 v4, 0x14

    .line 46
    invoke-static {v3, v4, p1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/cN;

    invoke-direct {v4, p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cN;-><init>(Lcom/ushaqi/zhuishushenqi/reader/cM;Ljava/lang/String;)V

    .line 45
    invoke-static {v1, v2, v3, v4}, Lcom/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/a/a/c;)V

    .line 69
    :goto_0
    return v0

    .line 68
    :cond_1
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/cO;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/cO;-><init>(Lcom/ushaqi/zhuishushenqi/reader/cM;)V

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/cO;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 69
    goto :goto_0
.end method
