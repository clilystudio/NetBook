.class public final Lcom/squareup/okhttp/internal/http/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/n;

.field private final b:Lcom/squareup/okhttp/m;

.field private final c:Ljava/net/Socket;

.field private final d:Lokio/i;

.field private final e:Lokio/h;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/n;Lcom/squareup/okhttp/m;Ljava/net/Socket;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    .line 83
    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->g:I

    .line 87
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/n;

    .line 88
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lcom/squareup/okhttp/m;

    .line 89
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/d;->c:Ljava/net/Socket;

    .line 90
    invoke-static {p3}, Lokio/o;->b(Ljava/net/Socket;)Lokio/y;

    move-result-object v0

    invoke-static {v0}, Lokio/o;->a(Lokio/y;)Lokio/i;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lokio/i;

    .line 91
    invoke-static {p3}, Lokio/o;->a(Ljava/net/Socket;)Lokio/x;

    move-result-object v0

    invoke-static {v0}, Lokio/o;->a(Lokio/x;)Lokio/h;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:Lokio/h;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/d;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    return p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/d;)Lokio/h;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:Lokio/h;

    return-object v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/d;Lokio/l;)V
    .locals 2

    .prologue
    .line 63
    .line 1275
    invoke-virtual {p1}, Lokio/l;->a()Lokio/z;

    move-result-object v0

    .line 1276
    sget-object v1, Lokio/z;->a:Lokio/z;

    invoke-virtual {p1, v1}, Lokio/l;->a(Lokio/z;)Lokio/l;

    .line 1277
    invoke-virtual {v0}, Lokio/z;->f()Lokio/z;

    .line 1278
    invoke-virtual {v0}, Lokio/z;->f_()Lokio/z;

    .line 63
    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/http/d;I)I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->g:I

    return v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/http/d;)Lokio/i;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lokio/i;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/http/d;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    return v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/http/d;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->g:I

    return v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/n;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/n;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/m;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lcom/squareup/okhttp/m;

    return-object v0
.end method


# virtual methods
.method public final a(J)Lokio/x;
    .locals 3

    .prologue
    .line 232
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    .line 234
    new-instance v0, Lcom/squareup/okhttp/internal/http/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/okhttp/internal/http/h;-><init>(Lcom/squareup/okhttp/internal/http/d;JB)V

    return-object v0
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/m;)Lokio/y;
    .locals 3

    .prologue
    .line 250
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    .line 252
    new-instance v0, Lcom/squareup/okhttp/internal/http/g;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/http/g;-><init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/m;)V

    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->g:I

    .line 111
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->g:I

    .line 113
    sget-object v0, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/n;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lcom/squareup/okhttp/m;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/n;Lcom/squareup/okhttp/m;)V

    .line 115
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 4

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lokio/i;

    invoke-interface {v0}, Lokio/i;->a()Lokio/z;

    move-result-object v0

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/z;->a(JLjava/util/concurrent/TimeUnit;)Lokio/z;

    .line 98
    :cond_0
    if-eqz p2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:Lokio/h;

    invoke-interface {v0}, Lokio/h;->a()Lokio/z;

    move-result-object v0

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/z;->a(JLjava/util/concurrent/TimeUnit;)Lokio/z;

    .line 101
    :cond_1
    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/u;)V
    .locals 3

    .prologue
    .line 238
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:Lokio/h;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/u;->a(Lokio/x;)V

    .line 241
    return-void
.end method

