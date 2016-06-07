.class public final Lcom/ushaqi/zhuishushenqi/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ushaqi/zhuishushenqi/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/c;->a:Lcom/ushaqi/zhuishushenqi/util/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a()Lcom/ushaqi/zhuishushenqi/util/c;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/c;->a:Lcom/ushaqi/zhuishushenqi/util/c;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/c;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/c;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/c;->a:Lcom/ushaqi/zhuishushenqi/util/c;

    .line 41
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/c;->a:Lcom/ushaqi/zhuishushenqi/util/c;

    return-object v0
.end method

.method private static a(Lcom/ushaqi/zhuishushenqi/model/AdsConfig;)V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "saved_adverts_1"

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/io/Serializable;Ljava/lang/String;)Z

    .line 141
    return-void
.end method

.method private static d()Lcom/ushaqi/zhuishushenqi/model/AdsConfig;
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "saved_adverts_1"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 145
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Advert;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->d()Lcom/ushaqi/zhuishushenqi/model/AdsConfig;

    move-result-object v0

    .line 121
    if-nez v0, :cond_0

    move-object v0, v3

    .line 2201
    :goto_0
    return-object v0

    .line 2185
    :cond_0
    if-eqz v0, :cond_1

    .line 2188
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->getAdvertList()Ljava/util/List;

    move-result-object v4

    .line 2189
    if-eqz v4, :cond_1

    .line 2192
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->getIndex()I

    move-result v2

    .line 2193
    if-ltz v2, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    move v1, v2

    .line 2195
    :goto_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Advert;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->canShowAtPosition(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2196
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 2197
    if-ne v0, v2, :cond_3

    :cond_1
    move-object v0, v3

    .line 129
    goto :goto_0

    .line 2201
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Advert;

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 3

    .prologue
    .line 218
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->d()Lcom/ushaqi/zhuishushenqi/model/AdsConfig;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->getAdvertList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->getAdvertList()Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Advert;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/Advert;->setRead(Z)V

    .line 225
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/c;->a(Lcom/ushaqi/zhuishushenqi/model/AdsConfig;)V

    goto :goto_0
.end method

.method public final a([Lcom/ushaqi/zhuishushenqi/model/AdvertData;)Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 59
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->d()Lcom/ushaqi/zhuishushenqi/model/AdsConfig;

    move-result-object v3

    .line 64
    array-length v0, p1

    if-nez v0, :cond_2

    .line 65
    if-eqz v3, :cond_0

    .line 1107
    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/util/c;->a(Lcom/ushaqi/zhuishushenqi/model/AdsConfig;)V

    move v1, v4

    .line 69
    goto :goto_0

    .line 2091
    :cond_2
    array-length v0, p1

    new-array v6, v0, [Lcom/ushaqi/zhuishushenqi/model/Advert;

    move v0, v1

    .line 2092
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 2093
    aget-object v7, p1, v0

    .line 2095
    invoke-virtual {v7}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->isApk()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2096
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/MyApkAdvert;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/MyApkAdvert;-><init>()V

    .line 2100
    :goto_2
    invoke-virtual {v2, v7}, Lcom/ushaqi/zhuishushenqi/model/Advert;->setData(Lcom/ushaqi/zhuishushenqi/model/AdvertData;)V

    .line 2101
    aput-object v2, v6, v0

    .line 2092
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2098
    :cond_3
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/MyUrlAdvert;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/MyUrlAdvert;-><init>()V

    goto :goto_2

    .line 74
    :cond_4
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2154
    if-nez v0, :cond_5

    move-object v2, v5

    .line 76
    :goto_3
    if-nez v3, :cond_6

    .line 77
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;-><init>()V

    .line 84
    :goto_4
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->setAdvertList(Ljava/util/List;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->setIndex(I)V

    .line 86
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/c;->a(Lcom/ushaqi/zhuishushenqi/model/AdsConfig;)V

    move v1, v4

    .line 87
    goto :goto_0

    .line 2157
    :cond_5
    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/d;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/util/d;-><init>(Lcom/ushaqi/zhuishushenqi/util/c;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v2, v0

    .line 2163
    goto :goto_3

    .line 79
    :cond_6
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->getAdvertList()Ljava/util/List;

    move-result-object v5

    .line 2170
    if-eqz v2, :cond_7

    if-nez v5, :cond_8

    :cond_7
    move v0, v1

    .line 80
    :goto_5
    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_4

    .line 2173
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eq v0, v6, :cond_9

    move v0, v1

    .line 2174
    goto :goto_5

    .line 2176
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Advert;

    .line 2177
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 2178
    goto :goto_5

    :cond_b
    move v0, v4

    .line 2181
    goto :goto_5
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 208
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->d()Lcom/ushaqi/zhuishushenqi/model/AdsConfig;

    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 213
    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->setLastDeleteTime(J)V

    .line 214
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/c;->a(Lcom/ushaqi/zhuishushenqi/model/AdsConfig;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->d()Lcom/ushaqi/zhuishushenqi/model/AdsConfig;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->getAdvertList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->getAdvertList()Ljava/util/List;

    move-result-object v1

    .line 235
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 236
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->getIndex()I

    move-result v2

    .line 240
    add-int/lit8 v2, v2, 0x1

    rem-int v1, v2, v1

    .line 241
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig;->setIndex(I)V

    .line 242
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/c;->a(Lcom/ushaqi/zhuishushenqi/model/AdsConfig;)V

    goto :goto_0
.end method
