.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private resourceid:Ljava/lang/String;

.field private rows:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;


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
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;->resourceid:Ljava/lang/String;

    return-object v0
.end method

.method public getRows()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;->rows:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;

    return-object v0
.end method

.method public setResourceid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;->resourceid:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setRows([Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;->rows:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRow;

    .line 28
    return-void
.end method
