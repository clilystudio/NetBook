.class final Lcom/ushaqi/zhuishushenqi/reader/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/y;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/y;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 491
    const-string v1, "KEY_SOURCE"

    sget-object v2, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->HOME:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 492
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/y;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 493
    return-void
.end method
