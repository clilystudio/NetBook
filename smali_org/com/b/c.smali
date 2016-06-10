.class public final Lcom/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static a:Ljava/util/regex/Pattern;

.field private static final o:Ljava/io/OutputStream;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field private f:J

.field private final g:I

.field private h:J

.field private i:Ljava/io/Writer;

.field private final j:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:J

.field private m:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "[a-z0-9_]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/c;->a:Ljava/util/regex/Pattern;

    .line 675
    new-instance v0, Lcom/b/e;

    invoke-direct {v0}, Lcom/b/e;-><init>()V

    sput-object v0, Lcom/b/c;->o:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-wide v4, p0, Lcom/b/c;->h:J

    .line 149
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    .line 158
    iput-wide v4, p0, Lcom/b/c;->l:J

    .line 161
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/b/c;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 163
    new-instance v0, Lcom/b/d;

    invoke-direct {v0, p0}, Lcom/b/d;-><init>(Lcom/b/c;)V

    iput-object v0, p0, Lcom/b/c;->n:Ljava/util/concurrent/Callable;

    .line 180
    iput-object p1, p0, Lcom/b/c;->b:Ljava/io/File;

    .line 181
    iput p2, p0, Lcom/b/c;->e:I

    .line 182
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/c;->c:Ljava/io/File;

    .line 183
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/c;->d:Ljava/io/File;

    .line 184
    iput p3, p0, Lcom/b/c;->g:I

    .line 185
    iput-wide p4, p0, Lcom/b/c;->f:J

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/b/c;I)I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/c;->k:I

    return v0
.end method

