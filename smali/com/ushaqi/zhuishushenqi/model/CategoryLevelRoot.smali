.class public Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private female:[Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;

.field private male:[Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getFemale()[Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;->female:[Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;

    return-object v0
.end method

.method public getMale()[Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;->male:[Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;->ok:Z

    return v0
.end method

.method public setFemale([Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;->female:[Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;

    .line 20
    return-void
.end method

.method public setMale([Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;->male:[Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;

    .line 28
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;->ok:Z

    .line 36
    return-void
.end method
