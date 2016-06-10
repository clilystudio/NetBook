.class public final Lu/aly/bO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/File;

.field private b:Lu/aly/as;

.field private c:J

.field private d:J

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lu/aly/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bO;->b:Lu/aly/as;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lu/aly/bO;->e:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "umeng_it.cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lu/aly/bO;->a:Ljava/io/File;

    .line 38
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lu/aly/bO;->d:J

    .line 39
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    .line 79
    new-instance v1, Lu/aly/as;

    invoke-direct {v1}, Lu/aly/as;-><init>()V

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v0, p0, Lu/aly/bO;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {v1, v3}, Lu/aly/as;->a(Ljava/util/List;)Lu/aly/as;

    .line 96
    invoke-virtual {v1, v2}, Lu/aly/as;->a(Ljava/util/Map;)Lu/aly/as;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iput-object v1, p0, Lu/aly/bO;->b:Lu/aly/as;

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 83
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/a;

    .line 84
    invoke-virtual {v0}, Lu/aly/a;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    invoke-virtual {v0}, Lu/aly/a;->d()Lu/aly/ar;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 87
    invoke-virtual {v0}, Lu/aly/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lu/aly/a;->d()Lu/aly/ar;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_2
    invoke-virtual {v0}, Lu/aly/a;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lu/aly/a;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    invoke-virtual {v0}, Lu/aly/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lu/aly/bO;->b:Lu/aly/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/bO;->b:Lu/aly/as;

    .line 1176
    if-eqz v0, :cond_0

    .line 1179
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :try_start_1
    new-instance v1, Lu/aly/bF;

    invoke-direct {v1}, Lu/aly/bF;-><init>()V

    invoke-virtual {v1, v0}, Lu/aly/bF;->a(Lu/aly/bz;)[B

    move-result-object v0

    .line 1179
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1183
    if-eqz v0, :cond_0

    .line 1184
    :try_start_2
    iget-object v1, p0, Lu/aly/bO;->a:Ljava/io/File;

    invoke-static {v1, v0}, Lu/aly/bx;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1179
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private g()Lu/aly/as;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lu/aly/bO;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    :goto_0
    return-object v0

    .line 159
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v1, p0, Lu/aly/bO;->a:Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    invoke-static {v2}, Lu/aly/bx;->b(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 162
    new-instance v1, Lu/aly/as;

    invoke-direct {v1}, Lu/aly/as;-><init>()V

    .line 163
    new-instance v4, Lu/aly/bD;

    invoke-direct {v4}, Lu/aly/bD;-><init>()V

    invoke-virtual {v4, v1, v3}, Lu/aly/bD;->a(Lu/aly/bz;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    invoke-static {v2}, Lu/aly/bx;->c(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 165
    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 167
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    invoke-static {v2}, Lu/aly/bx;->c(Ljava/io/InputStream;)V

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 169
    :goto_2
    invoke-static {v2}, Lu/aly/bx;->c(Ljava/io/InputStream;)V

    .line 170
    throw v0

    .line 168
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 166
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 51
    iget-wide v0, p0, Lu/aly/bO;->c:J

    sub-long v0, v4, v0

    iget-wide v6, p0, Lu/aly/bO;->d:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_2

    .line 52
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lu/aly/bO;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    if-eqz v1, :cond_1

    .line 66
    invoke-direct {p0}, Lu/aly/bO;->e()V

    .line 67
    invoke-direct {p0}, Lu/aly/bO;->f()V

    .line 70
    :cond_1
    iput-wide v4, p0, Lu/aly/bO;->c:J

    .line 72
    :cond_2
    return-void

    .line 54
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/a;

    .line 55
    invoke-virtual {v0}, Lu/aly/a;->c()Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v2

    .line 57
    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {v0}, Lu/aly/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 61
    goto :goto_0
.end method

.method public final a(Lu/aly/a;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lu/aly/bO;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public final b()Lu/aly/as;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lu/aly/bO;->b:Lu/aly/as;

    return-object v0
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 108
    .line 109
    iget-object v0, p0, Lu/aly/bO;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    if-eqz v1, :cond_1

    .line 119
    iget-object v0, p0, Lu/aly/bO;->b:Lu/aly/as;

    invoke-virtual {v0, v2}, Lu/aly/as;->b(Z)V

    .line 120
    invoke-direct {p0}, Lu/aly/bO;->f()V

    .line 122
    :cond_1
    return-void

    .line 109
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/a;

    .line 110
    invoke-virtual {v0}, Lu/aly/a;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    invoke-virtual {v0}, Lu/aly/a;->e()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lu/aly/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/aly/a;->a(Ljava/util/List;)V

    .line 114
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 125
    invoke-direct {p0}, Lu/aly/bO;->g()Lu/aly/as;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lu/aly/bO;->e:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iput-object v0, p0, Lu/aly/bO;->b:Lu/aly/as;

    .line 134
    iget-object v0, p0, Lu/aly/bO;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-direct {p0}, Lu/aly/bO;->e()V

    goto :goto_0

    .line 134
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/a;

    .line 135
    iget-object v3, p0, Lu/aly/bO;->b:Lu/aly/as;

    invoke-virtual {v0, v3}, Lu/aly/a;->a(Lu/aly/as;)V

    .line 137
    invoke-virtual {v0}, Lu/aly/a;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 142
    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/a;

    .line 143
    iget-object v2, p0, Lu/aly/bO;->e:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
