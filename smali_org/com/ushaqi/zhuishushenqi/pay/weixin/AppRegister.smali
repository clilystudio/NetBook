.class public Lcom/ushaqi/zhuishushenqi/pay/weixin/AppRegister;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/e/a/a/g/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/e/a/a/g/a;

    move-result-object v0

    .line 19
    const-string v1, "wx1e7c2477db57dc75"

    invoke-interface {v0, v1}, Lcom/e/a/a/g/a;->a(Ljava/lang/String;)Z

    .line 20
    return-void
.end method
