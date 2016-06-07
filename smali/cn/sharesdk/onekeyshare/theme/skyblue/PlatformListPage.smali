.class public Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;
.super Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->hiddenPlatforms:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;)Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "backImageView"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    const/high16 v1, 0x1040000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const-string v0, "okImageView"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    const v1, 0x104000a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    .line 45
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->customerLogos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->setCustomerLogos(Ljava/util/ArrayList;)V

    .line 47
    const-string v0, "gridView"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 48
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;-><init>(Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 61
    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method private onShareButtonClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    if-eqz v0, :cond_0

    const-string v0, "locked"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 86
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->activity:Landroid/app/Activity;

    const-string v2, "select_one_plat_at_least"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    :cond_2
    const-string v1, "locked"

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, p1, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->onShareButtonClick(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 71
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->setCanceled(Z)V

    .line 72
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->finish()V

    goto :goto_0

    .line 75
    :sswitch_1
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->onShareButtonClick(Landroid/view/View;)V

    goto :goto_0

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x1040000 -> :sswitch_0
        0x104000a -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->onCreate()V

    .line 30
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->activity:Landroid/app/Activity;

    const-string v2, "skyblue_share_platform_list"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->initView()V

    .line 33
    return-void
.end method
