.class public final Lu/aly/bY;
.super Lu/aly/bZ;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lu/aly/bZ;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lu/aly/bY;->d()I

    move-result v0

    .line 66
    if-le p3, v0, :cond_0

    move p3, v0

    .line 67
    :cond_0
    if-lez p3, :cond_1

    .line 68
    iget-object v0, p0, Lu/aly/bY;->a:[B

    iget v1, p0, Lu/aly/bY;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-virtual {p0, p3}, Lu/aly/bY;->a(I)V

    .line 71
    :cond_1
    return p3
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bY;->a:[B

    .line 50
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lu/aly/bY;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lu/aly/bY;->b:I

    .line 94
    return-void
.end method

.method public final b([BII)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No writing allowed!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lu/aly/bY;->a:[B

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lu/aly/bY;->b:I

    return v0
.end method

.method public final c([BII)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lu/aly/bY;->a:[B

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lu/aly/bY;->b:I

    .line 45
    add-int/lit8 v0, p3, 0x0

    iput v0, p0, Lu/aly/bY;->c:I

    .line 46
    return-void
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lu/aly/bY;->c:I

    iget v1, p0, Lu/aly/bY;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
