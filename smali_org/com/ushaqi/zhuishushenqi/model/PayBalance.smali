.class public Lcom/ushaqi/zhuishushenqi/model/PayBalance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private balance:I

.field private ok:Z

.field private voucherBalance:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->balance:I

    return v0
.end method

.method public getVoucherBalance()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->voucherBalance:I

    return v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->ok:Z

    return v0
.end method

.method public setBalance(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->balance:I

    .line 29
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->ok:Z

    .line 21
    return-void
.end method

.method public setVoucherBalance(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->voucherBalance:I

    .line 37
    return-void
.end method
