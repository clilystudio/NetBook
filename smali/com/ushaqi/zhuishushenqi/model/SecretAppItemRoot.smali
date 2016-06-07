.class public Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private apps:[Lcom/ushaqi/zhuishushenqi/model/AppItem;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/AppItem;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;->apps:[Lcom/ushaqi/zhuishushenqi/model/AppItem;

    return-void
.end method


# virtual methods
.method public getApps()[Lcom/ushaqi/zhuishushenqi/model/AppItem;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;->apps:[Lcom/ushaqi/zhuishushenqi/model/AppItem;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;->ok:Z

    return v0
.end method

.method public setApps([Lcom/ushaqi/zhuishushenqi/model/AppItem;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;->apps:[Lcom/ushaqi/zhuishushenqi/model/AppItem;

    .line 25
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;->ok:Z

    .line 17
    return-void
.end method
