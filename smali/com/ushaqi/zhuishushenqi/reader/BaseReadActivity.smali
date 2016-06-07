.class public Lcom/ushaqi/zhuishushenqi/reader/BaseReadActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field protected a:Lcom/ushaqi/zhuishushenqi/api/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 20
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/BaseReadActivity;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v0, "customer_night_theme"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    const v0, 0x7f0700af

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/BaseReadActivity;->setTheme(I)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    const v0, 0x7f0700ae

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/BaseReadActivity;->setTheme(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 43
    invoke-static {p0}, Lcom/umeng/a/b;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 37
    invoke-static {p0}, Lcom/umeng/a/b;->b(Landroid/content/Context;)V

    .line 38
    return-void
.end method
