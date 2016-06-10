.class public Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;
.source "SourceFile"


# instance fields
.field private e:Lcom/ushaqi/zhuishushenqi/ui/post/ax;

.field private f:Lcom/ushaqi/zhuishushenqi/ui/post/ax;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;-><init>()V

    .line 169
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 145
    const-string v0, "updated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const-string v0, "created"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    .line 149
    :cond_0
    const-string v0, "comment-count"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, 0x2

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_ID"

    .line 42
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_ID"

    .line 47
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "FROM_READER"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ax;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/post/ax;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ax;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/post/ax;

    return-object v0
.end method

.method public static f(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    packed-switch p0, :pswitch_data_0

    .line 137
    const-string v0, "updated"

    .line 140
    :goto_0
    return-object v0

    .line 128
    :pswitch_0
    const-string v0, "updated"

    goto :goto_0

    .line 131
    :pswitch_1
    const-string v0, "created"

    goto :goto_0

    .line 134
    :pswitch_2
    const-string v0, "comment-count"

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/ui/post/ax;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/post/ax;

    .line 159
    return-void
.end method

.method public final b(Lcom/ushaqi/zhuishushenqi/ui/post/ax;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/post/ax;

    .line 163
    return-void
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_tab_default_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public final h()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u8ba8\u8bba"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4e66\u8bc4"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final i()[Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BOOK_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->g:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->h:Ljava/lang/String;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->d()Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 88
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->d()Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ds;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ds;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/post/ds;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->b(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/post/ds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->a()Lcom/ushaqi/zhuishushenqi/ui/post/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->a()V

    .line 114
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_sort_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    const-string v0, "updated"

    .line 121
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v2, 0xa

    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->h:Ljava/lang/String;

    .line 54
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_0
    const v1, 0x7f020170

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/aw;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aw;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;)V

    const-string v3, "\u6392\u5e8f"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Ljava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/aa;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FROM_READER"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/a;->a()Lcom/ushaqi/zhuishushenqi/a;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/a;->b()V

    .line 75
    :cond_1
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->u(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 102
    const-string v0, "BOOK_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->g:Ljava/lang/String;

    .line 103
    const-string v0, "BOOK_TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->h:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->d(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/f;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 106
    return-void
.end method
