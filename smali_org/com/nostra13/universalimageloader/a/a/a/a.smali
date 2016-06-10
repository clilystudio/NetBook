.class public abstract Lcom/nostra13/universalimageloader/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/a/a/a;


# static fields
.field private static a:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Lcom/nostra13/universalimageloader/a/a/b/a;

.field private e:I

.field private f:Landroid/graphics/Bitmap$CompressFormat;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/nostra13/universalimageloader/a/a/a/a;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/a/a/b/a;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const v0, 0x8000

    iput v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->e:I

    .line 56
    sget-object v0, Lcom/nostra13/universalimageloader/a/a/a/a;->a:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->f:Landroid/graphics/Bitmap$CompressFormat;

    .line 57
    const/16 v0, 0x64

    iput v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->g:I

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDir argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    if-nez p3, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileNameGenerator argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iput-object p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->b:Ljava/io/File;

    .line 87
    iput-object p2, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->c:Ljava/io/File;

    .line 88
    iput-object p3, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->d:Lcom/nostra13/universalimageloader/a/a/b/a;

    .line 89
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->d:Lcom/nostra13/universalimageloader/a/a/b/a;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/a/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->b:Ljava/io/File;

    .line 170
    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->c:Ljava/io/File;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->c:Ljava/io/File;

    .line 175
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 128
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->e:I

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->f:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->g:I

    invoke-virtual {p2, v0, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 134
    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    .line 135
    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :cond_0
    if-nez v0, :cond_1

    .line 139
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 142
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    return v0

    .line 134
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    .line 139
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/b/c;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 104
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->e:I

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    iget v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a;->e:I

    invoke-static {p2, v5, p3, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/b/c;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 111
    :try_start_2
    invoke-static {v5}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    .line 115
    if-eqz v1, :cond_0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 118
    :cond_0
    if-nez v1, :cond_1

    .line 119
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 122
    :cond_1
    return v1

    .line 111
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v5}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    :catchall_1
    move-exception v0

    move v1, v2

    :goto_0
    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    .line 115
    if-eqz v1, :cond_2

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 118
    :cond_2
    if-nez v1, :cond_3

    .line 119
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    throw v0

    .line 114
    :catchall_2
    move-exception v0

    goto :goto_0
.end method
