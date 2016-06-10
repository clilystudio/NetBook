.class public Lu/aly/ab;
.super Lu/aly/ao;
.source "SourceFile"

# interfaces
.implements Lu/aly/cx;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;JI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lu/aly/ao;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lu/aly/ab;->a(Ljava/lang/String;)Lu/aly/ao;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lu/aly/ab;->b(J)Lu/aly/ao;

    .line 22
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1035
    const/4 v0, 0x0

    .line 1038
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1039
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v0

    .line 1044
    :cond_0
    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 23
    :cond_1
    invoke-virtual {p0, v4}, Lu/aly/ab;->a(Ljava/util/Map;)Lu/aly/ao;

    .line 26
    :cond_2
    if-lez p5, :cond_a

    :goto_1
    invoke-virtual {p0, p5}, Lu/aly/ab;->a(I)Lu/aly/ao;

    .line 28
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_3

    .line 29
    invoke-virtual {p0, p3, p4}, Lu/aly/ab;->a(J)Lu/aly/ao;

    .line 31
    :cond_3
    return-void

    .line 1045
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1047
    new-instance v5, Lu/aly/az;

    invoke-direct {v5}, Lu/aly/az;-><init>()V

    .line 1049
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1050
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1051
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lu/aly/az;->b(Ljava/lang/String;)V

    .line 1062
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lu/aly/az;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1052
    :cond_6
    instance-of v6, v1, Ljava/lang/Long;

    if-eqz v6, :cond_7

    .line 1053
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/az;->b(J)V

    goto :goto_2

    .line 1054
    :cond_7
    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_8

    .line 1055
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/az;->b(J)V

    goto :goto_2

    .line 1056
    :cond_8
    instance-of v6, v1, Ljava/lang/Float;

    if-eqz v6, :cond_9

    .line 1057
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/az;->b(J)V

    goto :goto_2

    .line 1058
    :cond_9
    instance-of v6, v1, Ljava/lang/Double;

    if-eqz v6, :cond_5

    .line 1059
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/aly/az;->b(J)V

    goto :goto_2

    .line 26
    :cond_a
    const/4 p5, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lu/aly/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lu/aly/aa;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lu/aly/aa;

    invoke-direct {v0}, Lu/aly/aa;-><init>()V

    .line 76
    iput-object p0, v0, Lu/aly/aa;->b:Ljava/lang/String;

    .line 77
    iput-object p1, v0, Lu/aly/aa;->c:Ljava/lang/String;

    .line 78
    iput-object p2, v0, Lu/aly/aa;->d:Ljava/util/Map;

    .line 80
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lu/aly/bf;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1}, Lu/aly/bf;->s()I

    move-result v0

    if-lez v0, :cond_1

    .line 91
    invoke-virtual {p1}, Lu/aly/bf;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move-object v0, v1

    .line 99
    :goto_0
    if-nez v0, :cond_2

    .line 100
    new-instance v0, Lu/aly/av;

    invoke-direct {v0}, Lu/aly/av;-><init>()V

    .line 101
    invoke-virtual {v0, p2}, Lu/aly/av;->a(Ljava/lang/String;)Lu/aly/av;

    .line 102
    invoke-virtual {p1, v0}, Lu/aly/bf;->a(Lu/aly/av;)V

    .line 105
    :cond_2
    invoke-virtual {v0, p0}, Lu/aly/av;->a(Lu/aly/ao;)V

    .line 106
    return-void

    .line 91
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av;

    .line 92
    invoke-virtual {v0}, Lu/aly/av;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method
