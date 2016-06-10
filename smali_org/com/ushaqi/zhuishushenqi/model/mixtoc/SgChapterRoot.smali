.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private book:Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterBook;

.field private content:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBook()Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterBook;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;->book:Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterBook;

    return-object v0
.end method

.method public getContent()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;->content:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;

    return-object v0
.end method

.method public setBook(Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterBook;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;->book:Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterBook;

    .line 28
    return-void
.end method

.method public setContent([Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;->content:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;

    .line 20
    return-void
.end method
