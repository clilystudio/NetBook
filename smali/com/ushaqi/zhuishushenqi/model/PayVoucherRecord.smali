.class public Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private vouchers:[Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getVouchers()[Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;->vouchers:[Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;->ok:Z

    .line 20
    return-void
.end method

.method public setVouchers([Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;->vouchers:[Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;

    .line 28
    return-void
.end method
