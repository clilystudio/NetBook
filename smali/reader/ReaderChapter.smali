.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;
.super Lcom/ushaqi/zhuishushenqi/model/Chapter;
.source "SourceFile"


# static fields
.field public static final STATUS_CHAPTER_EMPTY:I = -0x3

.field public static final STATUS_CHAPTER_NOT_AVAILABLE:I = -0x2

.field public static final STATUS_CONNECTION_ERROR:I = -0x1

.field public static final STATUS_MODE_ERROR:I = -0x5

.field public static final STATUS_OK:I = 0x1

.field public static final STATUS_PENDING:I = 0x0

.field public static final STATUS_TOC_ERROR:I = -0x4


# instance fields
.field private clearContent:Ljava/lang/String;

.field private formattedBody:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private mIndex:I

.field private mMaxIndex:I

.field private mStatus:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/Chapter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mStatus:I

    return-void
.end method

.method public static create(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;II)Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->isVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setIsVip(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setTitle(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setLink(Ljava/lang/String;)V

    .line 44
    iput p1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mMaxIndex:I

    .line 45
    iput p2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mIndex:I

    .line 46
    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->key:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/CipherUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 63
    const-string v0, "  \u89e3\u6790\u9519\u8bef\uff0c\u8bf7\u9000\u51fa\u540e\u91cd\u65b0\u8fdb\u5165\u9605\u8bfb\u3002"

    .line 78
    :goto_0
    return-object v0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->isVip()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->key:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 71
    :cond_3
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->formattedBody:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 76
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->formattedBody:Ljava/lang/String;

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->formattedBody:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getBody(Lcom/ushaqi/zhuishushenqi/reader/n;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->key:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/CipherUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 89
    const-string v0, "  \u89e3\u6790\u9519\u8bef\uff0c\u8bf7\u9000\u51fa\u540e\u91cd\u65b0\u8fdb\u5165\u9605\u8bfb\u3002"

    .line 104
    :goto_0
    return-object v0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->clearContent:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->isVip()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->key:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 97
    :cond_3
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->formattedBody:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 102
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->formattedBody:Ljava/lang/String;

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->formattedBody:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mIndex:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mMaxIndex:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mStatus:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mIndex:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mMaxIndex:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mIndex:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->setBody(Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mStatus:I

    .line 53
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->key:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setMaxIndex(I)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mMaxIndex:I

    .line 133
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mStatus:I

    .line 125
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->mTitle:Ljava/lang/String;

    .line 141
    return-void
.end method
