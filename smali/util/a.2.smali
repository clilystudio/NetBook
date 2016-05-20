.class public final Lcom/ushaqi/zhuishushenqi/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ushaqi/zhuishushenqi/util/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/a;->a:Lcom/ushaqi/zhuishushenqi/util/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lcom/ushaqi/zhuishushenqi/util/a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/a;->a:Lcom/ushaqi/zhuishushenqi/util/a;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/a;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/a;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/a;->a:Lcom/ushaqi/zhuishushenqi/util/a;

    .line 27
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/a;->a:Lcom/ushaqi/zhuishushenqi/util/a;

    return-object v0
.end method

.method private static a(Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;)V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "saved_adverts_reader_menu"

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/io/Serializable;Ljava/lang/String;)Z

    .line 80
    return-void
.end method

.method private static d()Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "saved_adverts_reader_menu"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/MenuAd;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    if-nez p1, :cond_0

    move v0, v2

    .line 63
    :goto_0
    return v0

    .line 40
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/a;->d()Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;

    move-result-object v1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 43
    if-nez v1, :cond_1

    move v0, v2

    .line 44
    goto :goto_0

    .line 1067
    :cond_1
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/a;->a(Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;)V

    move v0, v3

    .line 47
    goto :goto_0

    .line 1092
    :cond_2
    if-nez p1, :cond_3

    move-object p1, v0

    .line 52
    :goto_1
    if-nez v1, :cond_4

    .line 53
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;-><init>()V

    .line 60
    :goto_2
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->setAdvertList(Ljava/util/List;)V

    .line 61
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->setIndex(I)V

    .line 62
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/a;->a(Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;)V

    move v0, v3

    .line 63
    goto :goto_0

    .line 1095
    :cond_3
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/b;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/b;-><init>(Lcom/ushaqi/zhuishushenqi/util/a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 55
    :cond_4
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->getAdvertList()Ljava/util/List;

    move-result-object v4

    .line 1108
    if-eqz p1, :cond_5

    if-nez v4, :cond_6

    :cond_5
    move v0, v2

    .line 56
    :goto_3
    if-eqz v0, :cond_a

    move v0, v2

    .line 57
    goto :goto_0

    .line 1111
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_7

    move v0, v2

    .line 1112
    goto :goto_3

    .line 1114
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;

    .line 1115
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 1116
    goto :goto_3

    :cond_9
    move v0, v3

    .line 1119
    goto :goto_3

    :cond_a
    move-object v0, v1

    goto :goto_2
.end method

.method public final b()Lcom/ushaqi/zhuishushenqi/model/MenuAd;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/a;->d()Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;

    move-result-object v1

    .line 72
    if-nez v1, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-object v0

    .line 1123
    :cond_1
    if-eqz v1, :cond_0

    .line 1126
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->getAdvertList()Ljava/util/List;

    move-result-object v2

    .line 1127
    if-eqz v2, :cond_0

    .line 1130
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->getIndex()I

    move-result v1

    .line 1131
    if-ltz v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1132
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/MenuAd;

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/a;->d()Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->getAdvertList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->getAdvertList()Ljava/util/List;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 145
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->getIndex()I

    move-result v2

    .line 149
    add-int/lit8 v2, v2, 0x1

    rem-int v1, v2, v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;->setIndex(I)V

    .line 151
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/a;->a(Lcom/ushaqi/zhuishushenqi/model/AdsConfig2;)V

    goto :goto_0
.end method
