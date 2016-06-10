.class public Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chapterId:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->chapterId:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->ok:Z

    return v0
.end method

.method public setChapterId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->chapterId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->code:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->key:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->ok:Z

    .line 19
    return-void
.end method
