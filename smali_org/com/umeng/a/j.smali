.class public final Lcom/umeng/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/cB;


# instance fields
.field private final a:Lcom/umeng/a/a/b;

.field private b:Landroid/content/Context;

.field private c:Lu/aly/cu;

.field private d:Lu/aly/cF;

.field private e:Lu/aly/cC;

.field private f:Lu/aly/cv;

.field private g:Lu/aly/ch;

.field private h:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/umeng/a/a/b;

    invoke-direct {v0}, Lcom/umeng/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/umeng/a/j;->a:Lcom/umeng/a/a/b;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/a/j;->b:Landroid/content/Context;

    .line 30
    new-instance v0, Lu/aly/cu;

    invoke-direct {v0}, Lu/aly/cu;-><init>()V

    iput-object v0, p0, Lcom/umeng/a/j;->c:Lu/aly/cu;

    .line 31
    new-instance v0, Lu/aly/cF;

    invoke-direct {v0}, Lu/aly/cF;-><init>()V

    iput-object v0, p0, Lcom/umeng/a/j;->d:Lu/aly/cF;

    .line 32
    new-instance v0, Lu/aly/cC;

    invoke-direct {v0}, Lu/aly/cC;-><init>()V

    iput-object v0, p0, Lcom/umeng/a/j;->e:Lu/aly/cC;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/a/j;->h:Z

    .line 39
    iget-object v0, p0, Lcom/umeng/a/j;->c:Lu/aly/cu;

    invoke-virtual {v0, p0}, Lu/aly/cu;->a(Lu/aly/cB;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/umeng/a/j;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 190
    .line 1191
    iget-object v0, p0, Lcom/umeng/a/j;->e:Lu/aly/cC;

    invoke-virtual {v0, p1}, Lu/aly/cC;->a(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method static synthetic b(Lcom/umeng/a/j;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/umeng/a/j;->e(Landroid/content/Context;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/umeng/a/j;->h:Z

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/j;->b:Landroid/content/Context;

    .line 45
    new-instance v0, Lu/aly/cv;

    iget-object v1, p0, Lcom/umeng/a/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/cv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/a/j;->f:Lu/aly/cv;

    .line 46
    iget-object v0, p0, Lcom/umeng/a/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ch;->a(Landroid/content/Context;)Lu/aly/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/j;->g:Lu/aly/ch;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/a/j;->h:Z

    .line 50
    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 197
    .line 1139
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->M(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1140
    if-eqz v0, :cond_0

    .line 1144
    const-string v1, "a_start_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1146
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/umeng/a/a;->e:Z

    if-eqz v1, :cond_1

    .line 1147
    const-string v0, "MobclickAgent"

    const-string v1, "onPause called before onResume"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/a/j;->d:Lu/aly/cF;

    invoke-virtual {v0, p1}, Lu/aly/cF;->a(Landroid/content/Context;)V

    .line 201
    iget-object v0, p0, Lcom/umeng/a/j;->g:Lu/aly/ch;

    invoke-virtual {v0}, Lu/aly/ch;->a()V

    .line 202
    return-void

    .line 1149
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1153
    const-string v1, "a_start_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1154
    const-string v1, "a_end_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1155
    const-string v1, "session_end_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/umeng/a/j;->a:Lcom/umeng/a/a/b;

    invoke-virtual {v0, p1}, Lcom/umeng/a/a/b;->a(Landroid/content/Context;)V

    .line 93
    :try_start_0
    invoke-static {p1}, Lu/aly/ch;->a(Landroid/content/Context;)Lu/aly/ch;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/a/j;->a:Lcom/umeng/a/a/b;

    invoke-virtual {v0, v1}, Lu/aly/ch;->a(Lcom/umeng/a/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7

    .prologue
    .line 215
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/a/j;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/a/j;->d(Landroid/content/Context;)V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/umeng/a/j;->f:Lu/aly/cv;

    const-wide/16 v4, -0x1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lu/aly/cv;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 224
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/a/j;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/a/j;->d(Landroid/content/Context;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/umeng/a/j;->f:Lu/aly/cv;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, p2, p3, v2, v3}, Lu/aly/cv;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final a(Lcom/umeng/a/a/a;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/umeng/a/j;->a:Lcom/umeng/a/a/b;

    invoke-virtual {v0, p1}, Lcom/umeng/a/a/b;->a(Lcom/umeng/a/a/a;)V

    .line 99
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/umeng/a/a;->e:Z

    if-nez v0, :cond_0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/umeng/a/j;->d:Lu/aly/cF;

    invoke-virtual {v0, p1}, Lu/aly/cF;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/umeng/a/j;->d:Lu/aly/cF;

    invoke-virtual {v0}, Lu/aly/cF;->a()V

    .line 297
    iget-object v0, p0, Lcom/umeng/a/j;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 298
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/a/j;->g:Lu/aly/ch;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/umeng/a/j;->g:Lu/aly/ch;

    new-instance v1, Lu/aly/ac;

    invoke-direct {v1, p1}, Lu/aly/ac;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lu/aly/ch;->b(Lu/aly/cx;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/umeng/a/j;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/a/j;->e(Landroid/content/Context;)V

    .line 302
    iget-object v0, p0, Lcom/umeng/a/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->M(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    :cond_1
    invoke-static {}, Lcom/umeng/a/m;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    const-string v1, "MobclickAgent"

    const-string v2, "Exception in onAppCrash"

    invoke-static {v1, v2, v0}, Lu/aly/bt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-boolean v0, Lcom/umeng/a/a;->e:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/umeng/a/j;->d:Lu/aly/cF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/cF;->a(Ljava/lang/String;)V

    .line 112
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/a/j;->h:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/umeng/a/j;->d(Landroid/content/Context;)V

    .line 114
    :cond_2
    new-instance v0, Lcom/umeng/a/k;

    invoke-direct {v0, p0, p1}, Lcom/umeng/a/k;-><init>(Lcom/umeng/a/j;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/a/m;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "MobclickAgent"

    .line 122
    const-string v2, "Exception occurred in Mobclick.onResume(). "

    .line 121
    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/umeng/a/a;->e:Z

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/umeng/a/j;->d:Lu/aly/cF;

    invoke-virtual {v0, p1}, Lu/aly/cF;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method final c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onPause"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-boolean v0, Lcom/umeng/a/a;->e:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/umeng/a/j;->d:Lu/aly/cF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/cF;->b(Ljava/lang/String;)V

    .line 137
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/a/j;->h:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/umeng/a/j;->d(Landroid/content/Context;)V

    .line 139
    :cond_2
    new-instance v0, Lcom/umeng/a/l;

    invoke-direct {v0, p0, p1}, Lcom/umeng/a/l;-><init>(Lcom/umeng/a/j;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/a/m;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
