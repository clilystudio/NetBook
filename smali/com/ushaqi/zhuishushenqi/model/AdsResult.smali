.class public Lcom/ushaqi/zhuishushenqi/model/AdsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adverts:[Lcom/ushaqi/zhuishushenqi/model/AdvertData;

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
.method public getAdverts()[Lcom/ushaqi/zhuishushenqi/model/AdvertData;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdsResult;->adverts:[Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdsResult;->ok:Z

    return v0
.end method

.method public setAdverts([Lcom/ushaqi/zhuishushenqi/model/AdvertData;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdsResult;->adverts:[Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    .line 25
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdsResult;->ok:Z

    .line 17
    return-void
.end method
