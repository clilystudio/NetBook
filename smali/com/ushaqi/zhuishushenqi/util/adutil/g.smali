.class public final Lcom/ushaqi/zhuishushenqi/util/adutil/g;
.super Lcom/ushaqi/zhuishushenqi/util/adutil/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/adutil/a;-><init>(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 25
    .line 1022
    :try_start_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/a;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a()V

    .line 26
    const-string v2, "com.baidu.mobads.SplashAdListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 28
    const-string v4, "com.baidu.mobads.SplashAd"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 29
    const-string v5, "com.baidu.mobads.SplashAd$SplashType"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 30
    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    .line 31
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/view/ViewGroup;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    const/4 v2, 0x3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    const/4 v2, 0x4

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    const/4 v2, 0x5

    aput-object v5, v7, v2

    .line 32
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v2, v5

    const/4 v5, 0x1

    aput-object p1, v2, v5

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v5, "2009524"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const/4 v5, 0x1

    aget-object v5, v6, v5

    aput-object v5, v2, v3

    .line 33
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return v0

    .line 36
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 45
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
    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 45
    :sswitch_0
    const-string v3, "onAdDismissed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "onAdFailed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "onAdPresent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "onAdClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/g;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->c()V

    goto :goto_1

    .line 53
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/g;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Z)V

    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/g;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->b()V

    goto :goto_1

    .line 57
    :pswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/g;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->d()V

    goto :goto_1

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x969e846 -> :sswitch_3
        0x104de3f9 -> :sswitch_2
        0x2856c93f -> :sswitch_1
        0x74d9d867 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
