.class public Lcom/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/b/c;

.field private final b:Lcom/b/g;

.field private final c:[Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/b/c;Lcom/b/g;)V
    .locals 1

    .prologue
    .line 1691
    iput-object p1, p0, Lcom/b/a;->a:Lcom/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    iput-object p2, p0, Lcom/b/a;->b:Lcom/b/g;

    .line 1693
    invoke-static {p2}, Lcom/b/g;->d(Lcom/b/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/b/a;->c:[Z

    .line 1694
    return-void

    .line 1693
    :cond_0
    invoke-static {p1}, Lcom/b/c;->e(Lcom/b/c;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/b/c;Lcom/b/g;B)V
    .locals 0

    .prologue
    .line 2685
    invoke-direct {p0, p1, p2}, Lcom/b/a;-><init>(Lcom/b/c;Lcom/b/g;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a;)Lcom/b/g;
    .locals 1

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/b/a;->b:Lcom/b/g;

    return-object v0
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 6025
    if-eqz p0, :cond_0

    .line 6027
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6033
    :cond_0
    :goto_0
    return-void

    .line 6028
    :catch_0
    move-exception v0

    .line 6029
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 6010
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 6011
    if-nez v1, :cond_0

    .line 6012
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6014
    :cond_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 6015
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6016
    invoke-static {v3}, Lcom/b/a;->a(Ljava/io/File;)V

    .line 6018
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6019
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to delete file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6014
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6022
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/b/a;Z)Z
    .locals 1

    .prologue
    .line 5685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/b/a;)[Z
    .locals 1

    .prologue
    .line 4685
    iget-object v0, p0, Lcom/b/a;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 1733
    iget-object v2, p0, Lcom/b/a;->a:Lcom/b/c;

    monitor-enter v2

    .line 1734
    :try_start_0
    iget-object v0, p0, Lcom/b/a;->b:Lcom/b/g;

    invoke-static {v0}, Lcom/b/g;->a(Lcom/b/g;)Lcom/b/a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1735
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1755
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1737
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a;->b:Lcom/b/g;

    invoke-static {v0}, Lcom/b/g;->d(Lcom/b/g;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1738
    iget-object v0, p0, Lcom/b/a;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1740
    :cond_1
    iget-object v0, p0, Lcom/b/a;->b:Lcom/b/g;

    invoke-virtual {v0, p1}, Lcom/b/g;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1743
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 1754
    :goto_0
    :try_start_3
    new-instance v0, Lcom/b/f;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/b/f;-><init>(Lcom/b/a;Ljava/io/OutputStream;B)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 1746
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/b/a;->a:Lcom/b/c;

    invoke-static {v0}, Lcom/b/c;->f(Lcom/b/c;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1748
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    .line 1752
    goto :goto_0

    .line 1751
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/b/c;->d()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 1776
    iget-boolean v0, p0, Lcom/b/a;->d:Z

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/b/a;->a:Lcom/b/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/b/c;->a(Lcom/b/c;Lcom/b/a;Z)V

    .line 1778
    iget-object v0, p0, Lcom/b/a;->a:Lcom/b/c;

    iget-object v1, p0, Lcom/b/a;->b:Lcom/b/g;

    invoke-static {v1}, Lcom/b/g;->c(Lcom/b/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/c;->c(Ljava/lang/String;)Z

    .line 1783
    :goto_0
    return-void

    .line 1780
    :cond_0
    iget-object v0, p0, Lcom/b/a;->a:Lcom/b/c;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/b/c;->a(Lcom/b/c;Lcom/b/a;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/b/a;->a:Lcom/b/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/b/c;->a(Lcom/b/c;Lcom/b/a;Z)V

    .line 1791
    return-void
.end method
