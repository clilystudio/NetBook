.class public final Lcom/ushaqi/zhuishushenqi/reader/bH;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->a:Landroid/content/SharedPreferences;

    .line 33
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->g()V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1046
    :try_start_0
    const-string v1, "xiaomi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->a:Landroid/content/SharedPreferences;

    const-string v1, "volume_keys_flip"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->b:Z

    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->a:Landroid/content/SharedPreferences;

    const-string v1, "click_flip_animation"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->c:Z

    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->a:Landroid/content/SharedPreferences;

    const-string v1, "reader_screen_off_time"

    const v2, 0x1d4c0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->d:I

    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_always_next_page"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->e:Z

    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_enable_imersive_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->f:Z

    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->a:Landroid/content/SharedPreferences;

    const-string v1, "convert_t"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 43
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->g()V

    .line 47
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->c:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->d:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bH;->f:Z

    return v0
.end method
