.class public Lcom/ushaqi/zhuishushenqi/model/Root;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5899e3097ed6607dL


# instance fields
.field private code:Ljava/lang/String;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Root;->code:Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Root;->ok:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Root;->code:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Root;->ok:Z

    .line 22
    return-void
.end method
