.class public Lcom/ushaqi/zhuishushenqi/util/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ushaqi/zhuishushenqi/util/J;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/J;->d:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/J;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/util/J;->b:I

    return p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/J;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/J;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/J;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/ushaqi/zhuishushenqi/util/J;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/J;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/J;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/J;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/J;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    .line 40
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/J;->a:Lcom/ushaqi/zhuishushenqi/util/J;

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/util/J;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/util/J;->c:I

    return p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/util/J;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/util/J;->b:I

    .line 50
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/Account;)V
    .locals 4

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/K;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/K;-><init>(Lcom/ushaqi/zhuishushenqi/util/J;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/K;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/util/J;->c:I

    return v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/util/J;->c:I

    .line 58
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/L;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/util/L;-><init>(Lcom/ushaqi/zhuishushenqi/util/J;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/L;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/M;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/util/M;-><init>(Lcom/ushaqi/zhuishushenqi/util/J;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/M;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    :cond_0
    return-void
.end method

.method public final e()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 123
    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/util/J;->b:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/util/J;->c:I

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->getPreUnimpCount(Ljava/lang/String;)I

    move-result v1

    .line 1053
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/util/J;->c:I

    .line 127
    if-ge v1, v2, :cond_0

    .line 128
    const/4 v0, -0x1

    goto :goto_0

    .line 133
    :cond_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/util/J;->b:I

    goto :goto_0
.end method
