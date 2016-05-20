.class public Lcom/ushaqi/zhuishushenqi/model/DeleteResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
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
.method public isOk()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/DeleteResult;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/DeleteResult;->ok:Z

    .line 16
    return-void
.end method
