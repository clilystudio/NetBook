.class public Lcom/ushaqi/zhuishushenqi/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/e/a/a/g/b;


# instance fields
.field private a:Lcom/e/a/a/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/e/a/a/d/b;)V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/wxapi/WXEntryActivity;->finish()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v0, "wx29eb03c379f4bf24"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/e/a/a/g/c;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/e/a/a/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/wxapi/WXEntryActivity;->a:Lcom/e/a/a/g/a;

    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/wxapi/WXEntryActivity;->a:Lcom/e/a/a/g/a;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/e/a/a/g/a;->a(Landroid/content/Intent;Lcom/e/a/a/g/b;)Z

    .line 33
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/wxapi/WXEntryActivity;->a:Lcom/e/a/a/g/a;

    invoke-interface {v0, p1, p0}, Lcom/e/a/a/g/a;->a(Landroid/content/Intent;Lcom/e/a/a/g/b;)Z

    .line 40
    return-void
.end method
