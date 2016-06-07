.class public Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 24
    .line 1102
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    new-instance v0, Landroid/support/v7/app/k;

    invoke-direct {v0, p0}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;)V

    const-string v1, "\u901a\u77e5"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/k;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    .line 1106
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/k;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/k;->c()Landroid/support/v7/app/j;

    .line 24
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    :try_start_0
    const-string v1, "force_update_until_version"

    invoke-static {p0, v1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 65
    invoke-static {p0}, Landroid/support/design/widget/am;->f(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0}, Lcom/umeng/update/b;->a(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/k;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/k;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;)V

    invoke-static {v0}, Lcom/umeng/update/b;->a(Lcom/umeng/update/a;)V

    .line 48
    :cond_0
    return-void
.end method
