.class public abstract Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

.field protected c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

.field protected e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 334
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->p()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)Z
    .locals 2

    .prologue
    .line 36
    .line 2322
    const v0, 0x7f0c0474

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2323
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2324
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    .line 2325
    const v0, 0x7f0500c1

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    .line 2326
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2328
    :cond_0
    const/4 v0, 0x1

    .line 36
    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)V
    .locals 2

    .prologue
    .line 36
    .line 2391
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->p()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method private p()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 386
    const v0, 0x7f0c0473

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/SendView;

    .line 387
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SendView;->b()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/ushaqi/zhuishushenqi/model/Account;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 190
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/h;

    const v1, 0x7f05013e

    invoke-direct {v0, p0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/h;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;Landroid/app/Activity;I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/h;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 191
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 153
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    .line 159
    const v0, 0x7f0c0473

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/SendView;

    .line 160
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SendView;->b()Landroid/widget/EditText;

    move-result-object v2

    .line 161
    const-string v1, ""

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const-string v1, "\u56de\u590d %s\uff1a"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1128
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1129
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1130
    invoke-virtual {v1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 164
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v1, p2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setSelection(I)V

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SendView;->c()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/e;

    invoke-direct {v1, p0, p1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/e;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v0, "\u8bf7\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 176
    .line 1212
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f:Ljava/lang/String;

    .line 1384
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 178
    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_1

    .line 182
    const v0, 0x7f0500c1

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 185
    :cond_1
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/g;

    const v2, 0x7f05013e

    invoke-direct {v1, p0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/g;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;Landroid/app/Activity;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 186
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-interface {p1}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getCommentId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/g;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method protected final a(Z)V
    .locals 3

    .prologue
    .line 126
    const v0, 0x7f0c0474

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    invoke-static {p0, v0}, Landroid/support/design/widget/am;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    const-string v1, "\u6dfb\u52a0\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 132
    const v1, 0x7f0c0475

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/d;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/d;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method public abstract e(I)V
.end method

.method public abstract f(I)V
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public j()V
    .locals 6

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_POST_REPLIER_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->p()Landroid/widget/EditText;

    move-result-object v0

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/c;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/c;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;Landroid/widget/EditText;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_POST_REPLIER_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    .line 107
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a(Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;I)V

    goto :goto_0
.end method

.method public final k()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->getChildCount()I

    move-result v2

    .line 112
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 114
    instance-of v3, v0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    if-eqz v3, :cond_0

    .line 115
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a()V

    .line 112
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract o()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->u(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/a;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/a;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 88
    :cond_0
    return-void
.end method
