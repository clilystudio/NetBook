.class public Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;
.super Lcom/ushaqi/zhuishushenqi/widget/ProgressView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:F

.field private c:Lcom/c/a/d;

.field private d:Lcom/c/a/D;

.field private e:Lcom/c/a/D;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->a:Z

    .line 53
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/ae;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/ae;-><init>(Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->d:Lcom/c/a/D;

    .line 91
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/ag;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/ag;-><init>(Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->e:Lcom/c/a/D;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;F)F
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->b:F

    return p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;)F
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->b:F

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1388

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 26
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0, v6}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->setVisibility(I)V

    .line 30
    :cond_0
    iput-boolean v6, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->a:Z

    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->c:Lcom/c/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->c:Lcom/c/a/d;

    invoke-virtual {v0}, Lcom/c/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->c:Lcom/c/a/d;

    invoke-virtual {v0}, Lcom/c/a/d;->c()V

    .line 35
    :cond_1
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/c/a/w;->a([F)Lcom/c/a/w;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v8, v9}, Lcom/c/a/w;->a(J)Lcom/c/a/w;

    .line 38
    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/c/a/w;->a([F)Lcom/c/a/w;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v8, v9}, Lcom/c/a/w;->a(J)Lcom/c/a/w;

    .line 41
    new-array v2, v5, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Lcom/c/a/w;->a([F)Lcom/c/a/w;

    move-result-object v2

    .line 42
    invoke-virtual {v2, v8, v9}, Lcom/c/a/w;->a(J)Lcom/c/a/w;

    .line 44
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->d:Lcom/c/a/D;

    invoke-virtual {v0, v3}, Lcom/c/a/w;->a(Lcom/c/a/D;)V

    .line 45
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->d:Lcom/c/a/D;

    invoke-virtual {v1, v3}, Lcom/c/a/w;->a(Lcom/c/a/D;)V

    .line 46
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->d:Lcom/c/a/D;

    invoke-virtual {v2, v3}, Lcom/c/a/w;->a(Lcom/c/a/D;)V

    .line 48
    new-instance v3, Lcom/c/a/d;

    invoke-direct {v3}, Lcom/c/a/d;-><init>()V

    iput-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->c:Lcom/c/a/d;

    .line 49
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->c:Lcom/c/a/d;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/c/a/a;

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/c/a/d;->a([Lcom/c/a/a;)V

    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->c:Lcom/c/a/d;

    invoke-virtual {v0}, Lcom/c/a/d;->a()V

    .line 51
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        0x0
        0x42700000    # 60.0f
    .end array-data

    .line 38
    :array_1
    .array-data 4
        0x42700000    # 60.0f
        0x42a00000    # 80.0f
    .end array-data

    .line 41
    :array_2
    .array-data 4
        0x42a00000    # 80.0f
        0x42b40000    # 90.0f
    .end array-data
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/widget/ah;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 64
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->a:Z

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->b:F

    aput v2, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    aput v1, v0, v3

    invoke-static {v0}, Lcom/c/a/w;->a([F)Lcom/c/a/w;

    move-result-object v0

    .line 67
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/c/a/w;->a(J)Lcom/c/a/w;

    .line 68
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->e:Lcom/c/a/D;

    invoke-virtual {v0, v1}, Lcom/c/a/w;->a(Lcom/c/a/D;)V

    .line 69
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/af;

    invoke-direct {v1, p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/af;-><init>(Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;Lcom/ushaqi/zhuishushenqi/widget/ah;)V

    invoke-virtual {v0, v1}, Lcom/c/a/w;->a(Lcom/c/a/b;)V

    .line 88
    invoke-virtual {v0}, Lcom/c/a/w;->a()V

    .line 89
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->a:Z

    return v0
.end method
