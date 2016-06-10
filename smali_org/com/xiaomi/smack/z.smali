.class public final Lcom/xiaomi/smack/z;
.super Lcom/xiaomi/smack/l;


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/lang/String;

.field private o:Lcom/xiaomi/smack/s;

.field private p:Lcom/xiaomi/smack/q;

.field private q:Ljava/lang/String;

.field private r:Lcom/xiaomi/push/service/XMPushService;

.field private volatile s:J

.field private volatile t:J

.field private volatile u:J

.field private v:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/n;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/l;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/n;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/z;->b:Ljava/lang/String;

    iput-wide v2, p0, Lcom/xiaomi/smack/z;->s:J

    iput-wide v2, p0, Lcom/xiaomi/smack/z;->t:J

    iput-wide v2, p0, Lcom/xiaomi/smack/z;->u:J

    iput-object p1, p0, Lcom/xiaomi/smack/z;->r:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/smack/z;)Lcom/xiaomi/push/service/XMPushService;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/z;->r:Lcom/xiaomi/push/service/XMPushService;

    return-object v0
.end method

.method private declared-synchronized b(ILjava/lang/Exception;)V
    .locals 2

    const/4 v1, 0x2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/z;->o()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/smack/z;->a(IILjava/lang/Exception;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/z;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/smack/z;->p:Lcom/xiaomi/smack/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smack/z;->p:Lcom/xiaomi/smack/q;

    invoke-virtual {v0}, Lcom/xiaomi/smack/q;->b()V

    iget-object v0, p0, Lcom/xiaomi/smack/z;->p:Lcom/xiaomi/smack/q;

    invoke-virtual {v0}, Lcom/xiaomi/smack/q;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/z;->p:Lcom/xiaomi/smack/q;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;

    invoke-virtual {v0}, Lcom/xiaomi/smack/s;->b()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;

    invoke-virtual {v0}, Lcom/xiaomi/smack/s;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/smack/z;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/xiaomi/smack/z;->i:Ljava/io/Reader;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    :try_start_6
    iget-object v0, p0, Lcom/xiaomi/smack/z;->i:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/xiaomi/smack/z;->i:Ljava/io/Reader;

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/smack/z;->j:Ljava/io/Writer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_4

    :try_start_8
    iget-object v0, p0, Lcom/xiaomi/smack/z;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/xiaomi/smack/z;->j:Ljava/io/Writer;

    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/smack/z;->s:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/smack/z;->t:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private declared-synchronized w()V
    .locals 4

    .prologue
    .line 0
    monitor-enter p0

    .line 5000
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/xiaomi/smack/z;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/xiaomi/smack/z;->i:Ljava/io/Reader;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/xiaomi/smack/z;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/xiaomi/smack/z;->j:Ljava/io/Writer;

    iget-object v0, p0, Lcom/xiaomi/smack/z;->i:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/z;->j:Ljava/io/Writer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/smack/z;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/smack/s;

    invoke-direct {v0, p0}, Lcom/xiaomi/smack/s;-><init>(Lcom/xiaomi/smack/z;)V

    iput-object v0, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;

    new-instance v0, Lcom/xiaomi/smack/q;

    invoke-direct {v0, p0}, Lcom/xiaomi/smack/q;-><init>(Lcom/xiaomi/smack/z;)V

    iput-object v0, p0, Lcom/xiaomi/smack/z;->p:Lcom/xiaomi/smack/q;

    iget-object v0, p0, Lcom/xiaomi/smack/z;->m:Lcom/xiaomi/smack/n;

    invoke-virtual {v0}, Lcom/xiaomi/smack/n;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smack/z;->h:Lcom/xiaomi/smack/a/a;

    invoke-interface {v0}, Lcom/xiaomi/smack/a/a;->c()Lcom/xiaomi/smack/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/smack/z;->a(Lcom/xiaomi/smack/p;Lcom/xiaomi/smack/b/a;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;

    invoke-virtual {v0}, Lcom/xiaomi/smack/s;->c()V

    iget-object v0, p0, Lcom/xiaomi/smack/z;->p:Lcom/xiaomi/smack/q;

    invoke-virtual {v0}, Lcom/xiaomi/smack/q;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 5000
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/xiaomi/smack/w;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/smack/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/z;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/smack/z;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "WARNING: current xmpp has connected"

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1, v3}, Lcom/xiaomi/smack/z;->a(IILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/smack/z;->m:Lcom/xiaomi/smack/n;

    .line 6000
    invoke-virtual {v0}, Lcom/xiaomi/smack/n;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaomi/smack/n;->g()I

    move-result v9

    .line 7000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "get bucket for host : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 8000
    invoke-static {}, Lcom/xiaomi/network/f;->a()Lcom/xiaomi/network/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/network/f;->a(Ljava/lang/String;)Lcom/xiaomi/network/c;

    move-result-object v0

    .line 7000
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/Integer;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/network/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaomi/smack/z;->u:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget v3, p0, Lcom/xiaomi/smack/z;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/xiaomi/smack/z;->d:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "begin to connect to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V

    .line 9000
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 7000
    iput-object v3, p0, Lcom/xiaomi/smack/z;->a:Ljava/net/Socket;

    iget-object v3, p0, Lcom/xiaomi/smack/z;->a:Ljava/net/Socket;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v1, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/xiaomi/smack/z;->a:Ljava/net/Socket;

    const/16 v5, 0x2710

    invoke-virtual {v4, v3, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v3, p0, Lcom/xiaomi/smack/z;->a:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iput-object v1, p0, Lcom/xiaomi/smack/z;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/smack/z;->w()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/xiaomi/smack/w; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    iput-wide v2, p0, Lcom/xiaomi/smack/z;->e:J

    if-eqz v0, :cond_5

    iget-wide v2, p0, Lcom/xiaomi/smack/z;->e:J

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/network/c;->a(Ljava/lang/String;JJ)V

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/smack/z;->u:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connected to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/xiaomi/smack/z;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/xiaomi/smack/w; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {}, Lcom/xiaomi/network/f;->a()Lcom/xiaomi/network/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/network/f;->e()V

    if-nez v8, :cond_1

    new-instance v0, Lcom/xiaomi/smack/w;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/w;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 0
    :catch_0
    move-exception v0

    :try_start_5
    new-instance v1, Lcom/xiaomi/smack/w;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/w;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 7000
    :catch_1
    move-exception v6

    move v7, v2

    :goto_2
    if-eqz v0, :cond_6

    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/network/c;->a(Ljava/lang/String;JJLjava/lang/Exception;)V

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SMACK: Could not connect to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/a/b;->c(Ljava/lang/String;)V

    const-string v2, "SMACK: Could not connect to "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v7

    goto/16 :goto_0

    :catch_2
    move-exception v6

    move v7, v2

    :goto_3
    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/network/c;->a(Ljava/lang/String;JJLjava/lang/Exception;)V

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SMACK: Could not connect to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/a/b;->c(Ljava/lang/String;)V

    const-string v2, "SMACK: Could not connect to "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/xiaomi/smack/w;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v7

    goto/16 :goto_0

    :catch_3
    move-exception v1

    :goto_4
    invoke-static {v1}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_4
    move-exception v1

    move v2, v8

    goto :goto_4

    :catch_5
    move-exception v6

    move v7, v8

    goto :goto_3

    :catch_6
    move-exception v6

    move v7, v8

    goto/16 :goto_2

    :cond_8
    move v8, v2

    goto/16 :goto_1
.end method

.method public final a(ILjava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smack/z;->r:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/smack/B;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/xiaomi/smack/B;-><init>(Lcom/xiaomi/smack/z;IILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/e;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/xiaomi/push/service/R;)V
    .locals 2

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/smack/u;

    invoke-direct {v0}, Lcom/xiaomi/smack/u;-><init>()V

    .line 1000
    iget-object v1, p0, Lcom/xiaomi/smack/z;->k:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, p1, v1, p0}, Lcom/xiaomi/smack/u;->a(Lcom/xiaomi/push/service/R;Ljava/lang/String;Lcom/xiaomi/smack/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/xiaomi/smack/packet/e;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/s;->a(Lcom/xiaomi/smack/packet/e;)V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/smack/w;

    const-string v1, "the writer is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/w;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/xiaomi/smack/packet/f;ILjava/lang/Exception;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    .line 0
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/smack/z;->b(ILjava/lang/Exception;)V

    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcom/xiaomi/smack/z;->u:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/xiaomi/smack/z;->u:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smack/z;->r:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/a/a/c/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaomi/smack/z;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/smack/z;->v:I

    iget v0, p0, Lcom/xiaomi/smack/z;->v:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 3000
    iget-object v1, p0, Lcom/xiaomi/smack/z;->q:Ljava/lang/String;

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "max short conn time reached, sink down current host:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V

    .line 4000
    invoke-static {}, Lcom/xiaomi/smack/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/network/f;->a()Lcom/xiaomi/network/f;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/network/f;->a(Ljava/lang/String;)Lcom/xiaomi/network/c;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v4, v2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/network/c;->a(Ljava/lang/String;JJLjava/lang/Exception;)V

    invoke-static {}, Lcom/xiaomi/network/f;->a()Lcom/xiaomi/network/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/network/f;->e()V

    .line 2000
    :cond_0
    iput v7, p0, Lcom/xiaomi/smack/z;->v:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v7, p0, Lcom/xiaomi/smack/z;->v:I

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/smack/packet/f;

    sget-object v1, Lcom/xiaomi/smack/packet/f$b;->b:Lcom/xiaomi/smack/packet/f$b;

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/f;-><init>(Lcom/xiaomi/smack/packet/f$b;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/packet/f;->l(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/smack/packet/f;->n(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;

    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/s;->a(Lcom/xiaomi/smack/packet/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([Lcom/xiaomi/smack/packet/e;)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/xiaomi/smack/z;->a(Lcom/xiaomi/smack/packet/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/z;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/z;->o:Lcom/xiaomi/smack/s;

    invoke-virtual {v0}, Lcom/xiaomi/smack/s;->d()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/smack/z;->r:Lcom/xiaomi/push/service/XMPushService;

    new-instance v3, Lcom/xiaomi/smack/A;

    const/16 v4, 0xd

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/xiaomi/smack/A;-><init>(Lcom/xiaomi/smack/z;IJ)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/e;J)V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/smack/w;

    const-string v1, "the packetwriter is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/w;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/z;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v0, p0, Lcom/xiaomi/smack/z;->t:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/smack/z;->s:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/smack/z;->b:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "<pf><p>t:%1$d</p></pf>"

    new-array v1, v7, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/xiaomi/smack/z;->t:J

    iget-wide v4, p0, Lcom/xiaomi/smack/z;->s:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final u()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/z;->s:J

    return-void
.end method

.method public final v()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/z;->t:J

    return-void
.end method
