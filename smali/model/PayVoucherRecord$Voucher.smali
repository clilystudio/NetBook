.class public Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:I

.field private accountId:Ljava/lang/String;

.field private amount:I

.field private balance:I

.field private created:Ljava/util/Date;

.field private expired:Ljava/util/Date;

.field private from:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->amount:I

    return v0
.end method

.method public getBalance()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->balance:I

    return v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getExpired()Ljava/util/Date;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->expired:Ljava/util/Date;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->from:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->_id:I

    return v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->accountId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setAmount(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->amount:I

    .line 61
    return-void
.end method

.method public setBalance(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->balance:I

    .line 69
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->created:Ljava/util/Date;

    .line 77
    return-void
.end method

.method public setExpired(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->expired:Ljava/util/Date;

    .line 85
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->from:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public set_id(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->_id:I

    .line 45
    return-void
.end method
