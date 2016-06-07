.class final Lcom/ushaqi/zhuishushenqi/ui/bn;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bn;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bn;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V

    .line 120
    return-void
.end method
