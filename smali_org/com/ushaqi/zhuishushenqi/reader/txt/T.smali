.class final Lcom/ushaqi/zhuishushenqi/reader/txt/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/ushaqi/zhuishushenqi/db/BookFile;

.field private c:J


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Lcom/ushaqi/zhuishushenqi/db/BookFile;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->b:Lcom/ushaqi/zhuishushenqi/db/BookFile;

    .line 259
    return-void
.end method

.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 253
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-direct {v0, p2}, Lcom/ushaqi/zhuishushenqi/db/BookFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Lcom/ushaqi/zhuishushenqi/db/BookFile;)V

    .line 254
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->c:J

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Ljava/io/File;B)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ushaqi/zhuishushenqi/db/BookFile;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->b:Lcom/ushaqi/zhuishushenqi/db/BookFile;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->a:Z

    .line 275
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->a:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->a:Z

    .line 279
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->c:J

    return-wide v0
.end method
