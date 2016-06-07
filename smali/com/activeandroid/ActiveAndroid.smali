.class public final Lcom/activeandroid/ActiveAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginTransaction()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 65
    return-void
.end method

.method public static clearCache()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/activeandroid/Cache;->clear()V

    .line 49
    return-void
.end method

.method public static dispose()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lcom/activeandroid/Cache;->dispose()V

    .line 53
    return-void
.end method

.method public static endTransaction()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 69
    return-void
.end method

.method public static execSQL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static inTransaction()Z
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/activeandroid/Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/activeandroid/Configuration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/activeandroid/Configuration$Builder;->create()Lcom/activeandroid/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/ActiveAndroid;->initialize(Lcom/activeandroid/Configuration;)V

    .line 31
    return-void
.end method

.method public static initialize(Lcom/activeandroid/Configuration;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/activeandroid/ActiveAndroid;->initialize(Lcom/activeandroid/Configuration;Z)V

    .line 35
    return-void
.end method

.method public static initialize(Lcom/activeandroid/Configuration;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p1}, Lcom/activeandroid/ActiveAndroid;->setLoggingEnabled(Z)V

    .line 44
    invoke-static {p0}, Lcom/activeandroid/Cache;->initialize(Lcom/activeandroid/Configuration;)V

    .line 45
    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0}, Lcom/activeandroid/util/Log;->setEnabled(Z)V

    .line 57
    return-void
.end method

.method public static setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 73
    return-void
.end method
