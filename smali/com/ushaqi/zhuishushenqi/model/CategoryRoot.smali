.class public Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private female:[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;

.field private male:[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getFemale()[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;->female:[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;

    return-object v0
.end method

.method public getMale()[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;->male:[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;->ok:Z

    return v0
.end method

.method public setFemale([Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;->female:[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;

    .line 37
    return-void
.end method

.method public setMale([Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;->male:[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;

    .line 29
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;->ok:Z

    .line 21
    return-void
.end method
