.class public Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/Review;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/app/Activity;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    instance-of v0, p1, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->d:Landroid/app/Activity;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PostUsefulView must be used at post detail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(IZ)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 102
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Review;->getHelpful()Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;->getYes()I

    move-result v4

    .line 104
    const v0, 0x7f0c01ea

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    const v1, 0x7f0c01eb

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    const v3, 0x7f020263

    .line 107
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b00b6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move v7, v2

    move v2, v3

    move-object v3, v1

    move v1, v7

    move-object v8, v0

    move v0, v4

    move-object v4, v8

    .line 115
    :goto_0
    if-eqz p2, :cond_0

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 118
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 124
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Review;->getHelpful()Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;->getNo()I

    move-result v4

    .line 110
    const v0, 0x7f0c01ed

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0c01ee

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    const v3, 0x7f020261

    .line 113
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b00b5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move v7, v2

    move v2, v3

    move-object v3, v1

    move v1, v7

    move-object v8, v0

    move v0, v4

    move-object v4, v8

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;I)V
    .locals 2

    .prologue
    .line 29
    .line 2127
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 2128
    if-eqz v0, :cond_0

    .line 2129
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Review;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;->create(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;IZ)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->d:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    .line 1137
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 1138
    if-nez v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->d:Landroid/app/Activity;

    const-string v1, "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->d:Landroid/app/Activity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1141
    const/4 v0, 0x0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 79
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 66
    :pswitch_1
    if-eqz v0, :cond_1

    .line 67
    iput-boolean v4, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->e:Z

    .line 68
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/as;

    invoke-direct {v1, p0, v3}, Lcom/ushaqi/zhuishushenqi/widget/as;-><init>(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;B)V

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Review;->get_id()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "yes"

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/as;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 73
    :pswitch_2
    if-eqz v0, :cond_1

    .line 74
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->e:Z

    .line 75
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/as;

    invoke-direct {v1, p0, v3}, Lcom/ushaqi/zhuishushenqi/widget/as;-><init>(Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;B)V

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Review;->get_id()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "no"

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/as;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c01e9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 49
    const v0, 0x7f0c01e9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->b:Landroid/view/View;

    .line 50
    const v0, 0x7f0c01ec

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->c:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public setPost(Lcom/ushaqi/zhuishushenqi/model/Review;)V
    .locals 3

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a:Lcom/ushaqi/zhuishushenqi/model/Review;

    .line 1082
    const v0, 0x7f0c01ea

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Review;->getHelpful()Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;->getYes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    const v0, 0x7f0c01ed

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Review;->getHelpful()Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;->getNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 1085
    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Review;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;

    move-result-object v0

    .line 1087
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;->type:I

    if-eqz v1, :cond_0

    .line 1088
    iget v0, v0, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;->type:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->a(IZ)V

    .line 58
    :cond_0
    return-void
.end method
