.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private book:Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;

.field private chapter:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBook()Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->book:Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;

    return-object v0
.end method

.method public getChapter()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->chapter:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;

    return-object v0
.end method

.method public setBook(Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->book:Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;

    .line 20
    return-void
.end method

.method public setChapter([Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->chapter:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;

    .line 28
    return-void
.end method
