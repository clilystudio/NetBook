.class public final Lcom/a/a/d;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:J

.field private static b:J


# instance fields
.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/locks/Lock;

.field private final e:Ljava/util/concurrent/locks/Condition;

.field private f:Z

.field private g:Lorg/apache/http/client/HttpClient;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/concurrent/atomic/AtomicLong;

.field private m:J

.field private n:Z

.field private o:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/a/a/d;->a:J

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    const-string v0, "BfdHandlerThread"

    invoke-direct {p0, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->d:Ljava/util/concurrent/locks/Lock;

    .line 98
    iget-object v0, p0, Lcom/a/a/d;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->e:Ljava/util/concurrent/locks/Condition;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/d;->f:Z

    .line 101
    iput-object v1, p0, Lcom/a/a/d;->g:Lorg/apache/http/client/HttpClient;

    .line 107
    iput-object v1, p0, Lcom/a/a/d;->k:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/a/a/d;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/a/a/d;->m:J

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d;->n:Z

    .line 111
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->o:Lorg/json/JSONArray;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1377
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)J
    .locals 4

    .prologue
    .line 1625
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/a/a/d;->b:J

    .line 1626
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 1627
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1636
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_1
    return-wide v0

    .line 1628
    :cond_0
    aget-object v2, v1, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Date"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1629
    aget-object v0, v1, v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1630
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1631
    invoke-static {v0}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v0

    .line 1632
    const-string v2, "ResponseTime..."

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1627
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a()Lcom/a/a/d;
    .locals 2

    .prologue
    .line 115
    new-instance v1, Lcom/a/a/d;

    invoke-direct {v1}, Lcom/a/a/d;-><init>()V

    .line 116
    invoke-virtual {v1}, Lcom/a/a/d;->start()V

    .line 2141
    iget-object v0, v1, Lcom/a/a/d;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2143
    :goto_0
    :try_start_0
    iget-boolean v0, v1, Lcom/a/a/d;->f:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, v1, Lcom/a/a/d;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 118
    :goto_1
    return-object v1

    .line 2144
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/a/a/d;->e:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2147
    iget-object v0, v1, Lcom/a/a/d;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 2146
    :catchall_0
    move-exception v0

    .line 2147
    iget-object v1, v1, Lcom/a/a/d;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2148
    throw v0
.end method

