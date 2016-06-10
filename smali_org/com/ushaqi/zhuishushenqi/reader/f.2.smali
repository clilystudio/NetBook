.class public final Lcom/ushaqi/zhuishushenqi/reader/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/api/b;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    .line 69
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->b:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    .line 64
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getReadMode()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->b:I

    .line 65
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->c:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/BookInfo;I)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    .line 56
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->b:I

    .line 57
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->c:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private a(ILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 2

    .prologue
    .line 431
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c(Ljava/lang/String;ILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 435
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 6

    .prologue
    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->O(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 441
    if-eqz v2, :cond_0

    .line 442
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/Toc;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/Toc;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/model/Toc;->setChapters([Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)V

    .line 157
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/Toc;->setHost(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/Toc;->set_id(Ljava/lang/String;)V

    .line 159
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 185
    new-array v4, p2, [[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    const/4 v0, 0x1

    :goto_0
    if-gt v0, p2, :cond_0

    .line 190
    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/g;

    invoke-direct {v3, p0, v0, p1, v4}, Lcom/ushaqi/zhuishushenqi/reader/g;-><init>(Lcom/ushaqi/zhuishushenqi/reader/f;II[[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)V

    .line 213
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 215
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 219
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 224
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    array-length v5, v4

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    .line 226
    if-eqz v6, :cond_4

    .line 227
    array-length v7, v6

    move v3, v2

    :goto_3
    if-ge v3, v7, :cond_4

    aget-object v8, v6, v3

    .line 228
    if-nez v8, :cond_3

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    :cond_2
    return-object v0

    .line 231
    :cond_3
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 225
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private b(I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 2

    .prologue
    .line 413
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 417
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 1

    .prologue
    .line 422
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    .line 130
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/MixTocRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/MixTocRoot;->getMixToc()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/MixTocRoot;->getMixToc()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    .line 136
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/Toc;->set_id(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/MixTocRoot;->getMixToc()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    .line 139
    :cond_0
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 2

    .prologue
    .line 404
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    .line 3721
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3722
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->x(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3724
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->y(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 2

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Toc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 166
    .line 168
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->w(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 172
    :goto_0
    if-nez v2, :cond_0

    move-object v0, v1

    .line 181
    :goto_1
    return-object v0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v0

    goto :goto_0

    .line 1744
    :cond_0
    if-nez v2, :cond_2

    .line 176
    :cond_1
    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(II)Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 178
    if-lez v2, :cond_4

    .line 179
    new-array v1, v2, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/f;->a([Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    goto :goto_1

    .line 1747
    :cond_2
    const/16 v0, 0xc8

    if-gt v2, v0, :cond_3

    .line 1748
    const/4 v0, 0x1

    goto :goto_2

    .line 1750
    :cond_3
    div-int/lit16 v0, v2, 0xc8

    .line 1751
    rem-int/lit16 v3, v2, 0xc8

    if-lez v3, :cond_1

    .line 1752
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 181
    goto :goto_1
.end method

.method private e()Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 243
    .line 245
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->s(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->getChapter()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->getBook()Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->getBook()Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;->getMd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->g:Ljava/lang/String;

    .line 251
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->getChapter()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;

    move-result-object v2

    .line 252
    array-length v3, v2

    .line 253
    new-array v4, v3, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 255
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 256
    aget-object v5, v2, v1

    .line 257
    if-eqz v5, :cond_0

    .line 258
    new-instance v6, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-direct {v6}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;-><init>()V

    aput-object v6, v4, v1

    .line 259
    aget-object v6, v4, v1

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTitle(Ljava/lang/String;)V

    .line 260
    aget-object v6, v4, v1

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setLink(Ljava/lang/String;)V

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    :catch_0
    move-exception v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 263
    :cond_1
    if-lez v3, :cond_2

    .line 264
    invoke-direct {p0, v4}, Lcom/ushaqi/zhuishushenqi/reader/f;->a([Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->g:Ljava/lang/String;

    .line 2156
    if-eqz v3, :cond_2

    .line 2159
    const-string v4, "sogou"

    invoke-static {v1, v4}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    move-result-object v4

    .line 2160
    if-nez v4, :cond_3

    .line 2161
    const-string v4, "sogou"

    invoke-static {v1, v4, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_2
    :goto_2
    return-object v0

    .line 2163
    :cond_3
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->getSogouMd()Ljava/lang/String;

    move-result-object v1

    .line 2164
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2165
    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->setSogouMd(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->save()Ljava/lang/Long;

    goto :goto_2
.end method

.method private f()Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 276
    .line 278
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->t(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 282
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;->getResult()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;

    move-result-object v0

    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_1
    return-object v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v1

    goto :goto_0

    .line 287
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v2, "tk:\'([0-9a-f]+)\'"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    move-object v2, v0

    .line 295
    :goto_3
    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;->getResult()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;

    move-result-object v3

    .line 299
    array-length v4, v3

    .line 300
    new-array v5, v4, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 302
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_3

    .line 303
    aget-object v6, v3, v0

    .line 304
    if-eqz v6, :cond_2

    .line 305
    new-instance v7, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-direct {v7}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;-><init>()V

    aput-object v7, v5, v0

    .line 306
    aget-object v7, v5, v0

    invoke-virtual {v6}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTitle(Ljava/lang/String;)V

    .line 307
    aget-object v7, v5, v0

    invoke-virtual {v6}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocResult;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setLink(Ljava/lang/String;)V

    .line 308
    aget-object v6, v5, v0

    invoke-virtual {v6, v2}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setLeidianTk(Ljava/lang/String;)V

    .line 302
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 292
    :catch_1
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto :goto_3

    .line 311
    :cond_3
    if-lez v4, :cond_0

    .line 312
    invoke-direct {p0, v5}, Lcom/ushaqi/zhuishushenqi/reader/f;->a([Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private g()Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 321
    .line 323
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->v(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 327
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;->getItems()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 328
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;->getItems()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;

    move-result-object v2

    .line 329
    array-length v3, v2

    .line 330
    new-array v4, v3, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 331
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 332
    aget-object v5, v2, v1

    .line 333
    if-eqz v5, :cond_0

    .line 334
    new-instance v6, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-direct {v6}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;-><init>()V

    aput-object v6, v4, v1

    .line 335
    aget-object v6, v4, v1

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;->getChapter_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTitle(Ljava/lang/String;)V

    .line 336
    aget-object v6, v4, v1

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;->getCurl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setLink(Ljava/lang/String;)V

    .line 337
    aget-object v6, v4, v1

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;->getSort()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setEasouIndex(I)V

    .line 331
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :catch_0
    move-exception v1

    .line 325
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 340
    :cond_1
    if-lez v3, :cond_2

    .line 341
    invoke-direct {p0, v4}, Lcom/ushaqi/zhuishushenqi/reader/f;->a([Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    .line 344
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 351
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 352
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->e:Ljava/lang/String;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 355
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 358
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->g:Ljava/lang/String;

    .line 361
    :cond_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->b:I

    packed-switch v0, :pswitch_data_0

    .line 376
    :pswitch_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/f;->c(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    .line 378
    :goto_0
    if-eqz v0, :cond_3

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 379
    :cond_3
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->b:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->b:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->b:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 380
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ushaqi/zhuishushenqi/util/I;->h:Z

    .line 382
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->u()Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;

    move-result-object v1

    .line 383
    if-eqz v1, :cond_4

    .line 384
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;->getFavorite()Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;

    move-result-object v1

    .line 385
    if-eqz v1, :cond_4

    .line 386
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->getBookID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->getTocID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->getChecksum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_4
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/f;->c(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    .line 389
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ushaqi/zhuishushenqi/util/I;->h:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_5
    :goto_1
    return-object v0

    .line 363
    :pswitch_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 2186
    if-nez v0, :cond_7

    .line 2187
    const/4 v0, 0x0

    .line 3067
    :cond_6
    :goto_2
    invoke-static {v0, v5}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    .line 364
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/f;->b(I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    goto :goto_0

    .line 2189
    :cond_7
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2190
    array-length v2, v1

    if-lez v2, :cond_6

    .line 2191
    aget-object v0, v1, v5

    goto :goto_2

    .line 367
    :pswitch_2
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    goto/16 :goto_0

    .line 370
    :pswitch_3
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLeidianTk()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(ILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    goto/16 :goto_0

    .line 373
    :pswitch_4
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getEasouIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    goto/16 :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    sput-boolean v5, Lcom/ushaqi/zhuishushenqi/util/I;->h:Z

    .line 392
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 361
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a()Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->b:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :pswitch_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/f;->b()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 98
    :pswitch_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/f;->b()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/f;->c()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_3
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/f;->d()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_4
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/f;->e()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_5
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/f;->f()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_6
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/f;->g()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 455
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->b:I

    .line 456
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->c:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->g:Ljava/lang/String;

    .line 88
    sput-object p2, Lcom/ushaqi/zhuishushenqi/util/I;->f:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->d:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->e:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->f:Ljava/lang/String;

    .line 79
    sput-object p3, Lcom/ushaqi/zhuishushenqi/util/I;->e:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/f;->d:Ljava/lang/String;

    .line 472
    return-void
.end method
