.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/ushaqi/zhuishushenqi/adapter/B;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 217
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v2, "BOOK_ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "BOOK_TITLE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 37
    .line 2254
    packed-switch p1, :pswitch_data_0

    .line 2272
    :goto_0
    return-void

    .line 2256
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2258
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2259
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2262
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2263
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2264
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2265
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2268
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2270
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2271
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2274
    :pswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2275
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2276
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2277
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 37
    .line 3210
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 3211
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;Ljava/util/List;)V
    .locals 6

    .prologue
    .line 37
    .line 4158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050198

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Lcom/ushaqi/zhuishushenqi/adapter/B;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->l:Lcom/ushaqi/zhuishushenqi/adapter/B;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014e

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->c:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2143
    const v0, 0x7f0c0434

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->g:Landroid/view/View;

    .line 2144
    const v0, 0x7f0c0437

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->i:Landroid/widget/TextView;

    .line 2145
    const v0, 0x7f0c043a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->j:Landroid/view/View;

    .line 2146
    const v0, 0x7f0c043b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->k:Landroid/widget/TextView;

    .line 2147
    const v0, 0x7f0c0438

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->h:Landroid/view/View;

    .line 2148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->h:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/bW;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/bW;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/B;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/B;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->l:Lcom/ushaqi/zhuishushenqi/adapter/B;

    .line 123
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->l:Lcom/ushaqi/zhuishushenqi/adapter/B;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/bV;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/bV;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bY;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/bY;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bY;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BOOK_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->b:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 98
    const v0, 0x7f0300b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 100
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->d:Landroid/view/View;

    .line 101
    const v0, 0x7f0c013d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->e:Landroid/view/View;

    .line 102
    const v0, 0x7f0c0112

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->f:Landroid/view/View;

    .line 103
    const v0, 0x7f0c003c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->c:Landroid/widget/ListView;

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->f:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/bU;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/bU;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 93
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 82
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 1165
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTocId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1187
    :goto_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a:Ljava/lang/String;

    .line 1357
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1360
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->D(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1361
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1363
    const-string v4, "MIX_TOC_ID"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1366
    invoke-static {v2, v0}, Lcom/arcsoft/hpay100/a/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1367
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1368
    const-string v5, "toc"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1369
    const/4 v0, 0x1

    .line 1188
    :goto_1
    if-eqz v0, :cond_7

    .line 1189
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/high16 v2, 0x425c0000

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 1191
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x42200000

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v2

    .line 1192
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 1193
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1194
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1195
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->l:Lcom/ushaqi/zhuishushenqi/adapter/B;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/B;->notifyDataSetChanged()V

    .line 88
    return-void

    .line 1170
    :cond_3
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTocId()Ljava/lang/String;

    move-result-object v0

    .line 1171
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    move-result-object v2

    .line 1172
    if-eqz v2, :cond_4

    .line 1173
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->g:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->getChapterTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->g:Landroid/view/View;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/bX;

    invoke-direct {v3, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/bX;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1182
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 1373
    goto :goto_1

    .line 1197
    :cond_6
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1198
    invoke-virtual {v3, v1, v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1199
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1202
    :cond_7
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
