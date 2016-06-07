.class public Lcom/ushaqi/zhuishushenqi/model/BookListRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private books:[Lcom/ushaqi/zhuishushenqi/model/CategoryBook;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooks()[Lcom/ushaqi/zhuishushenqi/model/CategoryBook;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookListRoot;->books:[Lcom/ushaqi/zhuishushenqi/model/CategoryBook;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookListRoot;->ok:Z

    return v0
.end method

.method public setBooks([Lcom/ushaqi/zhuishushenqi/model/CategoryBook;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookListRoot;->books:[Lcom/ushaqi/zhuishushenqi/model/CategoryBook;

    .line 25
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookListRoot;->ok:Z

    .line 17
    return-void
.end method
