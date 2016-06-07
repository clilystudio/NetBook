.class public Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 132
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->a(I)V

    .line 91
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/aO;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aO;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aO;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->c:Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;

    return-object v0
.end method


# virtual methods
.method public clickListItem(Lcom/ushaqi/zhuishushenqi/event/x;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/x;->b()Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    move-result-object v2

    .line 98
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "male"

    .line 99
    :goto_0
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->isCollapse()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    const-string v1, "rank_revision_switch"

    invoke-static {p0, v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->getIds()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 108
    :goto_1
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 1492
    const-string v2, "book_rank_list_item"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 98
    :cond_0
    const-string v0, "female"

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f050152

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->b(I)V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->f:Landroid/os/Handler;

    .line 57
    const v0, 0x7f0c00ed

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->e:Landroid/widget/ListView;

    .line 58
    const v0, 0x7f0c00ee

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->a:Landroid/view/View;

    .line 59
    const v0, 0x7f0c00ef

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->b:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/aM;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/aM;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->c:Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;

    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->c:Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->b()V

    .line 72
    return-void
.end method

.method public onExpand(Lcom/ushaqi/zhuishushenqi/event/k;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2050
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->k()Z

    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/k;->a()I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/aN;

    invoke-direct {v1, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/aN;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;Lcom/ushaqi/zhuishushenqi/event/k;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onPause()V

    .line 83
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onResume()V

    .line 77
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 78
    return-void
.end method
