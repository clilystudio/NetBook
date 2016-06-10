.class public Lcom/koushikdutta/async/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/s;


# static fields
.field private static synthetic n:Z


# instance fields
.field a:Lcom/koushikdutta/async/a/d;

.field private b:Lcom/koushikdutta/async/x;

.field private c:Ljava/nio/channels/SelectionKey;

.field private d:Lcom/koushikdutta/async/AsyncServer;

.field private e:Lcom/koushikdutta/async/v;

.field private f:Lcom/koushikdutta/async/d/a;

.field private g:Z

.field private h:Lcom/koushikdutta/async/a/b;

.field private i:Lcom/koushikdutta/async/a/a;

.field private j:Z

.field private k:Ljava/lang/Exception;

.field private l:Lcom/koushikdutta/async/a/a;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/koushikdutta/async/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/d;->n:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/koushikdutta/async/v;

    invoke-direct {v0}, Lcom/koushikdutta/async/v;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/d;->e:Lcom/koushikdutta/async/v;

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/d;->m:Z

    .line 19
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 95
    if-lez p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/d;->c:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/d;->c:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/koushikdutta/async/d;->g:Z

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/d;->g:Z

    .line 200
    iget-object v0, p0, Lcom/koushikdutta/async/d;->i:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/koushikdutta/async/d;->i:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/d;->i:Lcom/koushikdutta/async/a/a;

    goto :goto_0
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/koushikdutta/async/d;->e:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iput-object p1, p0, Lcom/koushikdutta/async/d;->k:Ljava/lang/Exception;

    .line 3259
    :cond_0
    :goto_0
    return-void

    .line 3255
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/d;->j:Z

    if-nez v0, :cond_0

    .line 3257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/d;->j:Z

    .line 3258
    iget-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_2

    .line 3259
    iget-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 3260
    :cond_2
    if-eqz p1, :cond_0

    .line 3261
    const-string v0, "NIO"

    const-string v1, "Unhandled exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/koushikdutta/async/d;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/d;->b:Lcom/koushikdutta/async/x;

    invoke-virtual {v0}, Lcom/koushikdutta/async/x;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/koushikdutta/async/d;->e:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/koushikdutta/async/d;->e:Lcom/koushikdutta/async/v;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Y;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    .line 318
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/koushikdutta/async/d;->b:Lcom/koushikdutta/async/x;

    invoke-virtual {v0}, Lcom/koushikdutta/async/x;->a()V

    .line 24
    return-void
.end method

