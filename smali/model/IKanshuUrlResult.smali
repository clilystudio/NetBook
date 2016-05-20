.class public Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private links:[Ljava/lang/String;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLinks()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;->links:[Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;->ok:Z

    return v0
.end method

.method public setLinks([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;->links:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;->ok:Z

    .line 25
    return-void
.end method
