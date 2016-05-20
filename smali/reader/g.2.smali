.class final Lcom/ushaqi/zhuishushenqi/reader/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:[[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

.field private synthetic d:Lcom/ushaqi/zhuishushenqi/reader/f;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/f;II[[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/g;->d:Lcom/ushaqi/zhuishushenqi/reader/f;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/reader/g;->a:I

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/reader/g;->b:I

    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/reader/g;->c:[[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 195
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/g;->a:I

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/g;->b:I

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/g;->d:Lcom/ushaqi/zhuishushenqi/reader/f;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(Lcom/ushaqi/zhuishushenqi/reader/f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(IILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;->getRows()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;->getRows()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;

    move-result-object v1

    .line 201
    array-length v0, v1

    new-array v2, v0, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 202
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 203
    aget-object v3, v1, v0

    .line 204
    new-instance v4, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-direct {v4}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;-><init>()V

    .line 205
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;->getSerialname()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTitle(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;->getSerialid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setLink(Ljava/lang/String;)V

    .line 207
    aput-object v4, v2, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/g;->c:[[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/g;->a:I

    add-int/lit8 v1, v1, -0x1

    aput-object v2, v0, v1

    .line 211
    :cond_1
    return-void
.end method
