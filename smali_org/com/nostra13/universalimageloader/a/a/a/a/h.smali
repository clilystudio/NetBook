.class public final Lcom/nostra13/universalimageloader/a/a/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/a/a/a;


# static fields
.field private static a:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private b:Lcom/nostra13/universalimageloader/a/a/a/a/a;

.field private c:Ljava/io/File;

.field private d:Lcom/nostra13/universalimageloader/a/a/b/a;

.field private e:I

.field private f:Landroid/graphics/Bitmap$CompressFormat;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/a/a/b/a;JI)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x8000

    iput v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->e:I

    .line 57
    sget-object v0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->a:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->f:Landroid/graphics/Bitmap$CompressFormat;

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->g:I

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDir argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    cmp-long v0, p3, v2

    if-gez v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxSize argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    if-gez p5, :cond_2

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxFileCount argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    if-nez p2, :cond_3

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileNameGenerator argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    cmp-long v0, p3, v2

    if-nez v0, :cond_5

    .line 94
    const-wide v4, 0x7fffffffffffffffL

    .line 96
    :goto_0
    if-nez p5, :cond_4

    .line 97
    const v6, 0x7fffffff

    .line 100
    :goto_1
    iput-object p2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->d:Lcom/nostra13/universalimageloader/a/a/b/a;

    .line 101
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->c:Ljava/io/File;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/nostra13/universalimageloader/a/a/a/a/h;->a(Ljava/io/File;Ljava/io/File;JI)V

    .line 102
    return-void

    :cond_4
    move v6, p5

    goto :goto_1

    :cond_5
    move-wide v4, p3

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/io/File;JI)V
    .locals 7

    .prologue
    .line 106
    move-wide v4, p3

    move-object v1, p1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    move v6, p5

    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/io/File;IIJI)Lcom/nostra13/universalimageloader/a/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->b:Lcom/nostra13/universalimageloader/a/a/a/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V

    .line 109
    if-eqz p2, :cond_0

    .line 110
    const/4 v0, 0x0

    move-object v1, p2

    move-object p2, v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->d:Lcom/nostra13/universalimageloader/a/a/b/a;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/a/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->b:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/lang/String;)Lcom/nostra13/universalimageloader/a/a/a/a/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 125
    if-nez v2, :cond_1

    .line 130
    :goto_0
    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/g;->close()V

    :cond_0
    :goto_1
    return-object v0

    .line 125
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/a/a/a/a/g;->a(I)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 127
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/g;->close()V

    goto :goto_1

    .line 130
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/g;->close()V

    :cond_2
    throw v0

    .line 130
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 126
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public final a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->c:Ljava/io/File;

    .line 220
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->b:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->b(Ljava/lang/String;)Lcom/nostra13/universalimageloader/a/a/a/a/d;

    move-result-object v1

    .line 161
    if-nez v1, :cond_0

    .line 177
    :goto_0
    return v0

    .line 165
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->e:I

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->f:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->g:I

    invoke-virtual {p2, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 170
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    .line 172
    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a()V

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    throw v0

    .line 175
    :cond_1
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->b()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/b/c;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->b:Lcom/nostra13/universalimageloader/a/a/a/a/a;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->b(Ljava/lang/String;)Lcom/nostra13/universalimageloader/a/a/a/a/d;

    move-result-object v1

    .line 139
    if-nez v1, :cond_0

    .line 155
    :goto_0
    return v0

    .line 143
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->e:I

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 146
    :try_start_0
    iget v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/h;->e:I

    invoke-static {p2, v2, p3, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/b/c;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 148
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    .line 149
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a()V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->b()V

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    .line 152
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->b()V

    throw v0
.end method
