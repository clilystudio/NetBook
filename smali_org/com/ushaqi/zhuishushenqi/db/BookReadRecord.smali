.class public Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "BookReadRecords"
.end annotation


# instance fields
.field private account:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "account"
    .end annotation
.end field

.field private author:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "author"
    .end annotation
.end field

.field private book_id:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "book_id"
        unique = true
    .end annotation
.end field

.field private chapterCount:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "chapterCount"
    .end annotation
.end field

.field private chapterCountAtFeed:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "chapterCountAtFeed"
    .end annotation
.end field

.field private chapterTitle:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "chapterTitle"
    .end annotation
.end field

.field private cover:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "cover"
    .end annotation
.end field

.field private deleted:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "deleted"
    .end annotation
.end field

.field private downloadedSource:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "downloadedSource"
    .end annotation
.end field

.field private feedFat:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "feedFat"
    .end annotation
.end field

.field private feeding:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "feeding"
    .end annotation
.end field

.field public have_cp:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "have_cp"
    .end annotation
.end field

.field private is_top:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "is_top"
    .end annotation
.end field

.field private is_unread:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "is_unread"
    .end annotation
.end field

.field public lastActionTime:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "lastActionTime"
    .end annotation
.end field

.field private last_chapter:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "last_chapter"
    .end annotation
.end field

.field private localModifiedDate:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "localModifiedDate"
    .end annotation
.end field

.field private readMode:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "readMode"
    .end annotation
.end field

.field public readTime:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "readTime"
    .end annotation
.end field

.field public recommended:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "recommended"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "title"
    .end annotation
.end field

.field private tocIndex:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "tocIndex"
    .end annotation
.end field

.field private toc_id:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "toc_id"
    .end annotation
.end field

.field private updated:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "updated"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->is_unread:Z

    .line 56
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->is_top:Z

    .line 70
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->deleted:Z

    .line 88
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->feeding:Z

    .line 94
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->feedFat:Z

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->readMode:I

    .line 137
    return-void
.end method

