.class final Lcom/c/a/q;
.super Lcom/c/a/o;
.source "SourceFile"


# instance fields
.field b:I


# direct methods
.method constructor <init>(F)V
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/c/a/o;-><init>()V

    .line 290
    iput p1, p0, Lcom/c/a/q;->a:F

    .line 291
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 292
    return-void
.end method

.method constructor <init>(FI)V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/c/a/o;-><init>()V

    .line 283
    iput p1, p0, Lcom/c/a/q;->a:F

    .line 284
    iput p2, p0, Lcom/c/a/q;->b:I

    .line 285
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 287
    return-void
.end method

.method private d()Lcom/c/a/q;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Lcom/c/a/q;

    .line 1191
    iget v1, p0, Lcom/c/a/o;->a:F

    .line 311
    iget v2, p0, Lcom/c/a/q;->b:I

    invoke-direct {v0, v1, v2}, Lcom/c/a/q;-><init>(FI)V

    .line 312
    invoke-virtual {p0}, Lcom/c/a/q;->b()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/a/q;->a(Landroid/view/animation/Interpolator;)V

    .line 313
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/c/a/q;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/c/a/o;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/c/a/q;->d()Lcom/c/a/q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/c/a/q;->d()Lcom/c/a/q;

    move-result-object v0

    return-object v0
.end method
