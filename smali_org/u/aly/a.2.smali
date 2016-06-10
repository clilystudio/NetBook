.class public abstract Lu/aly/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/aq;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lu/aly/ar;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lu/aly/a;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lu/aly/aq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/a;->b:Ljava/util/List;

    .line 89
    return-void
.end method

.method public final a(Lu/aly/as;)V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p1}, Lu/aly/as;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "mName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ar;

    iput-object v0, p0, Lu/aly/a;->c:Lu/aly/ar;

    .line 118
    invoke-virtual {p1}, Lu/aly/as;->j()Ljava/util/List;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 121
    iget-object v1, p0, Lu/aly/a;->b:Ljava/util/List;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu/aly/a;->b:Ljava/util/List;

    .line 125
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    :cond_2
    return-void

    .line 125
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/aq;

    .line 126
    iget-object v2, p0, Lu/aly/a;->a:Ljava/lang/String;

    iget-object v3, v0, Lu/aly/aq;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lu/aly/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 23
    .line 1039
    iget-object v2, p0, Lu/aly/a;->c:Lu/aly/ar;

    .line 1041
    if-nez v2, :cond_5

    move-object v5, v3

    .line 1042
    :goto_0
    if-nez v2, :cond_6

    move v0, v1

    .line 1043
    :goto_1
    invoke-virtual {p0}, Lu/aly/a;->f()Ljava/lang/String;

    move-result-object v4

    .line 1092
    if-nez v4, :cond_7

    .line 1045
    :cond_0
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1046
    if-nez v2, :cond_1

    new-instance v2, Lu/aly/ar;

    invoke-direct {v2}, Lu/aly/ar;-><init>()V

    .line 1048
    :cond_1
    invoke-virtual {v2, v3}, Lu/aly/ar;->a(Ljava/lang/String;)Lu/aly/ar;

    .line 1049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lu/aly/ar;->a(J)Lu/aly/ar;

    .line 1050
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lu/aly/ar;->a(I)Lu/aly/ar;

    .line 1052
    new-instance v0, Lu/aly/aq;

    invoke-direct {v0}, Lu/aly/aq;-><init>()V

    .line 1053
    iget-object v4, p0, Lu/aly/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lu/aly/aq;->a(Ljava/lang/String;)Lu/aly/aq;

    .line 1054
    invoke-virtual {v0, v3}, Lu/aly/aq;->c(Ljava/lang/String;)Lu/aly/aq;

    .line 1055
    invoke-virtual {v0, v5}, Lu/aly/aq;->b(Ljava/lang/String;)Lu/aly/aq;

    .line 1056
    invoke-virtual {v2}, Lu/aly/ar;->f()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lu/aly/aq;->a(J)Lu/aly/aq;

    .line 1058
    iget-object v3, p0, Lu/aly/a;->b:Ljava/util/List;

    if-nez v3, :cond_2

    .line 1059
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lu/aly/a;->b:Ljava/util/List;

    .line 1062
    :cond_2
    iget-object v3, p0, Lu/aly/a;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    iget-object v0, p0, Lu/aly/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_3

    .line 1065
    iget-object v0, p0, Lu/aly/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1068
    :cond_3
    iput-object v2, p0, Lu/aly/a;->c:Lu/aly/ar;

    .line 1069
    const/4 v1, 0x1

    :cond_4
    return v1

    .line 1041
    :cond_5
    invoke-virtual {v2}, Lu/aly/ar;->c()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 1042
    :cond_6
    invoke-virtual {v2}, Lu/aly/ar;->j()I

    move-result v0

    goto :goto_1

    .line 1096
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1098
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1102
    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1106
    const-string v6, "unknown"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v4

    .line 1110
    goto/16 :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lu/aly/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lu/aly/a;->c:Lu/aly/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/a;->c:Lu/aly/ar;

    invoke-virtual {v0}, Lu/aly/ar;->j()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Lu/aly/ar;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lu/aly/a;->c:Lu/aly/ar;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lu/aly/aq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lu/aly/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method
