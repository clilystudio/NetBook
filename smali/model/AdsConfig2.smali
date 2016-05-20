.class public Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x426d9d89af8c6148L


# instance fields
.field private advertList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/MenuAd;",
            ">;"
        }
    .end annotation
.end field

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
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
            "Lcom/ushaqi/zhuishushenqi/model/MenuAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->advertList:Ljava/util/List;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->index:I

    return v0
.end method

.method public setAdvertList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/MenuAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->advertList:Ljava/util/List;

    .line 20
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->index:I

    .line 28
    return-void
.end method
