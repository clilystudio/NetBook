.class public Lcom/ushaqi/zhuishushenqi/model/TopicSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private books:[Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public getBooks()[Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;->books:[Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 25
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;->books:[Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;->books:[Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;-><init>(Lcom/ushaqi/zhuishushenqi/model/TopicSummary;)V

    aput-object v2, v1, v0

    .line 27
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;->books:[Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;->set_id(Ljava/lang/String;)V

    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;->books:[Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;->ok:Z

    return v0
.end method

.method public setBooks([Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;->books:[Lcom/ushaqi/zhuishushenqi/model/TopicSummary$TopicSummaryBook;

    .line 35
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;->ok:Z

    .line 20
    return-void
.end method
