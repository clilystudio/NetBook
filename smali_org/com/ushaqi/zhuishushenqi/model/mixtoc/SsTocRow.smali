.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private resourceid:Ljava/lang/String;

.field private serialid:I

.field private serialname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResourceid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;->resourceid:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialid()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;->serialid:I

    return v0
.end method

.method public getSerialname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;->serialname:Ljava/lang/String;

    return-object v0
.end method

.method public setResourceid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;->resourceid:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setSerialid(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;->serialid:I

    .line 29
    return-void
.end method

.method public setSerialname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;->serialname:Ljava/lang/String;

    .line 37
    return-void
.end method
