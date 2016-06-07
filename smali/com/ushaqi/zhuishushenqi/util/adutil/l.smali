.class public final Lcom/ushaqi/zhuishushenqi/util/adutil/l;
.super Lcom/ushaqi/zhuishushenqi/util/adutil/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Lcom/androidquery/a;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/adutil/a;-><init>(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->g:Z

    .line 35
    return-void
.end method

.method private static varargs a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 107
    if-nez p2, :cond_0

    .line 109
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 114
    :goto_0
    invoke-virtual {v0, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    :goto_1
    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 124
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 117
    :catch_1
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 119
    :catch_2
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 121
    :catch_3
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->e:Ljava/lang/Class;

    const-string v1, "onClicked"

    const-class v2, Landroid/view/View;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->f:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->d:Landroid/view/View;

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public final a(Landroid/view/View;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 40
    .line 1022
    :try_start_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/a;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a()V

    .line 41
    new-instance v2, Lcom/androidquery/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/androidquery/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->b:Lcom/androidquery/a;

    .line 42
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->c:Landroid/view/View;

    .line 43
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->c:Landroid/view/View;

    const v3, 0x7f0c0190

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->d:Landroid/view/View;

    .line 44
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->d:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const-string v2, "com.qq.e.ads.nativ.NativeAD$NativeAdListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 50
    const-string v4, "com.qq.e.ads.nativ.NativeAD"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 51
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    .line 52
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "1104888432"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "4040702741756839"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    aput-object v3, v2, v6

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    const-string v3, "loadAD"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 57
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v3, "com.qq.e.ads.cfg.DownAPPConfirmPolicy"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    .line 61
    const-string v6, "setDownAPPConfirmPolicy"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 62
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-object v5, v5, v7

    aput-object v5, v4, v6

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_1
    :goto_1
    return-object v8

    .line 73
    :sswitch_0
    const-string v4, "onADLoaded"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string v4, "onNoAD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 75
    :pswitch_0
    const-string v0, "com.qq.e.ads.nativ.NativeADDataRef"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->e:Ljava/lang/Class;

    .line 76
    aget-object v0, p3, v3

    check-cast v0, Ljava/util/List;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 79
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->e:Ljava/lang/Class;

    const-string v5, "isAPP"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v8, v4, v6}, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->setApk(Z)V

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->isApk()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Z)V

    .line 82
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/l;)V

    .line 83
    iput-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->f:Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->e:Ljava/lang/Class;

    const-string v5, "getImgUrl"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v8, v4, v6}, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->setImg(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->b:Lcom/androidquery/a;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/androidquery/a;->a(Landroid/view/View;)Lcom/androidquery/b;

    move-result-object v0

    check-cast v0, Lcom/androidquery/a;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->e:Ljava/lang/Class;

    const-string v5, "getImgUrl"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v8, v4, v6}, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/androidquery/a;->a(Ljava/lang/String;ZZ)Lcom/androidquery/b;

    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->e:Ljava/lang/Class;

    const-string v1, "onExposured"

    const-class v5, Landroid/view/View;

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->c:Landroid/view/View;

    aput-object v7, v6, v3

    invoke-static {v0, v1, v5, v4, v6}, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->b()V

    .line 89
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->g:Z

    move v0, v2

    .line 92
    :goto_2
    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->c()V

    goto/16 :goto_1

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->c()V

    goto/16 :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    .line 73
    :sswitch_data_0
    .sparse-switch
        -0x69720319 -> :sswitch_0
        -0x3c62dbdd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->g:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/l;->a()V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x7f0c0190
        :pswitch_0
    .end packed-switch
.end method
