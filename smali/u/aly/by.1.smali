.class public final Lu/aly/by;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[S

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lu/aly/by;->b:I

    .line 32
    const/16 v0, 0xf

    new-array v0, v0, [S

    iput-object v0, p0, Lu/aly/by;->a:[S

    .line 33
    return-void
.end method


# virtual methods
.method public final a()S
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lu/aly/by;->a:[S

    iget v1, p0, Lu/aly/by;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lu/aly/by;->b:I

    aget-short v0, v0, v1

    return v0
.end method

.method public final a(S)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Lu/aly/by;->a:[S

    array-length v0, v0

    iget v1, p0, Lu/aly/by;->b:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1047
    iget-object v0, p0, Lu/aly/by;->a:[S

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [S

    .line 1048
    iget-object v1, p0, Lu/aly/by;->a:[S

    iget-object v2, p0, Lu/aly/by;->a:[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    iput-object v0, p0, Lu/aly/by;->a:[S

    .line 43
    :cond_0
    iget-object v0, p0, Lu/aly/by;->a:[S

    iget v1, p0, Lu/aly/by;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lu/aly/by;->b:I

    aput-short p1, v0, v1

    .line 44
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lu/aly/by;->b:I

    .line 58
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v0, "<ShortStack vector:["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lu/aly/by;->a:[S

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 79
    const-string v0, "]>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    if-eqz v0, :cond_1

    .line 66
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    iget v2, p0, Lu/aly/by;->b:I

    if-ne v0, v2, :cond_2

    .line 70
    const-string v2, ">>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_2
    iget-object v2, p0, Lu/aly/by;->a:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    iget v2, p0, Lu/aly/by;->b:I

    if-ne v0, v2, :cond_3

    .line 76
    const-string v2, "<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
