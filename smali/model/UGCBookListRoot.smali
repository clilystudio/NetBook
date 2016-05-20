.class public Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bookLists:[Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getBookLists()[Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;->bookLists:[Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;->ok:Z

    return v0
.end method

.method public setBookLists([Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;->bookLists:[Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    .line 30
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;->ok:Z

    .line 22
    return-void
.end method
