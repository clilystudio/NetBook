.class final Lcom/ushaqi/zhuishushenqi/util/adutil/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/m;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 60
    :cond_1
    return-object v8

    .line 40
    :sswitch_0
    const-string v3, "onADLoaded"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "onNoAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 42
    :pswitch_0
    const-string v0, "com.qq.e.ads.nativ.NativeADDataRef"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 43
    aget-object v0, p3, v1

    check-cast v0, Ljava/util/List;

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 45
    new-instance v4, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer$GdtAdvert;

    invoke-direct {v4}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer$GdtAdvert;-><init>()V

    .line 46
    new-instance v5, Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-direct {v5}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;-><init>()V

    .line 47
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getTitle"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v8, v3, v7}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->setTitle(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "isAPP"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v8, v3, v7}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->setApk(Z)V

    .line 49
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getIconUrl"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v8, v3, v7}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->setImg(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getDesc"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v8, v3, v7}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->setDesc(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer$GdtAdvert;->setResponse(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer$GdtAdvert;->setData(Lcom/ushaqi/zhuishushenqi/model/AdvertData;)V

    .line 53
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v3, Lcom/ushaqi/zhuishushenqi/event/B;

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/m;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/event/B;-><init>(Lcom/ushaqi/zhuishushenqi/model/Advert;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 40
    :sswitch_data_0
    .sparse-switch
        -0x69720319 -> :sswitch_0
        -0x3c62dbdd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
