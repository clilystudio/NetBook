.class final Lcom/ushaqi/zhuishushenqi/ui/post/cn;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 574
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->a:Ljava/lang/Runnable;

    .line 575
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;
    .locals 2

    .prologue
    .line 580
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->m(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 584
    :goto_0
    return-object v0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 584
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 570
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 570
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;

    .line 1589
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1590
    if-eqz p1, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->s(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/User;->getFullAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1593
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;->getFollowers()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;I)I

    .line 1594
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;->getFollowings()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;I)I

    .line 1596
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/User;->isDoyan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1597
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1598
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1605
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 570
    :cond_0
    return-void

    .line 1599
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/User;->isOfficial()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1600
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1601
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1603
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
