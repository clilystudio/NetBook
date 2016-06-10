.class final Lcom/squareup/okhttp/internal/spdy/J;
.super Lcom/squareup/okhttp/internal/c;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/b;


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/spdy/A;

.field private b:Lcom/squareup/okhttp/internal/spdy/a;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/A;)V
    .locals 4

    .prologue
    .line 567
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    .line 568
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/A;B)V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/J;-><init>(Lcom/squareup/okhttp/internal/spdy/A;)V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 4

    .prologue
    .line 763
    if-nez p1, :cond_1

    .line 764
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    monitor-enter v1

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    iget-wide v2, v0, Lcom/squareup/okhttp/internal/spdy/A;->d:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lcom/squareup/okhttp/internal/spdy/A;->d:J

    .line 766
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 767
    monitor-exit v1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/spdy/A;->a(I)Lcom/squareup/okhttp/internal/spdy/M;

    move-result-object v1

    .line 770
    if-eqz v1, :cond_0

    .line 771
    monitor-enter v1

    .line 772
    :try_start_1
    invoke-virtual {v1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/M;->a(J)V

    .line 773
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/spdy/A;->b(I)Lcom/squareup/okhttp/internal/spdy/M;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/spdy/M;->c(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public final a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;ILjava/util/List;)V

    .line 786
    return-void
.end method

.method public final a(ILokio/ByteString;)V
    .locals 5

    .prologue
    .line 743
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    .line 748
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    monitor-enter v1

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/A;->e(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/A;->e(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/squareup/okhttp/internal/spdy/M;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/M;

    .line 750
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/A;->b(Lcom/squareup/okhttp/internal/spdy/A;Z)Z

    .line 751
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 755
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/M;->a()I

    move-result v4

    if-le v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/M;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 756
    sget-object v4, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/spdy/M;->c(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 757
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/M;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/squareup/okhttp/internal/spdy/A;->b(I)Lcom/squareup/okhttp/internal/spdy/M;

    .line 754
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 760
    :cond_1
    return-void
.end method

.method public final a(ZII)V
    .locals 3

    .prologue
    .line 731
    if-eqz p1, :cond_1

    .line 732
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/spdy/A;->c(Lcom/squareup/okhttp/internal/spdy/A;I)Lcom/squareup/okhttp/internal/spdy/t;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/t;->b()V

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, p3, v2}, Lcom/squareup/okhttp/internal/spdy/A;->b(Lcom/squareup/okhttp/internal/spdy/A;ZIILcom/squareup/okhttp/internal/spdy/t;)V

    goto :goto_0
.end method

.method public final a(ZILokio/i;I)V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0, p2, p3, p4, p1}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;ILokio/i;IZ)V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/spdy/A;->a(I)Lcom/squareup/okhttp/internal/spdy/M;

    move-result-object v0

    .line 602
    if-nez v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lcom/squareup/okhttp/internal/spdy/A;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 604
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lokio/i;->f(J)V

    goto :goto_0

    .line 607
    :cond_2
    invoke-virtual {v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/M;->a(Lokio/i;I)V

    .line 608
    if-eqz p1, :cond_0

    .line 609
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/M;->h()V

    goto :goto_0
.end method

.method public final a(ZLcom/squareup/okhttp/internal/spdy/w;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 685
    .line 686
    const/4 v0, 0x0

    .line 687
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    monitor-enter v8

    .line 688
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    iget-object v2, v2, Lcom/squareup/okhttp/internal/spdy/A;->f:Lcom/squareup/okhttp/internal/spdy/w;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/spdy/w;->e(I)I

    move-result v2

    .line 689
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    iget-object v3, v3, Lcom/squareup/okhttp/internal/spdy/A;->f:Lcom/squareup/okhttp/internal/spdy/w;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/w;->a()V

    .line 690
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    iget-object v3, v3, Lcom/squareup/okhttp/internal/spdy/A;->f:Lcom/squareup/okhttp/internal/spdy/w;

    invoke-virtual {v3, p2}, Lcom/squareup/okhttp/internal/spdy/w;->a(Lcom/squareup/okhttp/internal/spdy/w;)V

    .line 691
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    .line 1179
    iget-object v3, v3, Lcom/squareup/okhttp/internal/spdy/A;->a:Lcom/squareup/okhttp/Protocol;

    .line 691
    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v4, :cond_1

    .line 1716
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/A;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/squareup/okhttp/internal/spdy/L;

    const-string v5, "OkHttp %s ACK Settings"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v11}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v4, p0, v5, v9, p2}, Lcom/squareup/okhttp/internal/spdy/L;-><init>(Lcom/squareup/okhttp/internal/spdy/J;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/w;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 694
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    iget-object v3, v3, Lcom/squareup/okhttp/internal/spdy/A;->f:Lcom/squareup/okhttp/internal/spdy/w;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/spdy/w;->e(I)I

    move-result v3

    .line 695
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    if-eq v3, v2, :cond_6

    .line 696
    sub-int v2, v3, v2

    int-to-long v2, v2

    .line 697
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/A;->g(Lcom/squareup/okhttp/internal/spdy/A;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 698
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    .line 2340
    iget-wide v10, v4, Lcom/squareup/okhttp/internal/spdy/A;->d:J

    add-long/2addr v10, v2

    iput-wide v10, v4, Lcom/squareup/okhttp/internal/spdy/A;->d:J

    .line 2341
    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 699
    :cond_2
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;Z)Z

    .line 701
    :cond_3
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/A;->e(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 702
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/A;->e(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/A;->e(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/squareup/okhttp/internal/spdy/M;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/M;

    move-wide v4, v2

    move-object v2, v0

    .line 705
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    if-eqz v2, :cond_4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 707
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v1, v2, v0

    .line 708
    monitor-enter v1

    .line 709
    :try_start_1
    invoke-virtual {v1, v4, v5}, Lcom/squareup/okhttp/internal/spdy/M;->a(J)V

    .line 710
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 705
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 710
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 713
    :cond_4
    return-void

    :cond_5
    move-wide v4, v2

    move-object v2, v0

    goto :goto_0

    :cond_6
    move-object v2, v0

    move-wide v4, v6

    goto :goto_0
.end method

.method public final a(ZZILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;",
            "Lcom/squareup/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0, p3, p4, p2}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;ILjava/util/List;Z)V

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    monitor-enter v6

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/A;->b(Lcom/squareup/okhttp/internal/spdy/A;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 624
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/A;->a(I)Lcom/squareup/okhttp/internal/spdy/M;

    move-result-object v0

    .line 626
    if-nez v0, :cond_6

    .line 628
    invoke-virtual {p5}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfStreamAbsent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 629
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, p3, v1}, Lcom/squareup/okhttp/internal/spdy/A;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 630
    monitor-exit v6

    goto :goto_0

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/A;->c(Lcom/squareup/okhttp/internal/spdy/A;)I

    move-result v0

    if-gt p3, v0, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 637
    :cond_4
    rem-int/lit8 v0, p3, 0x2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/A;->d(Lcom/squareup/okhttp/internal/spdy/A;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_5

    monitor-exit v6

    goto :goto_0

    .line 640
    :cond_5
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/M;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/M;-><init>(ILcom/squareup/okhttp/internal/spdy/A;ZZLjava/util/List;)V

    .line 642
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v1, p3}, Lcom/squareup/okhttp/internal/spdy/A;->b(Lcom/squareup/okhttp/internal/spdy/A;I)I

    .line 643
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/A;->e(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/A;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/K;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v7}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/squareup/okhttp/internal/spdy/K;-><init>(Lcom/squareup/okhttp/internal/spdy/J;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/M;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 657
    monitor-exit v6

    goto :goto_0

    .line 659
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    invoke-virtual {p5}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfStreamPresent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 663
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/M;->b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 664
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/A;->b(I)Lcom/squareup/okhttp/internal/spdy/M;

    goto/16 :goto_0

    .line 669
    :cond_7
    invoke-virtual {v0, p4, p5}, Lcom/squareup/okhttp/internal/spdy/M;->a(Ljava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    .line 670
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/M;->h()V

    goto/16 :goto_0
.end method

.method protected final b()V
    .locals 6

    .prologue
    .line 572
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 573
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/spdy/A;->g:Lcom/squareup/okhttp/internal/spdy/Q;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    iget-object v3, v3, Lcom/squareup/okhttp/internal/spdy/A;->h:Ljava/net/Socket;

    invoke-static {v3}, Lokio/o;->b(Ljava/net/Socket;)Lokio/y;

    move-result-object v3

    invoke-static {v3}, Lokio/o;->a(Lokio/y;)Lokio/i;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    iget-boolean v4, v4, Lcom/squareup/okhttp/internal/spdy/A;->b:Z

    invoke-interface {v1, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Q;->a(Lokio/i;Z)Lcom/squareup/okhttp/internal/spdy/a;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/J;->b:Lcom/squareup/okhttp/internal/spdy/a;

    .line 576
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    iget-boolean v1, v1, Lcom/squareup/okhttp/internal/spdy/A;->b:Z

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/J;->b:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/spdy/a;->a()V

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/J;->b:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-interface {v1, p0}, Lcom/squareup/okhttp/internal/spdy/a;->a(Lcom/squareup/okhttp/internal/spdy/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 581
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 582
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :try_start_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 591
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->b:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/l;->a(Ljava/io/Closeable;)V

    .line 592
    :goto_1
    return-void

    .line 584
    :catch_0
    move-exception v1

    :try_start_2
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    :try_start_3
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 588
    :try_start_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v2, v1, v0}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 591
    :goto_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/J;->b:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/l;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 587
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 588
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 591
    :goto_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/J;->b:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/l;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_4

    .line 587
    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method