.method public static addAccountInfo(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setAccount(Ljava/lang/String;)V

    .line 261
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setLocalModifiedDate(Ljava/util/Date;)V

    .line 262
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 263
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setAccount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static create(Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;)V
    .locals 1

    .prologue
    .line 292
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->createBookRecord(Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->addAccountInfo(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 294
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 295
    return-void
.end method

.method public static create(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->trulyDelete(Ljava/lang/String;)V

    .line 271
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->createBookRecord(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->addAccountInfo(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 273
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 275
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/event/c;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/event/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public static create(Lcom/ushaqi/zhuishushenqi/model/BookInfo;Ljava/lang/String;III)V
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->trulyDelete(Ljava/lang/String;)V

    .line 335
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->createBookRecord(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v1

    .line 336
    iput-object p1, v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->toc_id:Ljava/lang/String;

    .line 337
    iput p4, v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->readMode:I

    .line 338
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->addAccountInfo(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 339
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 341
    invoke-static {v0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->create(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    .line 343
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/event/c;

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/event/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method public static create(Lcom/ushaqi/zhuishushenqi/model/BookInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->trulyDelete(Ljava/lang/String;)V

    .line 316
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->createBookRecord(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v1

    .line 317
    iput-object p1, v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->toc_id:Ljava/lang/String;

    .line 318
    iput p6, v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->readMode:I

    .line 319
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->addAccountInfo(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 320
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 322
    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 324
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/event/c;

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/event/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method public static create(Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;Z)V
    .locals 1

    .prologue
    .line 282
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->createBookRecord(Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->addAccountInfo(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 284
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 285
    return-void
.end method

.method private static createBookRecord(Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    .locals 2

    .prologue
    .line 395
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;-><init>()V

    .line 396
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->get_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->book_id:Ljava/lang/String;

    .line 397
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setTitle(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setCover(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->getLastChapter()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->last_chapter:Ljava/lang/String;

    .line 400
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->getUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setUpdated(Ljava/util/Date;)V

    .line 401
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->getChaptersCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setChapterCount(I)V

    .line 402
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setAuthor(Ljava/lang/String;)V

    .line 403
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setRecommended(Z)V

    .line 404
    return-object v0
.end method

.method private static createBookRecord(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;-><init>()V

    .line 351
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->book_id:Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setTitle(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setCover(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getLastChapter()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->last_chapter:Ljava/lang/String;

    .line 355
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setUpdated(Ljava/util/Date;)V

    .line 356
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getChaptersCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setChapterCount(I)V

    .line 357
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setAuthor(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->isHasCp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setHave_cp(I)V

    .line 363
    :goto_0
    return-object v0

    .line 361
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setHave_cp(I)V

    goto :goto_0
.end method

.method private static createBookRecord(Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    .locals 2

    .prologue
    .line 372
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;-><init>()V

    .line 373
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->book_id:Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setTitle(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setCover(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getLastChapter()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->last_chapter:Ljava/lang/String;

    .line 377
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setUpdated(Ljava/util/Date;)V

    .line 378
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getChaptersCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setChapterCount(I)V

    .line 379
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setAuthor(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->isHasCp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setHave_cp(I)V

    .line 382
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setReadMode(I)V

    .line 386
    :goto_0
    return-object v0

    .line 384
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setHave_cp(I)V

    goto :goto_0
.end method

.method public static createFeed(Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;)V
    .locals 2

    .prologue
    .line 301
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->createBookRecord(Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 302
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setFeeding(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getChaptersCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setChapterCountAtFeed(I)V

    .line 304
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->addAccountInfo(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 305
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 306
    return-void
.end method

.method public static delete(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    if-nez p0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setDeleted(Z)V

    .line 215
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setFeeding(Z)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setFeedFat(Z)V

    .line 217
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->addAccountInfo(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 218
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 220
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->deleteTocRecord(Ljava/lang/String;)V

    .line 222
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->deleteModeRecord(Ljava/lang/String;)V

    .line 223
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->deleteDlRecord(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 206
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->delete(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 208
    return-void
.end method

.method public static deleteAndSync(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->delete(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/h;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/event/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method private static deleteDlRecord(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->delete(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private static deleteModeRecord(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->delete(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private static deleteTocRecord(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->deleteByBookId(Ljava/lang/String;)V

    .line 237
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->deleteByBookId(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    .locals 4

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "book_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    goto :goto_0
.end method

.method public static getAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 144
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "deleted = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllFeedFat()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 156
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "feeding = ? AND feedFat = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllFeeding()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 148
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "feeding = ? "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllFeedingOrderByCount()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 152
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "feeding = ? "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "(chapterCount - chapterCountAtFeed) DESC"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllNoFeed()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 178
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "deleted = ? AND feeding = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllNotDeleted()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 168
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "deleted = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "is_top DESC,readTime DESC"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllWithDelNoFeed()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 174
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "feeding = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllWithTopNoFeed()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 160
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "deleted = ? AND feeding = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "is_top DESC,updated DESC"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllWithTopNoFeedByRead()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 164
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "deleted = ? AND feeding = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "is_top DESC,readTime DESC"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    .locals 4

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "book_id = ? AND deleted = 0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    goto :goto_0
.end method

.method public static trulyDelete(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 202
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "book_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 203
    return-void
.end method


# virtual methods
.method public buildDesc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 547
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->last_chapter:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->book_id:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterCount()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->chapterCount:I

    return v0
.end method

.method public getChapterCountAtFeed()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->chapterCountAtFeed:I

    return v0
.end method

.method public getChapterTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->chapterTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->downloadedSource:Ljava/lang/String;

    return-object v0
.end method

.method public getFullCover()Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-covers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHave_cp()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->have_cp:I

    return v0
.end method

.method public getLastActionTime()J
    .locals 2

    .prologue
    .line 583
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->lastActionTime:J

    return-wide v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->last_chapter:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalModifiedDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->localModifiedDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 411
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->localModifiedDate:Ljava/util/Date;

    goto :goto_0
.end method

.method public getReadMode()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->readMode:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->toc_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTocIndex()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->tocIndex:I

    return v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->deleted:Z

    return v0
.end method

.method public isFeedFat()Z
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->feedFat:Z

    return v0
.end method

.method public isFeeding()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->feeding:Z

    return v0
.end method

.method public isRecommended()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->recommended:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->is_top:Z

    return v0
.end method

.method public isUnread()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->is_unread:Z

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->account:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->author:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->book_id:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public setChapterCount(I)V
    .locals 0

    .prologue
    .line 511
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->chapterCount:I

    .line 512
    return-void
.end method

.method public setChapterCountAtFeed(I)V
    .locals 0

    .prologue
    .line 519
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->chapterCountAtFeed:I

    .line 520
    return-void
.end method

.method public setChapterTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->chapterTitle:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->cover:Ljava/lang/String;

    .line 472
    return-void
.end method

.method public setDeleted(Z)V
    .locals 0

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->deleted:Z

    .line 425
    return-void
.end method

.method public setDownloadedSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->downloadedSource:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public setFeedFat(Z)V
    .locals 0

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->feedFat:Z

    .line 536
    return-void
.end method

.method public setFeeding(Z)V
    .locals 0

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->feeding:Z

    .line 528
    return-void
.end method

.method public setHave_cp(I)V
    .locals 0

    .prologue
    .line 595
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->have_cp:I

    .line 596
    return-void
.end method

.method public setLastActionTime(J)V
    .locals 1

    .prologue
    .line 587
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->lastActionTime:J

    .line 588
    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->last_chapter:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public setLocalModifiedDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->localModifiedDate:Ljava/util/Date;

    .line 417
    return-void
.end method

.method public setReadMode(I)V
    .locals 0

    .prologue
    .line 555
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->readMode:I

    .line 556
    return-void
.end method

.method public setRecommended(Z)V
    .locals 0

    .prologue
    .line 603
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->recommended:Z

    .line 604
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->title:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public setTocId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->toc_id:Ljava/lang/String;

    .line 449
    return-void
.end method

.method public setTocIndex(I)V
    .locals 0

    .prologue
    .line 571
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->tocIndex:I

    .line 572
    return-void
.end method

.method public setTop(Z)V
    .locals 0

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->is_top:Z

    .line 504
    return-void
.end method

.method public setUnread(Z)V
    .locals 0

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->is_unread:Z

    .line 496
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->updated:Ljava/util/Date;

    .line 480
    return-void
.end method
