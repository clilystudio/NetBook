.class final Lokio/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lokio/v;

.field g:Lokio/v;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lokio/v;->a:[B

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/v;->e:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/v;->d:Z

    .line 61
    return-void
.end method

.method constructor <init>(Lokio/v;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p1, Lokio/v;->a:[B

    iget v1, p1, Lokio/v;->b:I

    iget v2, p1, Lokio/v;->c:I

    invoke-direct {p0, v0, v1, v2}, Lokio/v;-><init>([BII)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokio/v;->d:Z

    .line 66
    return-void
.end method

.method constructor <init>([BII)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lokio/v;->a:[B

    .line 70
    iput p2, p0, Lokio/v;->b:I

    .line 71
    iput p3, p0, Lokio/v;->c:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/v;->e:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/v;->d:Z

    .line 74
    return-void
.end method


# virtual methods
.method public final a()Lokio/v;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lokio/v;->f:Lokio/v;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lokio/v;->f:Lokio/v;

    .line 82
    :goto_0
    iget-object v2, p0, Lokio/v;->g:Lokio/v;

    iget-object v3, p0, Lokio/v;->f:Lokio/v;

    iput-object v3, v2, Lokio/v;->f:Lokio/v;

    .line 83
    iget-object v2, p0, Lokio/v;->f:Lokio/v;

    iget-object v3, p0, Lokio/v;->g:Lokio/v;

    iput-object v3, v2, Lokio/v;->g:Lokio/v;

    .line 84
    iput-object v1, p0, Lokio/v;->f:Lokio/v;

    .line 85
    iput-object v1, p0, Lokio/v;->g:Lokio/v;

    .line 86
    return-object v0

    :cond_0
    move-object v0, v1

    .line 81
    goto :goto_0
.end method

.method public final a(Lokio/v;)Lokio/v;
    .locals 1

    .prologue
    .line 94
    iput-object p0, p1, Lokio/v;->g:Lokio/v;

    .line 95
    iget-object v0, p0, Lokio/v;->f:Lokio/v;

    iput-object v0, p1, Lokio/v;->f:Lokio/v;

    .line 96
    iget-object v0, p0, Lokio/v;->f:Lokio/v;

    iput-object p1, v0, Lokio/v;->g:Lokio/v;

    .line 97
    iput-object p1, p0, Lokio/v;->f:Lokio/v;

    .line 98
    return-object p1
.end method

.method public final a(Lokio/v;I)V
    .locals 6

    .prologue
    const/16 v2, 0x800

    const/4 v5, 0x0

    .line 135
    iget-boolean v0, p1, Lokio/v;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 136
    :cond_0
    iget v0, p1, Lokio/v;->c:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_3

    .line 138
    iget-boolean v0, p1, Lokio/v;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 139
    :cond_1
    iget v0, p1, Lokio/v;->c:I

    add-int/2addr v0, p2

    iget v1, p1, Lokio/v;->b:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 140
    :cond_2
    iget-object v0, p1, Lokio/v;->a:[B

    iget v1, p1, Lokio/v;->b:I

    iget-object v2, p1, Lokio/v;->a:[B

    iget v3, p1, Lokio/v;->c:I

    iget v4, p1, Lokio/v;->b:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget v0, p1, Lokio/v;->c:I

    iget v1, p1, Lokio/v;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/v;->c:I

    .line 142
    iput v5, p1, Lokio/v;->b:I

    .line 145
    :cond_3
    iget-object v0, p0, Lokio/v;->a:[B

    iget v1, p0, Lokio/v;->b:I

    iget-object v2, p1, Lokio/v;->a:[B

    iget v3, p1, Lokio/v;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget v0, p1, Lokio/v;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/v;->c:I

    .line 147
    iget v0, p0, Lokio/v;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lokio/v;->b:I

    .line 148
    return-void
.end method
