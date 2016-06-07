.class final Lcom/ushaqi/zhuishushenqi/ui/user/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/aa;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/g;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/g;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeHelperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/g;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method
