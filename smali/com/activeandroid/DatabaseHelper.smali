.class public final Lcom/activeandroid/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static final MIGRATION_PATH:Ljava/lang/String; = "migrations"


# instance fields
.field private final mSqlParser:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/activeandroid/Configuration;)V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getDatabaseVersion()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 54
    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/DatabaseHelper;->copyAttachedDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/activeandroid/Configuration;->getSqlParser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/DatabaseHelper;->mSqlParser:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private executeCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 152
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getTableInfos()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/TableInfo;

    .line 153
    invoke-static {v0}, Lcom/activeandroid/util/SQLiteUtils;->createTableDefinition(Lcom/activeandroid/TableInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 155
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 159
    return-void
.end method

.method private executeCreateIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 135
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getTableInfos()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/TableInfo;

    .line 136
    invoke-static {v0}, Lcom/activeandroid/util/SQLiteUtils;->createIndexDefinition(Lcom/activeandroid/TableInfo;)[Ljava/lang/String;

    move-result-object v2

    .line 138
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 139
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private executeMigrations2(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    .line 262
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/b;->a()Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 265
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/c;

    .line 266
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/c;->a()I

    move-result v2

    .line 267
    if-le v2, p2, :cond_0

    if-gt v2, p3, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/c;->b()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 269
    if-nez v2, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    :goto_0
    return-void

    .line 272
    :cond_1
    :try_start_1
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :try_start_2
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :catch_0
    move-exception v4

    .line 276
    :try_start_3
    invoke-virtual {v4}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 283
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 281
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 283
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method private executePragmas(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/activeandroid/util/SQLiteUtils;->FOREIGN_KEYS_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v0, "Foreign Keys supported. Enabling foreign key features."

    invoke-static {v0}, Lcom/activeandroid/util/Log;->i(Ljava/lang/String;)I

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public final copyAttachedDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 90
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 105
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 108
    :goto_1
    const/4 v3, 0x0

    const/16 v4, 0x2000

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_1

    .line 109
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "Failed to open file"

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 113
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 114
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executePragmas(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executeCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executeCreateIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executePragmas(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executePragmas(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/activeandroid/DatabaseHelper;->executeCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/activeandroid/DatabaseHelper;->executeMigrations2(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 83
    return-void
.end method
