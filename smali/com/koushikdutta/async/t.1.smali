.class public Lcom/koushikdutta/async/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/A;


# static fields
.field private static synthetic f:Z


# instance fields
.field a:Lcom/koushikdutta/async/v;

.field b:I

.field private c:Lcom/koushikdutta/async/A;

.field private d:Lcom/koushikdutta/async/a/d;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/koushikdutta/async/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/t;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/A;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/koushikdutta/async/v;

    invoke-direct {v0}, Lcom/koushikdutta/async/v;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    .line 102
    const v0, 0x7fffffff

    iput v0, p0, Lcom/koushikdutta/async/t;->b:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/t;->a(Lcom/koushikdutta/async/A;)V

    .line 12
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/t;)V
    .locals 2

    .prologue
    .line 8
    .line 2034
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, p0, Lcom/koushikdutta/async/t;->c:Lcom/koushikdutta/async/A;

    iget-object v1, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/v;)V

    .line 2036
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 2037
    iget-boolean v0, p0, Lcom/koushikdutta/async/t;->e:Z

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, p0, Lcom/koushikdutta/async/t;->c:Lcom/koushikdutta/async/A;

    invoke-interface {v0}, Lcom/koushikdutta/async/A;->a()V

    .line 2041
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/t;->d:Lcom/koushikdutta/async/a/d;

    if-eqz v0, :cond_1

    .line 2042
    iget-object v0, p0, Lcom/koushikdutta/async/t;->d:Lcom/koushikdutta/async/a/d;

    invoke-interface {v0}, Lcom/koushikdutta/async/a/d;->a()V

    .line 8
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/t;->e:Z

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/t;->c:Lcom/koushikdutta/async/A;

    invoke-interface {v0}, Lcom/koushikdutta/async/A;->a()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/koushikdutta/async/t;->f:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_0
    iput p1, p0, Lcom/koushikdutta/async/t;->b:I

    .line 110
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/A;)V
    .locals 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/t;->c:Lcom/koushikdutta/async/A;

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/t;->c:Lcom/koushikdutta/async/A;

    new-instance v1, Lcom/koushikdutta/async/u;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/u;-><init>(Lcom/koushikdutta/async/t;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/a/d;)V

    .line 30
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/t;->c:Lcom/koushikdutta/async/A;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/a/a;)V

    .line 135
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/a/d;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/koushikdutta/async/t;->d:Lcom/koushikdutta/async/a/d;

    .line 91
    return-void
.end method

.method public a(Lcom/koushikdutta/async/v;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/t;->a(Lcom/koushikdutta/async/v;Z)V

    .line 71
    return-void
.end method

.method protected final a(Lcom/koushikdutta/async/v;Z)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/async/t;->c:Lcom/koushikdutta/async/A;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/v;)V

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    if-lez v0, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/t;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 79
    if-eqz p2, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    .line 81
    :cond_1
    if-lez v0, :cond_2

    .line 82
    iget-object v1, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/v;->a(Lcom/koushikdutta/async/v;I)V

    .line 85
    :cond_2
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 49
    .line 1099
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    .line 1104
    iget v1, p0, Lcom/koushikdutta/async/t;->b:I

    .line 49
    if-lt v0, v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const/4 v0, 0x1

    .line 53
    iget-object v1, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v1}, Lcom/koushikdutta/async/v;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/koushikdutta/async/t;->c:Lcom/koushikdutta/async/A;

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/A;->a(Ljava/nio/ByteBuffer;)V

    .line 58
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Lcom/koushikdutta/async/v;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 60
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    iget-object v2, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/v;->a(Ljava/nio/ByteBuffer;)V

    .line 63
    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/async/t;->c:Lcom/koushikdutta/async/A;

    iget-object v1, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/v;)V

    goto :goto_0
.end method

.method public final e()Lcom/koushikdutta/async/a/d;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/t;->d:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method
