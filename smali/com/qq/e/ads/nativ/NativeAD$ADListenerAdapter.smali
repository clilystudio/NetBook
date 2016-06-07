.class Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# instance fields
.field private synthetic a:Lcom/qq/e/ads/nativ/NativeAD;


# direct methods
.method private constructor <init>(Lcom/qq/e/ads/nativ/NativeAD;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qq/e/ads/nativ/NativeAD;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeAD;)V

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeAD;->e(Lcom/qq/e/ads/nativ/NativeAD;)Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "No DevADListener Binded"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeAD;->e(Lcom/qq/e/ads/nativ/NativeAD;)Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;->onNoAD(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdEvent.Paras error for NativeAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeAD;->e(Lcom/qq/e/ads/nativ/NativeAD;)Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;->onADLoaded(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for NativeAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeADDataRef;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeAD$ADListenerAdapter;->a:Lcom/qq/e/ads/nativ/NativeAD;

    invoke-static {v0}, Lcom/qq/e/ads/nativ/NativeAD;->e(Lcom/qq/e/ads/nativ/NativeAD;)Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/qq/e/ads/nativ/NativeADDataRef;

    invoke-interface {v1, v0}, Lcom/qq/e/ads/nativ/NativeAD$NativeAdListener;->onADStatusChanged(Lcom/qq/e/ads/nativ/NativeADDataRef;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Paras error for NativeAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
