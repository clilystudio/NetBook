.class public final Lcom/activeandroid/Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = 0x400

.field private static sContext:Landroid/content/Context;

.field private static sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

.field private static sEntities:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsInitialized:Z

.field private static sModelInfo:Lcom/activeandroid/ModelInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/activeandroid/Cache;->sIsInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static declared-synchronized addEntity(Lcom/activeandroid/Model;)V
    .locals 3

    .prologue
    .line 124
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    invoke-static {p0}, Lcom/activeandroid/Cache;->getIdentifier(Lcom/activeandroid/Model;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v1

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clear()V
    .locals 2

    .prologue
    .line 78
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v1

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized closeDatabase()V
    .locals 2

    .prologue
    .line 104
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    invoke-virtual {v0}, Lcom/activeandroid/DatabaseHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit v1

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized dispose()V
    .locals 3

    .prologue
    .line 82
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->closeDatabase()V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/activeandroid/Cache;->sIsInitialized:Z

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ActiveAndroid disposed. Call initialize to use library."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v1

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/activeandroid/Cache;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getEntity(Ljava/lang/Class;J)Lcom/activeandroid/Model;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;J)",
            "Lcom/activeandroid/Model;"
        }
    .end annotation

    .prologue
    .line 128
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/activeandroid/Cache;->getIdentifier(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/Model;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getIdentifier(Lcom/activeandroid/Model;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/Cache;->getIdentifier(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdentifier(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getParserForType(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/activeandroid/serializer/TypeSerializer;"
        }
    .end annotation

    .prologue
    .line 146
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v0, p0}, Lcom/activeandroid/ModelInfo;->getTypeSerializer(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/TableInfo;"
        }
    .end annotation

    .prologue
    .line 142
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v0, p0}, Lcom/activeandroid/ModelInfo;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getTableInfos()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/activeandroid/TableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v0}, Lcom/activeandroid/ModelInfo;->getTableInfos()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v0, p0}, Lcom/activeandroid/ModelInfo;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Lcom/activeandroid/Configuration;)V
    .locals 3

    .prologue
    .line 59
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/activeandroid/Cache;->sIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    monitor-exit v1

    return-void

    .line 62
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/activeandroid/Configuration;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/activeandroid/Cache;->sContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/activeandroid/ModelInfo;

    invoke-direct {v0, p0}, Lcom/activeandroid/ModelInfo;-><init>(Lcom/activeandroid/Configuration;)V

    sput-object v0, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    .line 64
    new-instance v0, Lcom/activeandroid/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/activeandroid/DatabaseHelper;-><init>(Lcom/activeandroid/Configuration;)V

    sput-object v0, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    .line 70
    new-instance v0, Landroid/support/v4/util/LruCache;

    invoke-virtual {p0}, Lcom/activeandroid/Configuration;->getCacheSize()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    .line 72
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/activeandroid/Cache;->sIsInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/activeandroid/Cache;->sIsInitialized:Z

    return v0
.end method

.method public static declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 100
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    invoke-virtual {v0}, Lcom/activeandroid/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeEntity(Lcom/activeandroid/Model;)V
    .locals 3

    .prologue
    .line 132
    const-class v1, Lcom/activeandroid/Cache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    invoke-static {p0}, Lcom/activeandroid/Cache;->getIdentifier(Lcom/activeandroid/Model;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit v1

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
