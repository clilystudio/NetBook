.class final Lcom/ushaqi/zhuishushenqi/util/adutil/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 57
    :cond_1
    return-object v8

    .line 35
    :sswitch_0
    const-string v3, "onNativeLoad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "onNativeFail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 37
    :pswitch_0
    const-string v0, "com.baidu.mobad.feeds.NativeResponse"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 38
    aget-object v0, p3, v1

    check-cast v0, Ljava/util/List;

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 40
    new-instance v4, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;

    invoke-direct {v4}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;-><init>()V

    .line 41
    new-instance v5, Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-direct {v5}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;-><init>()V

    .line 42
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getTitle"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v8, v3, v7}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->setTitle(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getAppSize"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v8, v3, v7}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->setApkSize(I)V

    .line 44
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "isDownloadApp"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v8, v3, v7}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->setApk(Z)V

    .line 45
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getIconUrl"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v8, v3, v7}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->setImg(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getDesc"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v8, v3, v7}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->setDesc(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;->setResponse(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;->setData(Lcom/ushaqi/zhuishushenqi/model/AdvertData;)V

    .line 49
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v3, Lcom/ushaqi/zhuishushenqi/event/B;

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/h;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/event/B;-><init>(Lcom/ushaqi/zhuishushenqi/model/Advert;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 35
    :sswitch_data_0
    .sparse-switch
        -0x7fe2e8ec -> :sswitch_1
        -0x7fdffb24 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