.method final a(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/koushikdutta/async/d;->d:Lcom/koushikdutta/async/AsyncServer;

    .line 60
    iput-object p2, p0, Lcom/koushikdutta/async/d;->c:Ljava/nio/channels/SelectionKey;

    .line 61
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/koushikdutta/async/d;->i:Lcom/koushikdutta/async/a/a;

    .line 242
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/a/b;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/koushikdutta/async/d;->h:Lcom/koushikdutta/async/a/b;

    .line 231
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/a/d;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/koushikdutta/async/d;->a:Lcom/koushikdutta/async/a/d;

    .line 225
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/v;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/koushikdutta/async/d;->d:Lcom/koushikdutta/async/AsyncServer;

    .line 1829
    iget-object v0, v0, Lcom/koushikdutta/async/AsyncServer;->a:Ljava/lang/Thread;

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/d;->d:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/e;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/e;-><init>(Lcom/koushikdutta/async/d;Lcom/koushikdutta/async/v;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/d;->b:Lcom/koushikdutta/async/x;

    invoke-virtual {v0}, Lcom/koushikdutta/async/x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->c()I

    .line 81
    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->a()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/d;->b:Lcom/koushikdutta/async/x;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/x;->a([Ljava/nio/ByteBuffer;)I

    .line 2045
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 2046
    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/v;->a(Ljava/nio/ByteBuffer;)V

    .line 2045
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d;->a(I)V

    .line 85
    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->c()I

    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-direct {p0}, Lcom/koushikdutta/async/d;->k()V

    .line 89
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d;->b(Ljava/lang/Exception;)V

    .line 90
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/d;->d:Lcom/koushikdutta/async/AsyncServer;

    .line 2829
    iget-object v0, v0, Lcom/koushikdutta/async/AsyncServer;->a:Ljava/lang/Thread;

    .line 108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/koushikdutta/async/d;->d:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/f;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/f;-><init>(Lcom/koushikdutta/async/d;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/d;->b:Lcom/koushikdutta/async/x;

    invoke-virtual {v0}, Lcom/koushikdutta/async/x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/d;->b:Lcom/koushikdutta/async/x;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/x;->a(Ljava/nio/ByteBuffer;)I

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d;->a(I)V

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-direct {p0}, Lcom/koushikdutta/async/d;->k()V

    .line 132
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d;->b(Ljava/lang/Exception;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/koushikdutta/async/d/a;

    invoke-direct {v0}, Lcom/koushikdutta/async/d/a;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/d;->f:Lcom/koushikdutta/async/d/a;

    .line 34
    new-instance v0, Lcom/koushikdutta/async/X;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/X;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object v0, p0, Lcom/koushikdutta/async/d;->b:Lcom/koushikdutta/async/x;

    .line 35
    return-void
.end method

.method final b()I
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0}, Lcom/koushikdutta/async/d;->l()V

    .line 146
    iget-boolean v1, p0, Lcom/koushikdutta/async/d;->m:Z

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/d;->f:Lcom/koushikdutta/async/d/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/d/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 157
    iget-object v1, p0, Lcom/koushikdutta/async/d;->b:Lcom/koushikdutta/async/x;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/x;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v4, v1

    .line 158
    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/koushikdutta/async/d;->k()V

    .line 160
    const/4 v1, 0x1

    .line 165
    :goto_1
    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    .line 166
    iget-object v3, p0, Lcom/koushikdutta/async/d;->f:Lcom/koushikdutta/async/d/a;

    invoke-virtual {v3, v4, v5}, Lcom/koushikdutta/async/d/a;->a(J)V

    .line 167
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 174
    iget-object v3, p0, Lcom/koushikdutta/async/d;->e:Lcom/koushikdutta/async/v;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/v;->a(Ljava/nio/ByteBuffer;)V

    .line 175
    iget-object v2, p0, Lcom/koushikdutta/async/d;->e:Lcom/koushikdutta/async/v;

    invoke-static {p0, v2}, Lcom/koushikdutta/async/Y;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    .line 181
    :goto_2
    if-eqz v1, :cond_0

    .line 182
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/d;->b(Ljava/lang/Exception;)V

    .line 183
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/d;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    invoke-direct {p0}, Lcom/koushikdutta/async/d;->k()V

    .line 188
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/d;->b(Ljava/lang/Exception;)V

    .line 189
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 163
    :cond_2
    add-long v6, v4, v8

    long-to-int v1, v6

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_1

    .line 178
    :cond_3
    :try_start_1
    invoke-static {v2}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final b(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/a/a;

    .line 278
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/koushikdutta/async/d;->k()V

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d;->a(Ljava/lang/Exception;)V

    .line 210
    return-void
.end method

.method public final d()Lcom/koushikdutta/async/a/b;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/koushikdutta/async/d;->h:Lcom/koushikdutta/async/a/b;

    return-object v0
.end method

.method public final e()Lcom/koushikdutta/async/a/d;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/koushikdutta/async/d;->a:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/koushikdutta/async/d;->d:Lcom/koushikdutta/async/AsyncServer;

    .line 3829
    iget-object v0, v0, Lcom/koushikdutta/async/AsyncServer;->a:Ljava/lang/Thread;

    .line 293
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/koushikdutta/async/d;->d:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/g;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/g;-><init>(Lcom/koushikdutta/async/d;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/d;->m:Z

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/d;->m:Z

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/d;->c:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/koushikdutta/async/d;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-object v1, p0, Lcom/koushikdutta/async/d;->d:Lcom/koushikdutta/async/AsyncServer;

    .line 4829
    iget-object v1, v1, Lcom/koushikdutta/async/AsyncServer;->a:Ljava/lang/Thread;

    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 323
    iget-object v0, p0, Lcom/koushikdutta/async/d;->d:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/h;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/h;-><init>(Lcom/koushikdutta/async/d;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-boolean v1, p0, Lcom/koushikdutta/async/d;->m:Z

    if-eqz v1, :cond_0

    .line 334
    iput-boolean v0, p0, Lcom/koushikdutta/async/d;->m:Z

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/d;->c:Ljava/nio/channels/SelectionKey;

    iget-object v2, p0, Lcom/koushikdutta/async/d;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_1
    invoke-direct {p0}, Lcom/koushikdutta/async/d;->l()V

    .line 5287
    iget-object v1, p0, Lcom/koushikdutta/async/d;->b:Lcom/koushikdutta/async/x;

    invoke-virtual {v1}, Lcom/koushikdutta/async/x;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/koushikdutta/async/d;->c:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 341
    :cond_2
    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/koushikdutta/async/d;->k:Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/koushikdutta/async/d;->m:Z

    return v0
.end method

.method public final i()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/koushikdutta/async/d;->d:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method
