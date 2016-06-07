.class public Lcom/ushaqi/zhuishushenqi/model/CategoryBook;
.super Lcom/ushaqi/zhuishushenqi/model/BookSummary;
.source "SourceFile"


# instance fields
.field private majorCate:Ljava/lang/String;

.field private minorCate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;-><init>()V

    return-void
.end method


# virtual methods
.method public getMajorCate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->majorCate:Ljava/lang/String;

    return-object v0
.end method

.method public getMinorCate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->minorCate:Ljava/lang/String;

    return-object v0
.end method

.method public setMajorCate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->majorCate:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setMinorCate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->minorCate:Ljava/lang/String;

    .line 25
    return-void
.end method
