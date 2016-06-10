.class public Lcom/koushikdutta/async/E;
.super Lcom/koushikdutta/async/t;
.source "SourceFile"


# static fields
.field private static synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/koushikdutta/async/E;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/E;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/A;)V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/t;-><init>(Lcom/koushikdutta/async/A;)V

    .line 8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/E;->a(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/v;)V
    .locals 2

    .prologue
    .line 34
    .line 2015
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->d()Z

    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 2104
    iget v0, p0, Lcom/koushikdutta/async/t;->b:I

    .line 34
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/E;->b(Lcom/koushikdutta/async/v;)Lcom/koushikdutta/async/v;

    move-result-object v0

    .line 37
    sget-boolean v1, Lcom/koushikdutta/async/E;->c:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->b()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_2
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/koushikdutta/async/t;->a(Lcom/koushikdutta/async/v;Z)V

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->j()V

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 19
    .line 1015
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->d()Z

    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 1104
    iget v0, p0, Lcom/koushikdutta/async/t;->b:I

    .line 19
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 21
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/v;

    invoke-direct {v0}, Lcom/koushikdutta/async/v;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 23
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 24
    sget-boolean v2, Lcom/koushikdutta/async/E;->c:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/v;->a(Ljava/nio/ByteBuffer;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/E;->b(Lcom/koushikdutta/async/v;)Lcom/koushikdutta/async/v;

    move-result-object v0

    .line 27
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/koushikdutta/async/t;->a(Lcom/koushikdutta/async/v;Z)V

    goto :goto_0
.end method

.method public b(Lcom/koushikdutta/async/v;)Lcom/koushikdutta/async/v;
    .locals 0

    .prologue
    .line 12
    return-object p1
.end method
