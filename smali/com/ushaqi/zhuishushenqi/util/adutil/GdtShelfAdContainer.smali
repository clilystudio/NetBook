.class public final Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;
.super Lcom/ushaqi/zhuishushenqi/util/adutil/k;
.source "SourceFile"
# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field
# direct methods
.method public constructor <init>()V
    .locals 0
    .prologue
    p0.<init>();
    return;
.end method
.method static synthetic a()Ljava/lang/Class;
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;->a;
    return v0;
.end method
.method static synthetic a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .prologue
    sput-object p0, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;->a:Ljava/lang/Class;
    return p0;
.end method
# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .prologue
    v4 = 0x3;
    v3 = 0x2;
    v0 = 0x0;
    v2 = 0x1;
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;->c()Z
    move-result v1
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :try_start_0
    v1 = "com.qq.e.ads.nativ.NativeAD$NativeAdListener";
    v1 = Ljava/lang/Class.forName(v1);
    v5 = v1.getClassLoader();
    v6 = 0x1;
    new-array v6, v6, [Ljava/lang/Class;
    v7 = 0x0;
    v6[v7] = v1;
    v7 = new m();
    v7.<init>(p0, p2);
    v5 = Ljava/lang/reflect/Proxy.newProxyInstance(v5, v6, v7);
    v6 = "com.qq.e.ads.nativ.NativeAD";
    v6 = Ljava/lang/Class.forName(v6);
    v7 = 0x4;
    new-array v7, v7, [Ljava/lang/Class;
    v8 = 0x0;
    v9 = Landroid/content/Context;;
    v7[v8] = v9;
    v8 = 0x1;
    v9 = Ljava/lang/String;;
    v7[v8] = v9;
    v8 = 0x2;
    v9 = Ljava/lang/String;;
    v7[v8] = v9;
    v8 = 0x3;
    v7[v8] = v1;
    v1 = 0x4;
    new-array v8, v1, [Ljava/lang/Object;
    v1 = 0x0;
    v8[v1] = p1;
    v1 = 0x1;
    v9 = "1104888432";
    v8[v1] = v9;
    v9 = 0x2;
    v1 = -0x1;
    v10 = p2.hashCode();
    sparse-switch v10, :sswitch_data_0
    :cond_0
    v0 = v1;
    :goto_0
    packed-switch v0, :pswitch_data_0
    v0 = "6000100621268802";
    :goto_1
    v8[v9] = v0;
    v0 = 0x3;
    v8[v0] = v5;
    v0 = v6.getConstructor(v7);
    v0 = v0.newInstance(v8);
    v1 = "loadAD";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Class;
    v3 = 0x0;
    v4 = Ljava/lang/Integer;->TYPE;
    v2[v3] = v4;
    v1 = v6.getDeclaredMethod(v1, v2);
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v4 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1.invoke(v0, v2);
    v1 = "com.qq.e.ads.cfg.DownAPPConfirmPolicy";
    v1 = Ljava/lang/Class.forName(v1);
    v2 = v1.getEnumConstants();
    v3 = "setDownAPPConfirmPolicy";
    v4 = 0x1;
    new-array v4, v4, [Ljava/lang/Class;
    v5 = 0x0;
    v4[v5] = v1;
    v1 = v6.getDeclaredMethod(v3, v4);
    v3 = 0x1;
    new-array v3, v3, [Ljava/lang/Object;
    v4 = 0x0;
    v5 = 0x1;
    v2 = v2[v5];
    v3[v4] = v2;
    v1.invoke(v0, v3);
    :cond_1
    :goto_2
    return;
    :sswitch_0
    v2 = "top";
    v2 = p2.equals(v2);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    goto :goto_0
    :sswitch_1
    v0 = "bookshelf";
    v0 = p2.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v2;
    goto :goto_0
    :sswitch_2
    v0 = "book";
    v0 = p2.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v3;
    goto :goto_0
    :sswitch_3
    v0 = "page";
    v0 = p2.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v4;
    goto :goto_0
    :pswitch_0
    v0 = "6000100621268802";
    goto :goto_1
    :pswitch_1
    v0 = "5050108773429867";
    goto :goto_1
    :pswitch_2
    v0 = "8050804783531153";
    goto :goto_1
    :pswitch_3
    v0 = "7060904703332144";
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    goto :goto_1
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_2
    :catch_1
    move-exception v0
    v0.printStackTrace();
    goto :goto_2
    :catch_2
    move-exception v0
    v0.printStackTrace();
    goto :goto_2
    :catch_3
    move-exception v0
    v0.printStackTrace();
    goto :goto_2
    :catch_4
    move-exception v0
    v0.printStackTrace();
    goto :goto_2
    :sswitch_data_0
    .sparse-switch
        0x1c155 -> :sswitch_0
        0x2e3ae9 -> :sswitch_2
        0x34628f -> :sswitch_3
        0x79c48ce1 -> :sswitch_1
    .end sparse-switch
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
