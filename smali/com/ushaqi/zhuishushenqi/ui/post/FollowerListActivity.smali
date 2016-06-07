.class public Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:[Lcom/ushaqi/zhuishushenqi/model/Follower;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;)[Lcom/ushaqi/zhuishushenqi/model/Follower;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->a:[Lcom/ushaqi/zhuishushenqi/model/Follower;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->setContentView(I)V

    .line 38
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onStart()V

    .line 43
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 44
    const-string v0, "type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v3, "TYPE_FOLLOWINGS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5173\u6ce8"

    .line 46
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->b(Ljava/lang/String;)V

    .line 47
    const v0, 0x7f0c010c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->c:Landroid/widget/RelativeLayout;

    .line 48
    const v0, 0x7f0c010b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->b:Landroid/widget/ListView;

    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020287

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const-string v0, "follows"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    array-length v0, v3

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/Follower;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->a:[Lcom/ushaqi/zhuishushenqi/model/Follower;

    move v1, v2

    .line 54
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 55
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->a:[Lcom/ushaqi/zhuishushenqi/model/Follower;

    aget-object v0, v3, v1

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Follower;

    aput-object v0, v4, v1

    .line 54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 45
    :cond_0
    const-string v0, "\u7c89\u4e1d"

    goto :goto_0

    .line 58
    :cond_1
    new-array v0, v2, [Lcom/ushaqi/zhuishushenqi/model/Follower;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->a:[Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bj;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bj;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->a:[Lcom/ushaqi/zhuishushenqi/model/Follower;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 66
    :goto_2
    return-void

    .line 1135
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method
