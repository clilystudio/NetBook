.class final Lcom/ushaqi/zhuishushenqi/ui/user/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;

    const v1, 0x7f0500bf

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
