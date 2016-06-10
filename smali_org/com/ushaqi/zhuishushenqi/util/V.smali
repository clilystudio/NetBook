.class public final Lcom/ushaqi/zhuishushenqi/util/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/V;->b:[[I

    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/V;->a:Landroid/content/Context;

    .line 34
    return-void

    .line 25
    nop

    :array_0
    .array-data 4
        0x7
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0xe
        0x3c
    .end array-data

    :array_2
    .array-data 4
        0x1e
        0x78
    .end array-data

    :array_3
    .array-data 4
        0x2d
        0xb4
    .end array-data
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/V;->a:Landroid/content/Context;

    const-string v1, "key_last_share_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/V;->a:Landroid/content/Context;

    const-string v1, "key_last_share_time"

    invoke-static {v0, v1, p1, p2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 48
    return-void
.end method