.method static synthetic a(Lcom/b/c;Ljava/lang/String;J)Lcom/b/a;
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/b/c;->a(Ljava/lang/String;J)Lcom/b/a;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/b/a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 409
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/b/c;->i()V

    .line 410
    invoke-static {p1}, Lcom/b/c;->d(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/g;

    .line 412
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/b/g;->e(Lcom/b/g;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 429
    :goto_0
    monitor-exit p0

    return-object v0

    .line 416
    :cond_1
    if-nez v0, :cond_2

    .line 417
    :try_start_1
    new-instance v0, Lcom/b/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/b/g;-><init>(Lcom/b/c;Ljava/lang/String;B)V

    .line 418
    iget-object v1, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 423
    :goto_1
    new-instance v0, Lcom/b/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/b/a;-><init>(Lcom/b/c;Lcom/b/g;B)V

    .line 424
    invoke-static {v1, v0}, Lcom/b/g;->a(Lcom/b/g;Lcom/b/a;)Lcom/b/a;

    .line 427
    iget-object v1, p0, Lcom/b/c;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DIRTY "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/b/c;->i:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 419
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/b/g;->a(Lcom/b/g;)Lcom/b/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 420
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/b/c;
    .locals 7

    .prologue
    const v2, 0x31191

    const/4 v3, 0x2

    .line 200
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    new-instance v0, Lcom/b/c;

    move-object v1, p0

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/b/c;-><init>(Ljava/io/File;IIJ)V

    .line 209
    iget-object v1, v0, Lcom/b/c;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    :try_start_0
    invoke-direct {v0}, Lcom/b/c;->e()V

    .line 212
    invoke-direct {v0}, Lcom/b/c;->f()V

    .line 213
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, v0, Lcom/b/c;->c:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/b/c;->i:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DiskLruCache "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is corrupt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", removing"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v0}, Lcom/b/c;->close()V

    .line 1616
    iget-object v0, v0, Lcom/b/c;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/b/a;->a(Ljava/io/File;)V

    .line 223
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 224
    new-instance v0, Lcom/b/c;

    move-object v1, p0

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/b/c;-><init>(Ljava/io/File;IIJ)V

    .line 225
    invoke-direct {v0}, Lcom/b/c;->g()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/c;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/b/a;Z)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 466
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/b/a;->a(Lcom/b/a;)Lcom/b/g;

    move-result-object v2

    .line 467
    invoke-static {v2}, Lcom/b/g;->a(Lcom/b/g;)Lcom/b/a;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 468
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 472
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/b/g;->d(Lcom/b/g;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 473
    :goto_0
    iget v3, p0, Lcom/b/c;->g:I

    if-ge v1, v3, :cond_4

    .line 474
    invoke-static {p1}, Lcom/b/a;->b(Lcom/b/a;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 475
    invoke-virtual {p1}, Lcom/b/a;->b()V

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_1
    invoke-virtual {v2, v1}, Lcom/b/g;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 479
    invoke-virtual {p1}, Lcom/b/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 473
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/b/c;->g:I

    if-ge v0, v1, :cond_7

    .line 486
    invoke-virtual {v2, v0}, Lcom/b/g;->b(I)Ljava/io/File;

    move-result-object v1

    .line 487
    if-eqz p2, :cond_6

    .line 488
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 489
    invoke-virtual {v2, v0}, Lcom/b/g;->a(I)Ljava/io/File;

    move-result-object v3

    .line 490
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 491
    invoke-static {v2}, Lcom/b/g;->b(Lcom/b/g;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 492
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 493
    invoke-static {v2}, Lcom/b/g;->b(Lcom/b/g;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 494
    iget-wide v8, p0, Lcom/b/c;->h:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/b/c;->h:J

    .line 485
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 497
    :cond_6
    invoke-static {v1}, Lcom/b/c;->a(Ljava/io/File;)V

    goto :goto_3

    .line 501
    :cond_7
    iget v0, p0, Lcom/b/c;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/c;->k:I

    .line 502
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/b/g;->a(Lcom/b/g;Lcom/b/a;)Lcom/b/a;

    .line 503
    invoke-static {v2}, Lcom/b/g;->d(Lcom/b/g;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 504
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/b/g;->a(Lcom/b/g;Z)Z

    .line 505
    iget-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/b/g;->c(Lcom/b/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/b/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 506
    if-eqz p2, :cond_8

    .line 507
    iget-wide v0, p0, Lcom/b/c;->l:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/b/c;->l:J

    invoke-static {v2, v0, v1}, Lcom/b/g;->a(Lcom/b/g;J)J

    .line 514
    :cond_8
    :goto_4
    iget-wide v0, p0, Lcom/b/c;->h:J

    iget-wide v2, p0, Lcom/b/c;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/b/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    :cond_9
    iget-object v0, p0, Lcom/b/c;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/b/c;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 510
    :cond_a
    iget-object v0, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/b/g;->c(Lcom/b/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "REMOVE "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/b/g;->c(Lcom/b/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/b/c;Lcom/b/a;Z)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/b/c;->a(Lcom/b/a;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 357
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/b/c;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/b/c;->j()V

    return-void
.end method

.method static synthetic c(Lcom/b/c;)Z
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/b/c;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/b/c;->o:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic d(Lcom/b/c;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/b/c;->g()V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 620
    sget-object v0, Lcom/b/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_]{1,64}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/b/c;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/b/c;->g:I

    return v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 230
    new-instance v2, Lcom/b/i;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/b/c;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Lcom/b/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v1}, Lcom/b/i;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 233
    :try_start_0
    invoke-virtual {v2}, Lcom/b/i;->a()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v2}, Lcom/b/i;->a()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v2}, Lcom/b/i;->a()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {v2}, Lcom/b/i;->a()Ljava/lang/String;

    move-result-object v4

    .line 237
    invoke-virtual {v2}, Lcom/b/i;->a()Ljava/lang/String;

    move-result-object v5

    .line 238
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/b/c;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/b/c;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 243
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal header: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/b/a;->a(Ljava/io/Closeable;)V

    throw v0

    .line 2265
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    aget-object v1, v4, v0

    .line 2266
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v5, "REMOVE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, v4

    if-ne v0, v7, :cond_3

    .line 2267
    iget-object v0, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/b/i;->a()Ljava/lang/String;

    move-result-object v3

    .line 2260
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2261
    array-length v0, v4

    if-ge v0, v7, :cond_1

    .line 2262
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "unexpected journal line: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    .line 255
    invoke-static {v2}, Lcom/b/a;->a(Ljava/io/Closeable;)V

    .line 256
    return-void

    .line 2271
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/g;

    .line 2272
    if-nez v0, :cond_9

    .line 2273
    new-instance v0, Lcom/b/g;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v1, v5}, Lcom/b/g;-><init>(Lcom/b/c;Ljava/lang/String;B)V

    .line 2274
    iget-object v5, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 2277
    :goto_1
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v5, "CLEAN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    array-length v0, v4

    iget v5, p0, Lcom/b/c;->g:I

    add-int/lit8 v5, v5, 0x2

    if-ne v0, v5, :cond_6

    .line 2278
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/b/g;->a(Lcom/b/g;Z)Z

    .line 2279
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/b/g;->a(Lcom/b/g;Lcom/b/a;)Lcom/b/a;

    .line 2280
    array-length v0, v4

    .line 3009
    array-length v3, v4

    .line 3010
    if-le v7, v0, :cond_4

    .line 3011
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3013
    :cond_4
    if-le v7, v3, :cond_5

    .line 3014
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3016
    :cond_5
    add-int/lit8 v0, v0, -0x2

    .line 3017
    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3018
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 3019
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2280
    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/b/g;->a(Lcom/b/g;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2281
    :cond_6
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v5, "DIRTY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    array-length v0, v4

    if-ne v0, v7, :cond_7

    .line 2282
    new-instance v0, Lcom/b/a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/b/a;-><init>(Lcom/b/c;Lcom/b/g;B)V

    invoke-static {v1, v0}, Lcom/b/g;->a(Lcom/b/g;Lcom/b/a;)Lcom/b/a;

    goto/16 :goto_0

    .line 2283
    :cond_7
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v1, "READ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    array-length v0, v4

    if-eq v0, v7, :cond_2

    .line 2286
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "unexpected journal line: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic f(Lcom/b/c;)Ljava/io/File;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/b/c;->b:Ljava/io/File;

    return-object v0
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/b/c;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/b/c;->a(Ljava/io/File;)V

    .line 296
    iget-object v0, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/g;

    .line 298
    invoke-static {v0}, Lcom/b/g;->a(Lcom/b/g;)Lcom/b/a;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 299
    :goto_1
    iget v4, p0, Lcom/b/c;->g:I

    if-ge v1, v4, :cond_0

    .line 300
    iget-wide v4, p0, Lcom/b/c;->h:J

    invoke-static {v0}, Lcom/b/g;->b(Lcom/b/g;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/b/c;->h:J

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/b/g;->a(Lcom/b/g;Lcom/b/a;)Lcom/b/a;

    move v1, v2

    .line 304
    :goto_2
    iget v4, p0, Lcom/b/c;->g:I

    if-ge v1, v4, :cond_2

    .line 305
    invoke-virtual {v0, v1}, Lcom/b/g;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/b/c;->a(Ljava/io/File;)V

    .line 306
    invoke-virtual {v0, v1}, Lcom/b/g;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/b/c;->a(Ljava/io/File;)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 308
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 311
    :cond_3
    return-void
.end method

.method private declared-synchronized g()V
    .locals 5

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 322
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/b/c;->d:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 323
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 324
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 325
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 326
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 327
    iget v0, p0, Lcom/b/c;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 328
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 329
    iget v0, p0, Lcom/b/c;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 330
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 331
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/g;

    .line 334
    invoke-static {v0}, Lcom/b/g;->a(Lcom/b/g;)Lcom/b/a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/b/g;->c(Lcom/b/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 337
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/b/g;->c(Lcom/b/g;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 342
    iget-object v0, p0, Lcom/b/c;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/b/c;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 343
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/b/c;->c:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    monitor-exit p0

    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 525
    iget v0, p0, Lcom/b/c;->k:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/b/c;->k:I

    iget-object v1, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 603
    :goto_0
    iget-wide v0, p0, Lcom/b/c;->h:J

    iget-wide v2, p0, Lcom/b/c;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 605
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/b/c;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 607
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/b/h;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 365
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/b/c;->i()V

    .line 366
    invoke-static {p1}, Lcom/b/c;->d(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 372
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/b/g;->d(Lcom/b/g;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    iget v3, p0, Lcom/b/c;->g:I

    new-array v6, v3, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :goto_1
    :try_start_2
    iget v3, p0, Lcom/b/c;->g:I

    if-ge v2, v3, :cond_2

    .line 384
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0, v2}, Lcom/b/g;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v6, v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 391
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/b/c;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/c;->k:I

    .line 392
    iget-object v1, p0, Lcom/b/c;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "READ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 393
    invoke-direct {p0}, Lcom/b/c;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    iget-object v1, p0, Lcom/b/c;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/b/c;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 397
    :cond_3
    new-instance v1, Lcom/b/h;

    invoke-static {v0}, Lcom/b/g;->e(Lcom/b/g;)J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/b/h;-><init>(Lcom/b/c;Ljava/lang/String;J[Ljava/io/InputStream;B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 388
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a()Ljava/io/File;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/b/c;->b:Ljava/io/File;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 444
    iget-wide v0, p0, Lcom/b/c;->f:J

    return-wide v0
.end method

.method public final b(Ljava/lang/String;)Lcom/b/a;
    .locals 2

    .prologue
    .line 405
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/b/c;->a(Ljava/lang/String;J)Lcom/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 536
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/b/c;->i()V

    .line 537
    invoke-static {p1}, Lcom/b/c;->d(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/g;

    .line 539
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/b/g;->a(Lcom/b/g;)Lcom/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 560
    :goto_0
    monitor-exit p0

    return v0

    .line 548
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/b/c;->h:J

    invoke-static {v0}, Lcom/b/g;->b(Lcom/b/g;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/b/c;->h:J

    .line 549
    invoke-static {v0}, Lcom/b/g;->b(Lcom/b/g;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 543
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/b/c;->g:I

    if-ge v1, v2, :cond_3

    .line 544
    invoke-virtual {v0, v1}, Lcom/b/g;->a(I)Ljava/io/File;

    move-result-object v2

    .line 545
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 546
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed to delete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 552
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/b/c;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/c;->k:I

    .line 553
    iget-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "REMOVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 554
    iget-object v0, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-direct {p0}, Lcom/b/c;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    iget-object v0, p0, Lcom/b/c;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/b/c;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 560
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 3

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 600
    :goto_0
    monitor-exit p0

    return-void

    .line 592
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/c;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/g;

    .line 593
    invoke-static {v0}, Lcom/b/g;->a(Lcom/b/g;)Lcom/b/a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 594
    invoke-static {v0}, Lcom/b/g;->a(Lcom/b/g;)Lcom/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 597
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/b/c;->j()V

    .line 598
    iget-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/c;->i:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
