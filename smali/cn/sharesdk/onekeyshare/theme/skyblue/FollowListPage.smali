.class public Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;
.super Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

.field private lastPosition:I

.field private llTitle:Lcn/sharesdk/framework/TitleLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    .line 440
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v0}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    const/4 v0, 0x0

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v2}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 119
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v3

    iget-boolean v3, v3, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v3

    iget-object v3, v3, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->setResultForChecked(Ljava/util/ArrayList;)V

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->finish()V

    .line 128
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 57
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const v1, -0xa0a0b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 59
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 63
    new-instance v1, Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    .line 64
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "title_back"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 65
    if-lez v1, :cond_0

    .line 66
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/TitleLayout;->setBackgroundResource(I)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "multi_share"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 70
    if-lez v1, :cond_1

    .line 71
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "finish"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 75
    if-lez v1, :cond_2

    .line 76
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :cond_2
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/TitleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    new-instance v0, Lcom/mob/tools/gui/PullToRefreshView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mob/tools/gui/PullToRefreshView;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    invoke-virtual {v0, v2}, Lcom/mob/tools/gui/PullToRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v2, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-direct {v2, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;-><init>(Lcom/mob/tools/gui/PullToRefreshView;)V

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    .line 97
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 98
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v0, v2}, Lcom/mob/tools/gui/PullToRefreshView;->setAdapter(Lcom/mob/tools/gui/m;)V

    .line 99
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v2}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "title_shadow"

    invoke-static {v3, v4}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 103
    if-lez v3, :cond_3

    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    :cond_3
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v0, v7}, Lcom/mob/tools/gui/PullToRefreshView;->a(Z)V

    .line 113
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {p0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->isRadioMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    if-ltz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    iget v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v1

    .line 135
    iput-boolean v0, v1, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    .line 137
    :cond_0
    iput p3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    .line 139
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v1, p3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v1

    .line 140
    iget-boolean v2, v1, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, v1, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    .line 141
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->notifyDataSetChanged()V

    .line 142
    return-void
.end method
