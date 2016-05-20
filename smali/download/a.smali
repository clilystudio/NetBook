.class public final Lcom/ushaqi/zhuishushenqi/download/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/download/a;->g:Z

    .line 55
    new-instance v0, Lcom/ushaqi/zhuishushenqi/download/b;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/download/b;-><init>(Lcom/ushaqi/zhuishushenqi/download/a;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->i:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/download/a;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/download/a;->b:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/download/a;->c:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/download/a;->d:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/ushaqi/zhuishushenqi/download/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->e:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/ushaqi/zhuishushenqi/download/a;->f:Ljava/lang/String;

    .line 45
    const-string v0, "downloadInfo"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    const-string v1, "downloadedPackage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    invoke-interface {v0, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->g:Z

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/download/a;->g:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/download/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->h:I

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/download/a;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/download/a;->h:I

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/download/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    .line 1106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->a:Landroid/content/Context;

    const-string v1, "downloadInfo"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1107
    const-string v1, "downloadedPackage"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1110
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/download/a;->a:Landroid/content/Context;

    const-string v2, "downloadInfo"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1112
    const-string v2, "apkName"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/download/a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1113
    const-string v2, "apkSavePath"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/download/a;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1114
    const-string v2, "packageName"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/download/a;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1115
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/download/a;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1116
    const-string v2, "downloadedPackage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1117
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/download/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/download/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/download/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/download/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/download/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/download/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/download/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/download/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->a:Landroid/content/Context;

    const-string v1, "rate_test"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->u(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    .line 81
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 82
    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/download/a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/download/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->g:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/download/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/download/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/download/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    new-instance v0, Lcom/ushaqi/zhuishushenqi/download/d;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/download/d;-><init>(Lcom/ushaqi/zhuishushenqi/download/a;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/download/d;->start()V

    .line 90
    new-instance v0, Lcom/ushaqi/zhuishushenqi/download/c;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/download/c;-><init>(Lcom/ushaqi/zhuishushenqi/download/a;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/download/c;->start()V

    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->a:Landroid/content/Context;

    const-string v1, "manhuadao_download_count"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/download/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->a:Landroid/content/Context;

    const-string v1, "downloadInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    const-string v1, "apkName"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/download/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v1, "apkUrl"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/download/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v1, "iconUrl"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/download/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/download/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/a;->f:Ljava/lang/String;

    return-object v0
.end method
