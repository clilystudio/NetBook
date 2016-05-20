.class public abstract Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mItem:Lcom/ushaqi/zhuishushenqi/model/NotificationItem;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->mItem:Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    .line 23
    return-void
.end method


# virtual methods
.method public fillIcon(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->getIconRes()I

    move-result v0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 64
    return-void
.end method

.method public fillImageView(Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->mItem:Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getTrigger()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-virtual {p1, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setApiImageUrl(Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method protected abstract getIconRes()I
.end method

.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->mItem:Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    return-object v0
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getMainText()Ljava/lang/String;
.end method

.method protected getPostIcon()I
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    move-result-object v0

    .line 79
    :goto_0
    const-string v1, "vote"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f02019d

    :goto_1
    return v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->getItem()Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getMyPost()Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    const v0, 0x7f02019c

    goto :goto_1
.end method

.method protected getPostIntent(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->getType()Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "review"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const-string v1, "extraReviewId"

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const-string v1, "extraBookHelpId"

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const-string v1, "PostBookId"

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public abstract getSubText()Ljava/lang/String;
.end method

.method protected getWebIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public setItem(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->mItem:Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    .line 41
    return-void
.end method
