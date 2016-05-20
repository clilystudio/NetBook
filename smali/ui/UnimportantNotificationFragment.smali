.class public Lcom/ushaqi/zhuishushenqi/ui/UnimportantNotificationFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;->UNIMPORTANT:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    return-object v0
.end method

.method protected final b()Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/Y;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/UnimportantNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/Y;-><init>(Landroid/view/LayoutInflater;)V

    return-object v0
.end method
