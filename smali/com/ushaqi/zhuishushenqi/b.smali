.class public final Lcom/ushaqi/zhuishushenqi/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/ushaqi/zhuishushenqi/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/b;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ushaqi/zhuishushenqi/b;->b:Lcom/ushaqi/zhuishushenqi/b;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/ushaqi/zhuishushenqi/b;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/b;-><init>()V

    .line 32
    sput-object v0, Lcom/ushaqi/zhuishushenqi/b;->b:Lcom/ushaqi/zhuishushenqi/b;

    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/b;->a:Landroid/content/Context;

    .line 34
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/b;->b:Lcom/ushaqi/zhuishushenqi/b;

    return-object v0
.end method

.method private b(Ljava/util/Properties;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 70
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/b;->a:Landroid/content/Context;

    const-string v1, "config"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 74
    new-instance v3, Ljava/io/File;

    const-string v1, "config"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 79
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    :goto_2
    if-eqz v2, :cond_1

    .line 83
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 87
    :cond_1
    :goto_3
    throw v0

    .line 88
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 81
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 78
    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/Properties;
    .locals 6

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/b;->a:Landroid/content/Context;

    const-string v3, "config"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 53
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 59
    :goto_1
    if-eqz v0, :cond_0

    .line 60
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    :goto_2
    if-eqz v1, :cond_1

    .line 60
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 64
    :cond_1
    :goto_3
    throw v0

    .line 65
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 58
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/b;->a()Ljava/util/Properties;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/b;->b(Ljava/util/Properties;)V

    .line 101
    return-void
.end method

.method public final a(Ljava/util/Properties;)V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/b;->a()Ljava/util/Properties;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 94
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/b;->b(Ljava/util/Properties;)V

    .line 95
    return-void
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/b;->a()Ljava/util/Properties;

    move-result-object v1

    .line 105
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 106
    invoke-virtual {v1, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/b;->b(Ljava/util/Properties;)V

    .line 109
    return-void
.end method
