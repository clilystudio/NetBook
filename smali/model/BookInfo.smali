.class public Lcom/ushaqi/zhuishushenqi/model/BookInfo;
.super Lcom/ushaqi/zhuishushenqi/model/BookSummary;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x788a7202b4586391L


# instance fields
.field private chaptersCount:I

.field private hasCp:Z

.field private isSerial:Z

.field private longIntro:Ljava/lang/String;

.field private postCount:I

.field private serializeWordCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->serializeWordCount:I

    return-void
.end method


# virtual methods
.method public getChaptersCount()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->chaptersCount:I

    return v0
.end method

.method public getIsSerial()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->isSerial:Z

    return v0
.end method

.method public getLongIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->longIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getPostCount()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->postCount:I

    return v0
.end method

.method public getSerializeWordCount()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->serializeWordCount:I

    return v0
.end method

.method public isHasCp()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->hasCp:Z

    return v0
.end method

.method public setChaptersCount(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->chaptersCount:I

    .line 56
    return-void
.end method

.method public setHasCp(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->hasCp:Z

    .line 64
    return-void
.end method

.method public setIsSerial(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->isSerial:Z

    .line 32
    return-void
.end method

.method public setLongIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->longIntro:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPostCount(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->postCount:I

    .line 48
    return-void
.end method

.method public setSerializeWordCount(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->serializeWordCount:I

    .line 40
    return-void
.end method
