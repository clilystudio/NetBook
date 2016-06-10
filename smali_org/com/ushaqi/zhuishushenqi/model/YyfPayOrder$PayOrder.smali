.class public Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private amount:I

.field private appOrderid:Ljava/lang/String;

.field private payName:Ljava/lang/String;

.field private spPayCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;->amount:I

    return v0
.end method

.method public getAppOrderid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;->appOrderid:Ljava/lang/String;

    return-object v0
.end method

.method public getPayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;->payName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpPayCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;->spPayCode:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;->amount:I

    .line 50
    return-void
.end method

.method public setAppOrderid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;->appOrderid:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;->payName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSpPayCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;->spPayCode:Ljava/lang/String;

    .line 66
    return-void
.end method
