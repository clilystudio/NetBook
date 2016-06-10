.class public final Lcom/koushikdutta/async/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/d/a;->b:I

    .line 13
    const/16 v0, 0x1000

    iput v0, p0, Lcom/koushikdutta/async/d/a;->c:I

    .line 20
    sget v0, Lcom/koushikdutta/async/v;->c:I

    iput v0, p0, Lcom/koushikdutta/async/d/a;->a:I

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/koushikdutta/async/d/a;->b:I

    iget v1, p0, Lcom/koushikdutta/async/d/a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/d/a;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/v;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 28
    long-to-int v0, p1

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/d/a;->b:I

    .line 29
    return-void
.end method
