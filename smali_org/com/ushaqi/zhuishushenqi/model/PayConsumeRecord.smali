.class public Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private orders:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method


# virtual methods
.method public getOrders()[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;->orders:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;->ok:Z

    .line 22
    return-void
.end method

.method public setOrders([Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;->orders:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;

    .line 30
    return-void
.end method
