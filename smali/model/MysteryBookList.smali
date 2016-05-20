.class public Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private books:[Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getBooks()[Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;->books:[Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;->ok:Z

    return v0
.end method

.method public setBooks([Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;->books:[Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;

    .line 28
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;->ok:Z

    .line 20
    return-void
.end method
