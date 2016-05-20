.class final Lcom/ushaqi/zhuishushenqi/ui/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bu;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bu;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bu;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v1, p3, v0

    .line 136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bu;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;

    move-result-object v0

    .line 1050
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->getItemViewType(I)I

    move-result v0

    .line 1051
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 136
    :goto_1
    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bu;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a(I)Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinderFactory;->create(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bu;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bu;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1051
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
