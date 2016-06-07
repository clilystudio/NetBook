.class public Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getData()[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;->data:[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;->ok:Z

    return v0
.end method

.method public setData([Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;->data:[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;

    .line 19
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;->ok:Z

    .line 27
    return-void
.end method
