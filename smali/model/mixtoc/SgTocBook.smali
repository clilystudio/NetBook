.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private author:Ljava/lang/String;

.field private book:Ljava/lang/String;

.field private md:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;->book:Ljava/lang/String;

    return-object v0
.end method

.method public getMd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;->md:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;->author:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setBook(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;->book:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setMd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;->md:Ljava/lang/String;

    .line 37
    return-void
.end method
