.class public final Lcom/mob/a/a/c;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/mob/a/a/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mob/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mob/a/a/c;->c:Lcom/mob/a/a/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/a/a/c;->a:Landroid/content/Context;

    new-instance v0, Lcom/mob/a/a/b;

    iget-object v1, p0, Lcom/mob/a/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mob/a/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/a/a/c;->b:Lcom/mob/a/a/b;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mob/a/a/c;
    .locals 2

    const-class v1, Lcom/mob/a/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/a/a/c;->c:Lcom/mob/a/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/a/a/c;

    invoke-direct {v0, p0}, Lcom/mob/a/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/a/a/c;->c:Lcom/mob/a/a/c;

    :cond_0
    sget-object v0, Lcom/mob/a/a/c;->c:Lcom/mob/a/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mob/a/a/c;->b:Lcom/mob/a/a/b;

    invoke-virtual {v1}, Lcom/mob/a/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select count(*) from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mob/a/a/c;->b:Lcom/mob/a/a/b;

    invoke-virtual {v0}, Lcom/mob/a/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v3, "Deleted %d rows from table: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_1
    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    const-string v4, "when delete database occur error table:%s,"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v3, v1, v4, v5}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 7

    iget-object v0, p0, Lcom/mob/a/a/c;->b:Lcom/mob/a/a/b;

    invoke-virtual {v0}, Lcom/mob/a/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-wide/16 v0, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    const-string v4, "when insert database occur error table:%s,"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v2, v4, v5}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mob/a/a/c;->b:Lcom/mob/a/a/b;

    invoke-virtual {v1}, Lcom/mob/a/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
