.class public final Lcom/xiaomi/mipush/sdk/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/mipush/sdk/g;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/xiaomi/mipush/sdk/h;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/g;->b:Landroid/content/Context;

    .line 1000
    new-instance v0, Lcom/xiaomi/mipush/sdk/h;

    invoke-direct {v0, p0, v5}, Lcom/xiaomi/mipush/sdk/h;-><init>(Lcom/xiaomi/mipush/sdk/g;B)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/g;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    const-string v2, "appId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    const-string v2, "appToken"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/h;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    const-string v2, "regId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/h;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    const-string v2, "regSec"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/h;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    const-string v2, "devId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/h;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/h;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/h;->e:Ljava/lang/String;

    const-string v2, "a-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/g;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/D;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/h;->e:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "devId"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/h;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v1, "vName"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    const-string v2, "valid"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/h;->f:Z

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    const-string v2, "paused"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/h;->g:Z

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    const-string v2, "envType"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/xiaomi/mipush/sdk/h;->h:I

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/g;->a:Lcom/xiaomi/mipush/sdk/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/g;->a:Lcom/xiaomi/mipush/sdk/g;

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/g;->a:Lcom/xiaomi/mipush/sdk/g;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x4000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "1.0"

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    .line 6000
    iput p1, v0, Lcom/xiaomi/mipush/sdk/h;->h:I

    .line 0
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/g;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "envType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    .line 5000
    iput-boolean p1, v0, Lcom/xiaomi/mipush/sdk/h;->g:Z

    .line 0
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/g;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "paused"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Don\'t send message before initialization succeeded!"

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    .line 2000
    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/h;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/xiaomi/mipush/sdk/h;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/h;->i:Lcom/xiaomi/mipush/sdk/g;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/g;->h()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "appId"

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/h;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "appToken"

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    .line 3000
    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/h;->i:Lcom/xiaomi/mipush/sdk/g;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/g;->h()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object v2, v0, Lcom/xiaomi/mipush/sdk/h;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/xiaomi/mipush/sdk/h;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/xiaomi/mipush/sdk/h;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/xiaomi/mipush/sdk/h;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/xiaomi/mipush/sdk/h;->e:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/xiaomi/mipush/sdk/h;->f:Z

    iput-boolean v3, v0, Lcom/xiaomi/mipush/sdk/h;->g:Z

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/mipush/sdk/h;->h:I

    .line 0
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/h;->a()Z

    move-result v0

    return v0
.end method

.method public final h()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->b:Landroid/content/Context;

    const-string v1, "mipush"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    .line 4000
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/mipush/sdk/h;->f:Z

    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/h;->i:Lcom/xiaomi/mipush/sdk/g;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/g;->h()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "valid"

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/h;->f:Z

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    return-void
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/h;->g:Z

    return v0
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    iget v0, v0, Lcom/xiaomi/mipush/sdk/h;->h:I

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->c:Lcom/xiaomi/mipush/sdk/h;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/h;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
