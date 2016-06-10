.class public Lcom/ushaqi/zhuishushenqi/model/BookShelf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SHELF_AD:I = 0x1

.field public static final SHELF_ALBUM:I = 0x4

.field public static final SHELF_BOOK:I = 0x0

.field public static final SHELF_FEED:I = 0x3

.field public static final SHELF_TXT:I = 0x2

.field public static final TYPE_COUNT:I = 0x5


# instance fields
.field private adIndex:I

.field private lastRead:J

.field private lastUpdate:J

.field private mAdvert:Lcom/ushaqi/zhuishushenqi/model/Advert;

.field private mAlbum:Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

.field private mBookFeed:Lcom/ushaqi/zhuishushenqi/model/BookFeed;

.field private mBookRecord:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

.field private mTxt:Lcom/ushaqi/zhuishushenqi/db/BookFile;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->adIndex:I

    return-void
.end method


# virtual methods
.method public getAdIndex()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->adIndex:I

    return v0
.end method

.method public getAdvert()Lcom/ushaqi/zhuishushenqi/model/Advert;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mAdvert:Lcom/ushaqi/zhuishushenqi/model/Advert;

    return-object v0
.end method

.method public getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mAlbum:Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    return-object v0
.end method

.method public getBookFeed()Lcom/ushaqi/zhuishushenqi/model/BookFeed;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mBookFeed:Lcom/ushaqi/zhuishushenqi/model/BookFeed;

    return-object v0
.end method

.method public getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mBookRecord:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    return-object v0
.end method

.method public getLastRead()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->lastRead:J

    return-wide v0
.end method

.method public getLastUpdate()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->lastUpdate:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mBookRecord:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mBookRecord:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mTxt:Lcom/ushaqi/zhuishushenqi/db/BookFile;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mTxt:Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mAdvert:Lcom/ushaqi/zhuishushenqi/model/Advert;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mAdvert:Lcom/ushaqi/zhuishushenqi/model/Advert;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mAlbum:Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mAlbum:Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public getTxt()Lcom/ushaqi/zhuishushenqi/db/BookFile;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mTxt:Lcom/ushaqi/zhuishushenqi/db/BookFile;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mType:I

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mBookRecord:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mBookRecord:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isTop()Z

    move-result v0

    .line 82
    :goto_0
    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mTxt:Lcom/ushaqi/zhuishushenqi/db/BookFile;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mTxt:Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->isTop()Z

    move-result v0

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mAlbum:Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mAlbum:Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->isTop()Z

    move-result v0

    goto :goto_0

    .line 82
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdIndex(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->adIndex:I

    .line 131
    return-void
.end method

.method public setAdvert(Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mAdvert:Lcom/ushaqi/zhuishushenqi/model/Advert;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mType:I

    .line 54
    return-void
.end method

.method public setAlbum(Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mAlbum:Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    .line 122
    const/4 v0, 0x4

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mType:I

    .line 123
    return-void
.end method

.method public setBookFeed(Lcom/ushaqi/zhuishushenqi/model/BookFeed;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mBookFeed:Lcom/ushaqi/zhuishushenqi/model/BookFeed;

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mType:I

    .line 72
    return-void
.end method

.method public setBookRecord(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mBookRecord:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mType:I

    .line 45
    return-void
.end method

.method public setLastRead(J)V
    .locals 1

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->lastRead:J

    .line 110
    return-void
.end method

.method public setLastUpdate(J)V
    .locals 1

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->lastUpdate:J

    .line 118
    return-void
.end method

.method public setTxt(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mTxt:Lcom/ushaqi/zhuishushenqi/db/BookFile;

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->mType:I

    .line 63
    return-void
.end method
