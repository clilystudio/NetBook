.class public Lorg/litepal/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 6070
    if-nez p2, :cond_0

    .line 6072
    const/4 v0, 0x0

    :try_start_0
    new-array p2, v0, [Ljava/lang/Object;

    .line 6074
    :cond_0
    if-nez p4, :cond_1

    .line 6076
    const/4 v0, 0x0

    new-array p4, v0, [Ljava/lang/Class;

    .line 6080
    :cond_1
    invoke-virtual {p3, p1, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6081
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6082
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 6086
    :catch_0
    move-exception v0

    new-instance v0, Lorg/litepal/exceptions/DataSupportException;

    .line 6088
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 6087
    invoke-static {v1, p1}, Lorg/litepal/exceptions/DataSupportException;->noSuchMethodException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6086
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 6115
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 6116
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6117
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6118
    return-void

    .line 6121
    :catch_0
    move-exception v0

    new-instance v0, Lorg/litepal/exceptions/DataSupportException;

    .line 6123
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 6122
    invoke-static {v1, p1}, Lorg/litepal/exceptions/DataSupportException;->noSuchFieldExceptioin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6121
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/b/k;

    .line 2094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 303
    invoke-direct {v0, v1}, Lorg/litepal/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 304
    iget-object v1, p0, Lorg/litepal/b/b;->a:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lorg/litepal/b/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/b/k;

    .line 1094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 256
    invoke-direct {v0, v1}, Lorg/litepal/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 257
    iget-object v1, p0, Lorg/litepal/b/b;->a:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/litepal/b/k;->a(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/b/k;

    .line 3094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 356
    invoke-direct {v0, v1}, Lorg/litepal/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 357
    iget-object v1, p0, Lorg/litepal/b/b;->a:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/litepal/b/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/b/k;

    .line 4094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 409
    invoke-direct {v0, v1}, Lorg/litepal/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 410
    iget-object v1, p0, Lorg/litepal/b/b;->a:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/litepal/b/k;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/b/k;

    .line 5094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 462
    invoke-direct {v0, v1}, Lorg/litepal/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 463
    iget-object v1, p0, Lorg/litepal/b/b;->a:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/litepal/b/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
