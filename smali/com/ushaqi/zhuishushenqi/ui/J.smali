.class final Lcom/ushaqi/zhuishushenqi/ui/J;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/J;->a:Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/J;->a:Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->recreate()V

    .line 86
    return-void
.end method
