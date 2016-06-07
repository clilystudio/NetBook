.class final Lcom/c/a/p;
.super Lcom/c/a/o;
.source "SourceFile"


# instance fields
.field b:F


# direct methods
.method constructor <init>(F)V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/c/a/o;-><init>()V

    .line 334
    iput p1, p0, Lcom/c/a/p;->a:F

    .line 335
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 336
    return-void
.end method

.method constructor <init>(FF)V
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/c/a/o;-><init>()V

    .line 327
    iput p1, p0, Lcom/c/a/p;->a:F

    .line 328
    iput p2, p0, Lcom/c/a/p;->b:F

    .line 329
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 331
    return-void
.end method

.method private d()Lcom/c/a/p;
    .locals 3

    .prologue
    .line 355
    new-instance v0, Lcom/c/a/p;

    .line 1191
    iget v1, p0, Lcom/c/a/o;->a:F

    .line 355
    iget v2, p0, Lcom/c/a/p;->b:F

    invoke-direct {v0, v1, v2}, Lcom/c/a/p;-><init>(FF)V

    .line 356
    invoke-virtual {p0}, Lcom/c/a/p;->b()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/a/p;->a(Landroid/view/animation/Interpolator;)V

    .line 357
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/c/a/p;->b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/c/a/o;
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/c/a/p;->d()Lcom/c/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/c/a/p;->d()Lcom/c/a/p;

    move-result-object v0

    return-object v0
.end method
