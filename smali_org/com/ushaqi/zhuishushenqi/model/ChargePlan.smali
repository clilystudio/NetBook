.class public Lcom/ushaqi/zhuishushenqi/model/ChargePlan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x70f0ec4cdde1b770L


# instance fields
.field private _id:Ljava/lang/String;

.field private currency:I

.field private price:F

.field private voucher:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->currency:I

    return v0
.end method

.method public getPrice()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->price:F

    return v0
.end method

.method public getPriceDsc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 35
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->price:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->currency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8ffd\u4e66\u5e01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->voucher:I

    if-lez v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->voucher:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8ffd\u4e66\u5238"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    return-object v0
.end method

.method public getVoucher()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->voucher:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->currency:I

    .line 27
    return-void
.end method

.method public setPrice(F)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->price:F

    .line 40
    return-void
.end method

.method public setVoucher(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->voucher:I

    .line 48
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->_id:Ljava/lang/String;

    .line 56
    return-void
.end method
