.class public Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;",
        ">;"
    }
.end annotation


# instance fields
.field private bookId:Ljava/lang/String;

.field private createTime:J

.field private tocHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->bookId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->tocHost:Ljava/lang/String;

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->createTime:J

    .line 20
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;)I
    .locals 4

    .prologue
    .line 61
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->createTime:J

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->getCreateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;

    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->compareTo(Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    :try_start_0
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;

    .line 51
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->bookId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->bookId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->tocHost:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->tocHost:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->createTime:J

    return-wide v0
.end method

.method public getTocHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->tocHost:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->bookId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->tocHost:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->bookId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->bookId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->createTime:J

    .line 70
    return-void
.end method

.method public setTocHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;->tocHost:Ljava/lang/String;

    .line 36
    return-void
.end method
