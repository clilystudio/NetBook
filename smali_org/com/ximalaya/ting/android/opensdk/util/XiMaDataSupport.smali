.class public Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;
.super Lorg/litepal/b/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/litepal/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs declared-synchronized findAll(Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;Ljava/lang/Class;Z[J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack",
            "<",
            "Ljava/util/List",
            "<TT;>;>;",
            "Ljava/lang/Class",
            "<TT;>;Z[J)V"
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;-><init>(Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;Ljava/lang/Class;Z[JLcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 92
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save(Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$1;

    invoke-direct {v0, p0, p1}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$1;-><init>(Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 51
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$1;->myexec([Ljava/lang/Object;)Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized updateAll(Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;-><init>(Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 72
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
