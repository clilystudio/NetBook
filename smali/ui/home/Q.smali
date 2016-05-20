.class final Lcom/ushaqi/zhuishushenqi/ui/home/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    const-string v1, "broadcastOnThemeChanged"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    return-void
.end method