.method public final a(Lcom/squareup/okhttp/u;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 171
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:Lokio/h;

    invoke-interface {v0, p2}, Lokio/h;->b(Ljava/lang/String;)Lokio/h;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/h;->b(Ljava/lang/String;)Lokio/h;

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/squareup/okhttp/u;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/d;->e:Lokio/h;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/u;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/h;->b(Ljava/lang/String;)Lokio/h;

    move-result-object v2

    const-string v3, ": "

    .line 175
    invoke-interface {v2, v3}, Lokio/h;->b(Ljava/lang/String;)Lokio/h;

    move-result-object v2

    .line 176
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/u;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/h;->b(Ljava/lang/String;)Lokio/h;

    move-result-object v2

    const-string v3, "\r\n"

    .line 177
    invoke-interface {v2, v3}, Lokio/h;->b(Ljava/lang/String;)Lokio/h;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:Lokio/h;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/h;->b(Ljava/lang/String;)Lokio/h;

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    .line 181
    return-void
.end method

.method public final a(Lcom/squareup/okhttp/v;)V
    .locals 2

    .prologue
    .line 220
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lokio/i;

    invoke-interface {v0}, Lokio/i;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    invoke-virtual {v1, p1, v0}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/v;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public final b(J)Lokio/y;
    .locals 3

    .prologue
    .line 244
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    .line 246
    new-instance v0, Lcom/squareup/okhttp/internal/http/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/http/i;-><init>(Lcom/squareup/okhttp/internal/http/d;J)V

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->g:I

    .line 125
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    .line 127
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lcom/squareup/okhttp/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->c()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 129
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:Lokio/h;

    invoke-interface {v0}, Lokio/h;->flush()V

    .line 142
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lokio/i;

    invoke-interface {v0}, Lokio/i;->c()Lokio/f;

    move-result-object v0

    invoke-virtual {v0}, Lokio/f;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/d;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 154
    :try_start_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/d;->c:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 155
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lokio/i;

    invoke-interface {v2}, Lokio/i;->d()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    :try_start_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/d;->c:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 165
    :goto_0
    return v0

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/d;->c:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/d;->c:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 165
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final g()Lcom/squareup/okhttp/J;
    .locals 5

    .prologue
    .line 185
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lokio/i;

    invoke-interface {v0}, Lokio/i;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/z;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/z;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/squareup/okhttp/J;

    invoke-direct {v1}, Lcom/squareup/okhttp/J;-><init>()V

    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/z;->a:Lcom/squareup/okhttp/Protocol;

    .line 194
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/J;

    move-result-object v1

    iget v2, v0, Lcom/squareup/okhttp/internal/http/z;->b:I

    .line 195
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->a(I)Lcom/squareup/okhttp/J;

    move-result-object v1

    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/z;->c:Ljava/lang/String;

    .line 196
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->a(Ljava/lang/String;)Lcom/squareup/okhttp/J;

    move-result-object v1

    .line 198
    new-instance v2, Lcom/squareup/okhttp/v;

    invoke-direct {v2}, Lcom/squareup/okhttp/v;-><init>()V

    .line 199
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/v;)V

    .line 200
    sget-object v3, Lcom/squareup/okhttp/internal/http/r;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/okhttp/internal/http/z;->a:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    .line 201
    invoke-virtual {v2}, Lcom/squareup/okhttp/v;->a()Lcom/squareup/okhttp/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/u;)Lcom/squareup/okhttp/J;

    .line 203
    iget v0, v0, Lcom/squareup/okhttp/internal/http/z;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    .line 204
    const/4 v0, 0x4

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected end of stream on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lcom/squareup/okhttp/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (recycle count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lcom/squareup/okhttp/m;

    .line 211
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/b;->b(Lcom/squareup/okhttp/m;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 213
    throw v1
.end method

.method public final h()Lokio/x;
    .locals 3

    .prologue
    .line 226
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    .line 228
    new-instance v0, Lcom/squareup/okhttp/internal/http/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/f;-><init>(Lcom/squareup/okhttp/internal/http/d;B)V

    return-object v0
.end method

.method public final i()Lokio/y;
    .locals 3

    .prologue
    .line 256
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->f:I

    .line 258
    new-instance v0, Lcom/squareup/okhttp/internal/http/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/j;-><init>(Lcom/squareup/okhttp/internal/http/d;B)V

    return-object v0
.end method
