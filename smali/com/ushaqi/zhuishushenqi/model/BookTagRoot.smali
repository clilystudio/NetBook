.class public Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private books:[Lcom/ushaqi/zhuishushenqi/model/BookSummary;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooks()[Lcom/ushaqi/zhuishushenqi/model/BookSummary;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;->books:[Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;->ok:Z

    return v0
.end method

.method public setBooks([Lcom/ushaqi/zhuishushenqi/model/BookSummary;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;->books:[Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 28
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;->ok:Z

    .line 20
    return-void
.end method
