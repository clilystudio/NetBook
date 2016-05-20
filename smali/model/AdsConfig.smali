.class public Lcom/ushaqi/zhuishushenqi/model/AdsConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4c98470224f6b99dL


# instance fields
.field private advertList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Advert;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private lastDeleteTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvertList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Advert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->advertList:Ljava/util/List;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->index:I

    return v0
.end method

.method public getLastDeleteTime()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->lastDeleteTime:J

    return-wide v0
.end method

.method public setAdvertList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Advert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->advertList:Ljava/util/List;

    .line 23
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->index:I

    .line 39
    return-void
.end method

.method public setLastDeleteTime(J)V
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->lastDeleteTime:J

    .line 31
    return-void
.end method
