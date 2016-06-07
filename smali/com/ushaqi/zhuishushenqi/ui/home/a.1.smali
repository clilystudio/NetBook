.class final Lcom/ushaqi/zhuishushenqi/ui/home/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/a;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/a;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    .line 1571
    const-string v3, "PREF_FIRST_LAUNCH_TIME"

    const-wide/16 v4, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1572
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1573
    sub-long v4, v6, v4

    const-wide/32 v6, 0x240c8400

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    move v0, v1

    .line 226
    :goto_0
    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/a;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->I(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/download/a;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/download/a;->a()V

    .line 231
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/download/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/a;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    const-string v4, "downloadInfo"

    invoke-virtual {v0, v4, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 234
    const-string v0, "uninstallShortcut"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 235
    if-eqz v5, :cond_2

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 241
    :goto_1
    const-string v6, "downloadedPackage"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 242
    if-eqz v6, :cond_3

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 247
    :goto_2
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 248
    const-string v0, "apkName"

    const-string v1, ""

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v1, "apkSavePath"

    const-string v6, ""

    invoke-interface {v4, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/home/a;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-static {v4, v1, v0}, Lcom/ushaqi/zhuishushenqi/download/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/a;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    const-string v1, "downloadInfo"

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    const-string v1, "uninstallShortcut"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1573
    goto :goto_0

    :cond_2
    move v0, v2

    .line 238
    goto :goto_1

    :cond_3
    move v1, v2

    .line 245
    goto :goto_2
.end method
