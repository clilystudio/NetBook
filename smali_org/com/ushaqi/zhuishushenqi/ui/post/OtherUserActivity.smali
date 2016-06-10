.class public Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private A:Lcom/ushaqi/zhuishushenqi/ui/post/ck;

.field private B:Lcom/handmark/pulltorefresh/library/j;

.field private a:Lcom/ushaqi/zhuishushenqi/ui/post/cl;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private e:Landroid/view/View;

.field private f:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/ListView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/ushaqi/zhuishushenqi/adapter/G;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Follower;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Follower;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/ushaqi/zhuishushenqi/model/Follower;

.field private y:I

.field private z:Lcom/ushaqi/zhuishushenqi/ui/post/cj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->q:Ljava/util/List;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->y:I

    .line 334
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ch;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->B:Lcom/handmark/pulltorefresh/library/j;

    .line 692
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->y:I

    return p1
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Lcom/ushaqi/zhuishushenqi/ui/post/cj;)Lcom/ushaqi/zhuishushenqi/ui/post/cj;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->z:Lcom/ushaqi/zhuishushenqi/ui/post/cj;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Lcom/ushaqi/zhuishushenqi/ui/post/ck;)Lcom/ushaqi/zhuishushenqi/ui/post/ck;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->A:Lcom/ushaqi/zhuishushenqi/ui/post/ck;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Lcom/ushaqi/zhuishushenqi/ui/post/cl;)Lcom/ushaqi/zhuishushenqi/ui/post/cl;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/cl;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->v:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t:I

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cl;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/cl;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 272
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t:I

    .line 273
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->u:I

    return p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->g()V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 53
    .line 3294
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->y:I

    packed-switch v0, :pswitch_data_0

    .line 3308
    :cond_0
    :goto_0
    return-void

    .line 3296
    :pswitch_0
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3384
    :pswitch_1
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 3300
    if-eqz v0, :cond_0

    .line 3301
    iput v7, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->y:I

    .line 3395
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    .line 3398
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->x:Lcom/ushaqi/zhuishushenqi/model/Follower;

    if-nez v1, :cond_1

    .line 3399
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/Follower;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/Follower;-><init>()V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->x:Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 3400
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->x:Lcom/ushaqi/zhuishushenqi/model/Follower;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/model/Follower;->set_id(Ljava/lang/String;)V

    .line 3401
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->x:Lcom/ushaqi/zhuishushenqi/model/Follower;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/model/Follower;->setAvatar(Ljava/lang/String;)V

    .line 3402
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->x:Lcom/ushaqi/zhuishushenqi/model/Follower;

    invoke-virtual {v1, v7}, Lcom/ushaqi/zhuishushenqi/model/Follower;->setFollowings(I)V

    .line 3403
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->x:Lcom/ushaqi/zhuishushenqi/model/Follower;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/Follower;->setNickname(Ljava/lang/String;)V

    .line 3404
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->x:Lcom/ushaqi/zhuishushenqi/model/Follower;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/Follower;->setTweets(I)V

    .line 3406
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3407
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->x:Lcom/ushaqi/zhuishushenqi/model/Follower;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3304
    :cond_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t:I

    .line 3305
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b()V

    .line 3306
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->f()V

    .line 3307
    const-string v0, "\t\t\u5173\u6ce8\u6210\u529f\t\t"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 3308
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cp;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/cp;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;B)V

    new-array v1, v8, [Ljava/lang/String;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cp;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 4384
    :pswitch_2
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 3312
    if-eqz v0, :cond_0

    .line 3313
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->y:I

    .line 4414
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v4

    .line 4415
    const/4 v3, 0x0

    move v1, v2

    .line 4416
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 4417
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 4418
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Follower;->get_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4423
    :goto_2
    if-eqz v0, :cond_3

    .line 4424
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->x:Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 4425
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3316
    :cond_3
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t:I

    .line 3317
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b()V

    .line 3318
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->f()V

    .line 3319
    const-string v0, "\t\t\u53d6\u6d88\u5173\u6ce8\u6210\u529f\t\t"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 3320
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/co;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/co;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;B)V

    new-array v1, v8, [Ljava/lang/String;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/co;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 4416
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_2

    .line 3294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->y:I

    packed-switch v0, :pswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->k:Landroid/widget/Button;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->k:Landroid/widget/Button;

    const-string v1, "\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->k:Landroid/widget/Button;

    const-string v1, "\u53d6\u6d88\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 3

    .prologue
    .line 53
    .line 5265
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->u:I

    .line 5266
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->v:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5267
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5268
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->v:Ljava/util/List;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/cm;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->u:I

    return v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ck;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->A:Lcom/ushaqi/zhuishushenqi/ui/post/ck;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 3

    .prologue
    .line 53
    .line 5504
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5505
    const-string v0, "type"

    const-string v2, "TYPE_FOLLOWINGS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5506
    const/4 v0, 0x0

    .line 5507
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->v:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 5508
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 5509
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->v:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5511
    :cond_0
    const-string v2, "follows"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5512
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->t:I

    return v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cj;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->z:Lcom/ushaqi/zhuishushenqi/ui/post/cj;

    return-object v0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 3

    .prologue
    .line 53
    .line 5516
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5517
    const-string v0, "type"

    const-string v2, "TYPE_FOLLOWERS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5518
    const/4 v0, 0x0

    .line 5519
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 5520
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 5521
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5523
    :cond_0
    const-string v2, "follows"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5524
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cm;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic s(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    return-object v0
.end method

.method static synthetic t(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic u(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 53
    .line 5742
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5743
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5744
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5745
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 53
    return-void
.end method

.method static synthetic v(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/adapter/G;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->p:Lcom/ushaqi/zhuishushenqi/adapter/G;

    return-object v0
.end method

.method static synthetic w(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic x(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->B:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic y(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 2

    .prologue
    .line 53
    .line 6737
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6738
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->o:Landroid/widget/TextView;

    const-string v1, "TA\u53ef\u80fd\u8fd8\u4e0d\u77e5\u52a8\u6001\u5427!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method static synthetic z(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->f()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 114
    const v0, 0x7f0300ab

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->setContentView(I)V

    .line 115
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b:Landroid/view/LayoutInflater;

    .line 117
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "USER_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->s:Ljava/lang/String;

    .line 119
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->n:Landroid/view/View;

    .line 120
    const v0, 0x7f0c00ec

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->o:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 124
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->l:Landroid/widget/ListView;

    .line 125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->e:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03011d

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->m:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 131
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 135
    :cond_0
    const-string v0, "\u8be6\u60c5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b(Ljava/lang/String;)V

    .line 1151
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1152
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->y:I

    .line 1155
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ci;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/ci;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;B)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ci;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1158
    :cond_2
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->y:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 760
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onDestroy()V

    .line 1754
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->z:Lcom/ushaqi/zhuishushenqi/ui/post/cj;

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->z:Lcom/ushaqi/zhuishushenqi/ui/post/cj;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cj;->cancel(Z)Z

    .line 2749
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->A:Lcom/ushaqi/zhuishushenqi/ui/post/ck;

    if-eqz v0, :cond_1

    .line 2750
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->A:Lcom/ushaqi/zhuishushenqi/ui/post/ck;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ck;->cancel(Z)Z

    .line 763
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 764
    return-void
.end method

.method public onLoginedEvent(Lcom/ushaqi/zhuishushenqi/event/t;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 101
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ci;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/ci;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;B)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ci;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onStart()V

    .line 1192
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->e:Landroid/view/View;

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->e:Landroid/view/View;

    const v1, 0x7f0c02d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->h:Landroid/widget/TextView;

    .line 1194
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->e:Landroid/view/View;

    const v1, 0x7f0c02da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->g:Landroid/widget/ImageView;

    .line 1195
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->e:Landroid/view/View;

    const v1, 0x7f0c02dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->i:Landroid/widget/TextView;

    .line 1196
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->e:Landroid/view/View;

    const v1, 0x7f0c02df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->j:Landroid/widget/TextView;

    .line 1197
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->e:Landroid/view/View;

    const v1, 0x7f0c02d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->k:Landroid/widget/Button;

    .line 1198
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->f()V

    .line 1201
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->k:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/cb;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cb;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/cd;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cd;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1242
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/cf;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cf;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1208
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cn;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/cc;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cc;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cn;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 1214
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cn;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bZ;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bZ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 183
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-direct {v0, p0, v3, v3}, Lcom/ushaqi/zhuishushenqi/adapter/G;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->p:Lcom/ushaqi/zhuishushenqi/adapter/G;

    .line 184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->p:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Ljava/util/List;)V

    .line 185
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->p:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->g()V

    .line 188
    return-void
.end method
