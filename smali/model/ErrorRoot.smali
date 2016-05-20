.class public Lcom/ushaqi/zhuishushenqi/model/ErrorRoot;
.super Lcom/ushaqi/zhuishushenqi/model/Root;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/Root;-><init>()V

    .line 8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/model/ErrorRoot;->setOk(Z)V

    .line 9
    return-void
.end method
