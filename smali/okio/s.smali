.class final Lokio/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/h;


# instance fields
.field private a:Lokio/f;

.field private b:Lokio/x;

.field private c:Z


# direct methods
.method public constructor <init>(Lokio/x;)V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lokio/f;

    invoke-direct {v0}, Lokio/f;-><init>()V

    invoke-direct {p0, p1, v0}, Lokio/s;-><init>(Lokio/x;Lokio/f;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Lokio/x;Lokio/f;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p2, p0, Lokio/s;->a:Lokio/f;

    .line 31
    iput-object p1, p0, Lokio/s;->b:Lokio/x;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lokio/y;)J
    .locals 6

    .prologue
    .line 100
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    const-wide/16 v0, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Lokio/s;->a:Lokio/f;

    const-wide/16 v4, 0x800

    invoke-interface {p1, v2, v4, v5}, Lokio/y;->a(Lokio/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 103
    add-long/2addr v0, v2

    .line 104
    invoke-virtual {p0}, Lokio/s;->r()Lokio/h;

    goto :goto_0

    .line 106
    :cond_1
    return-wide v0
.end method

.method public final a()Lokio/z;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lokio/s;->b:Lokio/x;

    invoke-interface {v0}, Lokio/x;->a()Lokio/z;

    move-result-object v0

    return-object v0
.end method

.method public final a_(Lokio/f;J)V
    .locals 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/f;

    invoke-virtual {v0, p1, p2, p3}, Lokio/f;->a_(Lokio/f;J)V

    .line 46
    invoke-virtual {p0}, Lokio/s;->r()Lokio/h;

    .line 47
    return-void
.end method

.method public final b(Ljava/lang/String;)Lokio/h;
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/f;

    invoke-virtual {v0, p1}, Lokio/f;->a(Ljava/lang/String;)Lokio/f;

    .line 58
    invoke-virtual {p0}, Lokio/s;->r()Lokio/h;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lokio/ByteString;)Lokio/h;
    .locals 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/f;

    invoke-virtual {v0, p1}, Lokio/f;->a(Lokio/ByteString;)Lokio/f;

    .line 52
    invoke-virtual {p0}, Lokio/s;->r()Lokio/h;

    move-result-object v0

    return-object v0
.end method

.method public final b([B)Lokio/h;
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/f;

    invoke-virtual {v0, p1}, Lokio/f;->a([B)Lokio/f;

    .line 90
    invoke-virtual {p0}, Lokio/s;->r()Lokio/h;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lokio/f;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lokio/s;->a:Lokio/f;

    return-object v0
.end method

.method public final c([BII)Lokio/h;
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/f;

    invoke-virtual {v0, p1, p2, p3}, Lokio/f;->b([BII)Lokio/f;

    .line 96
    invoke-virtual {p0}, Lokio/s;->r()Lokio/h;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 6

    .prologue
    .line 227
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    .line 233
    :try_start_0
    iget-object v1, p0, Lokio/s;->a:Lokio/f;

    iget-wide v2, v1, Lokio/f;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 234
    iget-object v1, p0, Lokio/s;->b:Lokio/x;

    iget-object v2, p0, Lokio/s;->a:Lokio/f;

    iget-object v3, p0, Lokio/s;->a:Lokio/f;

    iget-wide v4, v3, Lokio/f;->b:J

    invoke-interface {v1, v2, v4, v5}, Lokio/x;->a_(Lokio/f;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lokio/s;->b:Lokio/x;

    invoke-interface {v1}, Lokio/x;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/s;->c:Z

    .line 247
    if-eqz v0, :cond_0

    invoke-static {v0}, Lokio/B;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 236
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final f(I)Lokio/h;
    .locals 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/f;

    invoke-virtual {v0, p1}, Lokio/f;->d(I)Lokio/f;

    .line 140
    invoke-virtual {p0}, Lokio/s;->r()Lokio/h;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 4

    .prologue
    .line 219
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/f;

    iget-wide v0, v0, Lokio/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 221
    iget-object v0, p0, Lokio/s;->b:Lokio/x;

    iget-object v1, p0, Lokio/s;->a:Lokio/f;

    iget-object v2, p0, Lokio/s;->a:Lokio/f;

    iget-wide v2, v2, Lokio/f;->b:J

    invoke-interface {v0, v1, v2, v3}, Lokio/x;->a_(Lokio/f;J)V

    .line 223
    :cond_1
    iget-object v0, p0, Lokio/s;->b:Lokio/x;

    invoke-interface {v0}, Lokio/x;->flush()V

    .line 224
    return-void
.end method

.method public final g(I)Lokio/h;
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/f;

    invoke-virtual {v0, p1}, Lokio/f;->c(I)Lokio/f;

    .line 128
    invoke-virtual {p0}, Lokio/s;->r()Lokio/h;

    move-result-object v0

    return-object v0
.end method

.method public final h(I)Lokio/h;
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/f;

    invoke-virtual {v0, p1}, Lokio/f;->b(I)Lokio/f;

    .line 122
    invoke-virtual {p0}, Lokio/s;->r()Lokio/h;

    move-result-object v0

    return-object v0
.end method

.method public final h(J)Lokio/h;
    .locals 3

    .prologue
    .line 168
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lokio/s;->a:Lokio/f;

    invoke-virtual {v0, p1, p2}, Lokio/f;->g(J)Lokio/f;

    .line 170
    invoke-virtual {p0}, Lokio/s;->r()Lokio/h;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lokio/h;
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 174
    iget-boolean v0, p0, Lokio/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v4, p0, Lokio/s;->a:Lokio/f;

    .line 1260
    iget-wide v0, v4, Lokio/f;->b:J

    .line 1261
    cmp-long v5, v0, v2

    if-nez v5, :cond_3

    move-wide v0, v2

    .line 176
    :cond_1
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lokio/s;->b:Lokio/x;

    iget-object v3, p0, Lokio/s;->a:Lokio/f;

    invoke-interface {v2, v3, v0, v1}, Lokio/x;->a_(Lokio/f;J)V

    .line 177
    :cond_2
    return-object p0

    .line 1264
    :cond_3
    iget-object v4, v4, Lokio/f;->a:Lokio/v;

    iget-object v4, v4, Lokio/v;->g:Lokio/v;

    .line 1265
    iget v5, v4, Lokio/v;->c:I

    const/16 v6, 0x800

    if-ge v5, v6, :cond_1

    iget-boolean v5, v4, Lokio/v;->e:Z

    if-eqz v5, :cond_1

    .line 1266
    iget v5, v4, Lokio/v;->c:I

    iget v4, v4, Lokio/v;->b:I

    sub-int v4, v5, v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokio/s;->b:Lokio/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
