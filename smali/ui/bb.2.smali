.class final Lcom/ushaqi/zhuishushenqi/ui/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bb;->a:Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bb;->a:Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/UnimportantNotificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bb;->a:Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method
