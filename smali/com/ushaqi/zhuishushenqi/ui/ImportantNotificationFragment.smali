.class public Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;->IMPORTANT:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    return-object v0
.end method

.method protected final a(Landroid/widget/ListView;)V
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 30
    const v0, 0x7f0c02c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->a:Landroid/widget/LinearLayout;

    .line 31
    const v0, 0x7f0c02c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->b:Landroid/widget/ImageView;

    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bb;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bb;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method protected final b()Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/t;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/t;-><init>(Landroid/view/LayoutInflater;)V

    return-object v0
.end method

.method public onNotifEvent(Lcom/ushaqi/zhuishushenqi/event/w;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->a(Z)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->onPause()V

    .line 51
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->c()V

    .line 52
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->onResume()V

    .line 44
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ImportantNotificationFragment;->a(Z)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
