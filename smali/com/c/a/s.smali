.class public Lcom/c/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final e:Lcom/c/a/v;

.field private static final f:Lcom/c/a/v;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/c/a/r;

.field private c:Lcom/xiaomi/mistatistic/sdk/a/r;

.field private d:Ljava/lang/Class;

.field private g:Lcom/c/a/v;

.field private h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lcom/c/a/m;

    invoke-direct {v0}, Lcom/c/a/m;-><init>()V

    sput-object v0, Lcom/c/a/s;->e:Lcom/c/a/v;

    .line 81
    new-instance v0, Lcom/c/a/k;

    invoke-direct {v0}, Lcom/c/a/k;-><init>()V

    sput-object v0, Lcom/c/a/s;->f:Lcom/c/a/v;

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    .line 92
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/s;->b:Lcom/c/a/r;

    .line 107
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/c/a/s;->a:Ljava/lang/String;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/c/a/s;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[F)Lcom/c/a/s;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/c/a/t;

    invoke-direct {v0, p0, p1}, Lcom/c/a/t;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[I)Lcom/c/a/s;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/c/a/u;

    invoke-direct {v0, p0, p1}, Lcom/c/a/u;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/c/a/s;
    .locals 2

    .prologue
    .line 594
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/s;

    .line 595
    iget-object v1, p0, Lcom/c/a/s;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/c/a/s;->a:Ljava/lang/String;

    .line 596
    iget-object v1, p0, Lcom/c/a/s;->c:Lcom/xiaomi/mistatistic/sdk/a/r;

    iput-object v1, v0, Lcom/c/a/s;->c:Lcom/xiaomi/mistatistic/sdk/a/r;

    .line 597
    iget-object v1, p0, Lcom/c/a/s;->b:Lcom/c/a/r;

    invoke-virtual {v1}, Lcom/c/a/r;->a()Lcom/c/a/r;

    move-result-object v1

    iput-object v1, v0, Lcom/c/a/s;->b:Lcom/c/a/r;

    .line 598
    iget-object v1, p0, Lcom/c/a/s;->g:Lcom/c/a/v;

    iput-object v1, v0, Lcom/c/a/s;->g:Lcom/c/a/v;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(F)V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/c/a/s;->b:Lcom/c/a/r;

    invoke-virtual {v0, p1}, Lcom/c/a/r;->a(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/s;->h:Ljava/lang/Object;

    .line 671
    return-void
.end method

.method public varargs a([F)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 327
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/c/a/s;->d:Ljava/lang/Class;

    .line 2069
    array-length v2, p1

    .line 2070
    const/4 v0, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v3, v0, [Lcom/c/a/p;

    .line 2071
    if-ne v2, v1, :cond_1

    .line 2124
    new-instance v0, Lcom/c/a/p;

    invoke-direct {v0, v5}, Lcom/c/a/p;-><init>(F)V

    .line 2072
    check-cast v0, Lcom/c/a/p;

    aput-object v0, v3, v4

    .line 2073
    const/high16 v0, 0x3f800000    # 1.0f

    aget v2, p1, v4

    invoke-static {v0, v2}, Lcom/c/a/o;->a(FF)Lcom/c/a/o;

    move-result-object v0

    check-cast v0, Lcom/c/a/p;

    aput-object v0, v3, v1

    .line 2080
    :cond_0
    new-instance v0, Lcom/c/a/l;

    invoke-direct {v0, v3}, Lcom/c/a/l;-><init>([Lcom/c/a/p;)V

    .line 328
    iput-object v0, p0, Lcom/c/a/s;->b:Lcom/c/a/r;

    .line 329
    return-void

    .line 2075
    :cond_1
    aget v0, p1, v4

    invoke-static {v5, v0}, Lcom/c/a/o;->a(FF)Lcom/c/a/o;

    move-result-object v0

    check-cast v0, Lcom/c/a/p;

    aput-object v0, v3, v4

    .line 2076
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2077
    int-to-float v0, v1

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v0, v4

    aget v4, p1, v1

    invoke-static {v0, v4}, Lcom/c/a/o;->a(FF)Lcom/c/a/o;

    move-result-object v0

    check-cast v0, Lcom/c/a/p;

    aput-object v0, v3, v1

    .line 2076
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public varargs a([I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 309
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/c/a/s;->d:Ljava/lang/Class;

    .line 1054
    array-length v2, p1

    .line 1055
    const/4 v0, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v3, v0, [Lcom/c/a/q;

    .line 1056
    if-ne v2, v1, :cond_1

    .line 1092
    new-instance v0, Lcom/c/a/q;

    invoke-direct {v0, v5}, Lcom/c/a/q;-><init>(F)V

    .line 1057
    check-cast v0, Lcom/c/a/q;

    aput-object v0, v3, v4

    .line 1058
    const/high16 v0, 0x3f800000    # 1.0f

    aget v2, p1, v4

    invoke-static {v0, v2}, Lcom/c/a/o;->a(FI)Lcom/c/a/o;

    move-result-object v0

    check-cast v0, Lcom/c/a/q;

    aput-object v0, v3, v1

    .line 1065
    :cond_0
    new-instance v0, Lcom/c/a/n;

    invoke-direct {v0, v3}, Lcom/c/a/n;-><init>([Lcom/c/a/q;)V

    .line 310
    iput-object v0, p0, Lcom/c/a/s;->b:Lcom/c/a/r;

    .line 311
    return-void

    .line 1060
    :cond_1
    aget v0, p1, v4

    invoke-static {v5, v0}, Lcom/c/a/o;->a(FI)Lcom/c/a/o;

    move-result-object v0

    check-cast v0, Lcom/c/a/q;

    aput-object v0, v3, v4

    .line 1061
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1062
    int-to-float v0, v1

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v0, v4

    aget v4, p1, v1

    invoke-static {v0, v4}, Lcom/c/a/o;->a(FI)Lcom/c/a/o;

    move-result-object v0

    check-cast v0, Lcom/c/a/q;

    aput-object v0, v3, v1

    .line 1061
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/c/a/s;->g:Lcom/c/a/v;

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/c/a/s;->d:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/c/a/s;->e:Lcom/c/a/v;

    :goto_0
    iput-object v0, p0, Lcom/c/a/s;->g:Lcom/c/a/v;

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/c/a/s;->g:Lcom/c/a/v;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/c/a/s;->b:Lcom/c/a/r;

    iget-object v1, p0, Lcom/c/a/s;->g:Lcom/c/a/v;

    .line 2139
    iput-object v1, v0, Lcom/c/a/r;->d:Lcom/c/a/v;

    .line 646
    :cond_1
    return-void

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/c/a/s;->d:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/c/a/s;->f:Lcom/c/a/v;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/c/a/s;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/c/a/s;->a()Lcom/c/a/s;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/c/a/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/s;->b:Lcom/c/a/r;

    invoke-virtual {v1}, Lcom/c/a/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