.method static synthetic a(Lcom/a/a/d;Landroid/content/Context;Lorg/apache/http/client/methods/HttpPost;[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0, p2, p3}, Lcom/a/a/d;->a(Lorg/apache/http/client/methods/HttpPost;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2172
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 2173
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 2174
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/a/a/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpPost;[B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 251
    .line 256
    if-eqz p2, :cond_5

    .line 257
    :try_start_0
    const-string v0, "jleboroolRlxFnqqgoxlpavvhszxaxnm"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 258
    const-string v2, "ikiquu2zifm4yzatarvyijh@qkqussrz"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 2185
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 2186
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 2187
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 2188
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 2189
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/d;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 263
    :goto_0
    iget-object v2, p0, Lcom/a/a/d;->g:Lorg/apache/http/client/HttpClient;

    if-nez v2, :cond_0

    .line 264
    invoke-static {}, Lcom/a/a/d;->d()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/d;->g:Lorg/apache/http/client/HttpClient;

    .line 266
    :cond_0
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v2, "Authorization"

    invoke-virtual {p1, v2, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/a/a/d;->g:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://m.api.baifendian.com/onlineconfig"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    invoke-static {v0}, Lcom/a/a/d;->a(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    sput-wide v2, Lcom/a/a/d;->a:J

    .line 274
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 276
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    :goto_1
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 279
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v4

    .line 280
    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 284
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 293
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 294
    :goto_2
    :try_start_5
    const-string v4, "BfdAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v4, "BfdAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Lcom/a/a/d;->d()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/d;->g:Lorg/apache/http/client/HttpClient;

    .line 297
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/q;->e()I

    move-result v1

    if-eq v1, v7, :cond_2

    .line 298
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/a/a/q;->b(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 304
    :cond_2
    if-eqz v3, :cond_3

    .line 306
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 311
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 313
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 320
    :cond_4
    :goto_4
    return-object v0

    .line 261
    :cond_5
    :try_start_8
    const-string v0, "jleboroolRlxFnqqgoxlpavvhszxaxnm"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v2, "ikiquu2zifm4yzatarvyijh@qkqussrz"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a/d;->a([B[B)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    .line 289
    :cond_6
    :try_start_9
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 290
    :try_start_a
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/q;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 291
    const-string v1, "BfdAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 304
    :cond_7
    if-eqz v3, :cond_8

    .line 306
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 313
    :cond_8
    :goto_5
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .line 314
    :catch_2
    move-exception v1

    .line 315
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 307
    :catch_3
    move-exception v1

    .line 308
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 314
    :catch_4
    move-exception v1

    .line 315
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 300
    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 301
    :goto_6
    :try_start_d
    const-string v4, "BfdAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v4, "BfdAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 304
    if-eqz v3, :cond_9

    .line 306
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 311
    :cond_9
    :goto_7
    if-eqz v2, :cond_4

    .line 313
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_4

    .line 314
    :catch_6
    move-exception v1

    .line 315
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 307
    :catch_7
    move-exception v1

    .line 308
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 303
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 304
    :goto_8
    if-eqz v3, :cond_a

    .line 306
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 311
    :cond_a
    :goto_9
    if-eqz v2, :cond_b

    .line 313
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 318
    :cond_b
    :goto_a
    throw v0

    .line 307
    :catch_8
    move-exception v1

    .line 308
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 314
    :catch_9
    move-exception v1

    .line 315
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 307
    :catch_a
    move-exception v1

    .line 308
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 303
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 300
    :catch_b
    move-exception v0

    move-object v2, v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_6

    :catch_d
    move-exception v1

    goto :goto_6

    .line 293
    :catch_e
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_2

    :catch_f
    move-exception v0

    move-object v2, v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_2

    :catch_10
    move-exception v1

    goto/16 :goto_2
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    const-string v0, ""

    .line 164
    :goto_0
    return-object v0

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    array-length v2, p0

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    aget-byte v3, p0, v0

    .line 163
    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a([B[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 180
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 181
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/d;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/a/a/d;->o:Lorg/json/JSONArray;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 371
    const-string v0, "timestamp"

    const-string v1, "%.3f"

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/a/a/d;->e()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v0, "sid"

    iget-object v1, p0, Lcom/a/a/d;->j:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    iget-object v0, p0, Lcom/a/a/d;->o:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/q;->g()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 374
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/a/a/d;->o:Lorg/json/JSONArray;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/a/a/d;->o:Lorg/json/JSONArray;

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2211
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2210
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2212
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2213
    if-eqz v0, :cond_1

    .line 2214
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 2215
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/a/a/q;->b(I)V

    .line 380
    :cond_1
    :goto_0
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/q;->e()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 382
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/p;

    invoke-direct {v1, p0, p1}, Lcom/a/a/p;-><init>(Lcom/a/a/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    :cond_2
    return-void

    .line 2218
    :cond_3
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/q;->d()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/d;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 323
    .line 2327
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bfd_cached_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2328
    const/4 v1, 0x0

    .line 2326
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 2329
    iget-object v1, p0, Lcom/a/a/d;->o:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2330
    iget-object v1, p0, Lcom/a/a/d;->o:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2332
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2333
    :goto_0
    return-void

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2333
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/d;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Lcom/a/a/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/d;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/a/a/d;->o:Lorg/json/JSONArray;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 561
    if-eqz p1, :cond_0

    .line 563
    const-string v1, "bfd"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 564
    const-string v1, "bfd_gid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 565
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 568
    :cond_0
    return v0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 1557
    invoke-static {}, Lcom/a/a/d;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/a/a/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/d;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 578
    .line 2582
    if-eqz p1, :cond_c

    .line 2586
    iget-boolean v0, p0, Lcom/a/a/d;->n:Z

    if-eqz v0, :cond_c

    .line 3567
    const-string v0, "connectivity"

    .line 3566
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3568
    if-eqz v0, :cond_0

    .line 3573
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3574
    if-eqz v3, :cond_0

    move v0, v1

    .line 3576
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_d

    :cond_0
    move v0, v1

    .line 2591
    :goto_1
    if-eqz v0, :cond_f

    .line 2593
    sget-wide v4, Lcom/a/a/d;->a:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 2594
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/a/a/d;->a:J

    .line 2602
    :cond_1
    :goto_2
    iput-boolean v1, p0, Lcom/a/a/d;->n:Z

    .line 2603
    invoke-static {p1}, Lcom/a/a/d;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    .line 2607
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2608
    if-eqz v0, :cond_4

    .line 2610
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2611
    const/16 v4, 0x80

    .line 2610
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2612
    if-eqz v0, :cond_4

    .line 2613
    iget-object v3, p0, Lcom/a/a/d;->k:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 2614
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/a/a/d;->k:Ljava/lang/String;

    .line 2615
    :cond_2
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    .line 2616
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "BFD_APPKEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/a/a/d;->h:Ljava/lang/String;

    .line 2617
    iget-object v3, p0, Lcom/a/a/d;->h:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 2618
    const-string v3, ""

    iput-object v3, p0, Lcom/a/a/d;->h:Ljava/lang/String;

    .line 2623
    :cond_3
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2624
    const-string v4, "BFD_SESSION_TIMEOUT_MILLIS"

    const v5, 0x1b7740

    .line 2623
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2625
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v4

    .line 2626
    invoke-virtual {v4, v3}, Lcom/a/a/q;->a(I)V

    .line 2627
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2628
    const-string v4, "BFD_REPORT_INTERVAL_MILLIS"

    const/16 v5, 0x7530

    .line 2627
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2629
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v4

    .line 2630
    invoke-virtual {v4, v3}, Lcom/a/a/q;->c(I)V

    .line 2631
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2632
    const-string v3, "BFD_REPORT_POLICY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2633
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/a/a/q;->a(Ljava/lang/String;)V

    .line 2644
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2648
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2647
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2649
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2650
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    .line 2652
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 2654
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    .line 2655
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 2657
    invoke-static {p1}, Lcom/a/a/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    .line 2658
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 2660
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    .line 2661
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    .line 2662
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 5532
    :cond_5
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5533
    const-string v4, "appkey"

    iget-object v5, p0, Lcom/a/a/d;->h:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5534
    const-string v4, "gid"

    iget-object v5, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5535
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 5537
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    .line 5538
    const-string v5, "http://m.api.baifendian.com/onlineconfig"

    .line 5537
    invoke-direct {v0, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 5539
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 5540
    invoke-direct {p0, v0, v4}, Lcom/a/a/d;->a(Lorg/apache/http/client/methods/HttpPost;[B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4545
    if-eqz v0, :cond_8

    .line 4547
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6493
    :try_start_2
    const-string v0, "session_timeout_millis"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 6494
    if-eqz v0, :cond_6

    .line 6497
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6498
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/a/a/q;->a(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6504
    :cond_6
    :goto_4
    :try_start_4
    const-string v0, "report_policy"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6505
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/a/a/q;->a(Ljava/lang/String;)V

    .line 6507
    const-string v0, "report_interval_millis"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    .line 6508
    if-eqz v0, :cond_7

    .line 6511
    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6512
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/a/a/q;->c(I)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 6518
    :cond_7
    :goto_5
    :try_start_6
    const-string v0, "cached_request_limit"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    .line 6519
    if-eqz v0, :cond_8

    .line 6521
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6522
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/a/a/q;->d(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2693
    :cond_8
    :goto_6
    :try_start_8
    invoke-direct {p0, p1}, Lcom/a/a/d;->d(Landroid/content/Context;)V

    .line 2694
    invoke-direct {p0, p1}, Lcom/a/a/d;->e(Landroid/content/Context;)V

    .line 2700
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_9

    .line 2702
    const-string v4, "MMS user agent profile URL"

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMmsUAProfUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2703
    const-string v4, "MMS user agent"

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMmsUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2713
    :cond_9
    const-string v4, "IMEI-MEID-ESN"

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    const-string v4, "IMSI"

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2715
    const-string v4, "MSISDN"

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2716
    const-string v4, "Roaming"

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    const-string v4, "software version number for the device"

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2718
    const-string v4, "MCC (Mobile Country Code)"

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2719
    const-string v4, "MCC+MNC"

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2725
    const/4 v4, 0x5

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v4, v0, :cond_a

    .line 2727
    const-string v4, "MCC+MNC (mobile country code + mobile network code) of the provider of the SIM"

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2728
    const-string v4, "Service Provider Name (SPN)"

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2731
    :cond_a
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2744
    :goto_7
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x4

    if-lt v0, v4, :cond_b

    .line 2746
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v8, v0, :cond_b

    .line 2748
    const-string v0, "PhoneType"

    const-string v4, "PHONE_TYPE_CDMA: Phone radio is CDMA"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    :cond_b
    const-string v0, "rooted"

    invoke-static {}, Lcom/a/a/d;->f()Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    const-string v0, "silence"

    invoke-virtual {p0, p1, v0, v3}, Lcom/a/a/d;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2760
    :goto_9
    :try_start_9
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/q;->e()I

    move-result v0

    if-ne v0, v8, :cond_14

    .line 2762
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/p;

    invoke-direct {v1, p0, p1}, Lcom/a/a/p;-><init>(Lcom/a/a/d;Landroid/content/Context;)V

    .line 2763
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/q;->f()I

    move-result v2

    int-to-long v2, v2

    .line 2762
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_0

    .line 2767
    :cond_c
    :goto_a
    return-void

    .line 3578
    :cond_d
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_e

    move v0, v2

    .line 3580
    goto/16 :goto_1

    .line 3576
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2599
    :cond_f
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/a/a/d;->a:J

    .line 2600
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/a/a/d;->b:J

    goto/16 :goto_2

    .line 2667
    :cond_10
    :try_start_a
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_3

    .line 2767
    :catch_0
    move-exception v0

    .line 2769
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_a

    .line 2672
    :cond_11
    :try_start_b
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    .line 2673
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    const-string v4, "000000000000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2675
    invoke-static {p1}, Lcom/a/a/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    .line 2676
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 2678
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    .line 2679
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    .line 2680
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 2685
    :cond_12
    const-string v0, "MAC"

    iget-object v4, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_3

    .line 2734
    :pswitch_1
    :try_start_c
    const-string v0, "PhoneType"

    const-string v4, "PHONE_TYPE_NONE: No phone radio"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_9

    .line 2737
    :pswitch_2
    const-string v0, "PhoneType"

    const-string v4, "PHONE_TYPE_GSM: Phone radio is GSM"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 2740
    :pswitch_3
    const-string v0, "PhoneType"

    const-string v4, "PHONE_TYPE_SIP: Phone is via SIP"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_7

    :cond_13
    move v1, v2

    .line 2754
    goto/16 :goto_8

    .line 2765
    :cond_14
    :try_start_d
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/p;

    invoke-direct {v1, p0, p1}, Lcom/a/a/p;-><init>(Lcom/a/a/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :catch_4
    move-exception v0

    goto/16 :goto_6

    :catch_5
    move-exception v0

    goto/16 :goto_5

    :catch_6
    move-exception v0

    goto/16 :goto_4

    .line 2731
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/a/a/d;->e()J

    move-result-wide v2

    .line 197
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 200
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/a/a/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/a/a/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 340
    const/4 v1, 0x0

    .line 344
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bfd_cached_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 346
    new-instance v2, Ljava/io/BufferedReader;

    .line 347
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 346
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 353
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 356
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 366
    :goto_1
    return-object v0

    .line 351
    :cond_0
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 359
    :catch_1
    move-exception v0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 362
    :catch_2
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/a/a/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/a/a/d;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic d(Lcom/a/a/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/a/a/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static d()Lorg/apache/http/client/HttpClient;
    .locals 2

    .prologue
    const/16 v1, 0x2710

    .line 243
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 244
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 245
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 246
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 247
    return-object v1
.end method

.method private d(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 387
    invoke-static {}, Lcom/a/a/d;->e()J

    move-result-wide v0

    .line 388
    iget-wide v2, p0, Lcom/a/a/d;->m:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/a/a/d;->m:J

    sub-long v2, v0, v2

    .line 389
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/q;->c()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 431
    :goto_0
    return-void

    .line 392
    :cond_0
    iput-wide v0, p0, Lcom/a/a/d;->m:J

    .line 394
    invoke-static {}, Lcom/a/a/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d;->j:Ljava/lang/String;

    .line 395
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 396
    const-string v0, "method"

    const-string v2, "MSession"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 401
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_1

    .line 404
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 405
    const-string v2, "appversion"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_2

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 414
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 417
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "BFD_CHANNEL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_2

    .line 419
    const-string v2, "channel"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2225
    :cond_2
    :goto_2
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2224
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2226
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2227
    if-eqz v0, :cond_5

    .line 2228
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2229
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v0

    .line 2230
    const/4 v2, 0x3

    .line 2229
    invoke-virtual {v0, v2}, Lcom/a/a/q;->b(I)V

    .line 2231
    const-string v0, "wifi"

    .line 427
    :goto_3
    if-eqz v0, :cond_3

    .line 428
    const-string v2, "network"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/a/a/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2233
    :cond_4
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/q;->d()V

    .line 2234
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2238
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static e()J
    .locals 4

    .prologue
    .line 1558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/a/a/d;->b:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/a/a/d;->a:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 434
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 435
    const-string v0, "method"

    const-string v3, "MUserInfo"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    const-string v0, "model"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    const-string v0, "os"

    const-string v3, "Android"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    const-string v0, "osversion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 441
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 440
    check-cast v0, Landroid/view/WindowManager;

    .line 442
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 443
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d*%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    .line 444
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    .line 443
    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 445
    const-string v3, "resolution"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 446
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 448
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_0

    .line 450
    const-string v3, "operator"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 456
    :try_start_0
    const-string v0, "bfd_device_info"

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 457
    new-instance v4, Ljava/io/BufferedReader;

    .line 458
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 457
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 464
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 466
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 474
    :goto_1
    if-nez v0, :cond_1

    .line 476
    :try_start_1
    const-string v0, "bfd_device_info"

    const/4 v1, 0x0

    .line 475
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 477
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 478
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 479
    invoke-direct {p0, p1, v2}, Lcom/a/a/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 485
    :cond_1
    :goto_2
    return-void

    .line 462
    :cond_2
    :try_start_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 469
    :catch_1
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_1

    .line 482
    :catch_2
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 481
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method static synthetic e(Lcom/a/a/d;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/a/a/d;->n:Z

    return v0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 574
    const-string v0, "bfd"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 575
    const-string v1, "bfd_gid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/a/a/d;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/a/a/d;->l:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private static f()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1592
    const-string v1, "PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1594
    const-string v3, "Detecting root"

    .line 1596
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    .line 1603
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/su-backup"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1605
    const-string v1, "hidden su found at /system/su-backup"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :goto_1
    return v0

    .line 1597
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v2, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1598
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "su found at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/su"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1596
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1609
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/.tmpsu"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1611
    const-string v1, "hidden su found at /system/.tmpsu"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1615
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/.bash/.ssu"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1617
    const-string v1, "hidden su found at /system/.bash/.ssu"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1621
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic g(Lcom/a/a/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/a/a/d;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/e;

    invoke-direct {v1, p0, p1}, Lcom/a/a/e;-><init>(Lcom/a/a/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 898
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;DILjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "DI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/l;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p6

    move-object v5, p2

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/a/a/l;-><init>(Lcom/a/a/d;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;DI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 957
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1209
    iget-object v6, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v0, Lcom/a/a/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/f;-><init>(Lcom/a/a/d;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1228
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 912
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/k;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/a/a/k;-><init>(Lcom/a/a/d;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 929
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1652
    iget-object v6, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v0, Lcom/a/a/j;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/a/j;-><init>(Lcom/a/a/d;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1699
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 901
    iget-object v0, p0, Lcom/a/a/d;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/a/a/d;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 902
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/i;

    invoke-direct {v1, p0, p1}, Lcom/a/a/i;-><init>(Lcom/a/a/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 908
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/m;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/a/a/m;-><init>(Lcom/a/a/d;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/n;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/a/a/n;-><init>(Lcom/a/a/d;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1094
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/g;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/a/a/g;-><init>(Lcom/a/a/d;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1332
    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/a/a/h;-><init>(Lcom/a/a/d;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1373
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method protected final onLooperPrepared()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/a/a/d;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/a/a/d;->c:Landroid/os/Handler;

    .line 134
    iget-object v0, p0, Lcom/a/a/d;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d;->f:Z

    .line 136
    iget-object v0, p0, Lcom/a/a/d;->e:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 137
    iget-object v0, p0, Lcom/a/a/d;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 138
    return-void
.end method
