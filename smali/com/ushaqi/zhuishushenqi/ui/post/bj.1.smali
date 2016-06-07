.class final Lcom/ushaqi/zhuishushenqi/ui/post/bj;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 121
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;)[Lcom/ushaqi/zhuishushenqi/model/Follower;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;)[Lcom/ushaqi/zhuishushenqi/model/Follower;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 87
    .line 1104
    if-nez p2, :cond_0

    .line 1105
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d4

    .line 1106
    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1107
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bl;

    invoke-direct {v0, p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/post/bl;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/bj;Landroid/view/View;)V

    .line 1108
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1114
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/bj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 1115
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/ui/post/bl;

    .line 1116
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/post/bl;->a:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Follower;->getFullAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;)V

    .line 1117
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/post/bl;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Follower;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/post/bl;->c:Landroid/widget/TextView;

    const-string v2, "\u52a8\u6001 %d |  \u5173\u6ce8 %d |  \u7c89\u4e1d %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Follower;->getTweets()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Follower;->getFollowings()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Follower;->getFollowers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bk;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/bk;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/bj;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-object p2
.end method
