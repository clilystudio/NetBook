.class public Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/feed/f;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->b:I

    return v0
.end method

.method private a(I)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v1, 0x0

    .line 196
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->d(I)I

    move-result v2

    .line 197
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 200
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0300a6

    invoke-virtual {v0, v4, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 202
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 203
    const-string v5, "\u9009\u62e9\u517b\u80a5\u7ae0\u8282\u6570"

    .line 1036
    iput-object v5, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 204
    invoke-virtual {v0, v4}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v5, "\u53d6\u6d88"

    invoke-virtual {v0, v5, v6}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v5

    .line 205
    const v0, 0x7f0c0230

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 206
    aget v6, v3, v2

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 208
    :goto_0
    if-ge v1, v7, :cond_0

    .line 210
    aget v0, v3, v1

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 211
    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/feed/e;

    invoke-direct {v6, p0, v5, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/feed/e;-><init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;Landroid/app/AlertDialog;II)V

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 225
    return-void

    .line 197
    :array_0
    .array-data 4
        0x7f0c0231
        0x7f0c0232
        0x7f0c0233
        0x7f0c0234
        0x7f0c0235
    .end array-data
.end method

.method private b()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllFeedingOrderByCount()Ljava/util/List;

    move-result-object v0

    .line 80
    const-string v1, "feed_chapter_count"

    const/16 v2, 0x32

    invoke-static {p0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->b:I

    .line 81
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/f;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a(Ljava/util/Collection;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onBookAddedEvent(Lcom/ushaqi/zhuishushenqi/event/l;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->b()V

    .line 71
    return-void
.end method

.method public onChapterCountEvent(Lcom/ushaqi/zhuishushenqi/event/m;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->b()V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f050106

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->b(I)V

    .line 52
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 54
    const v0, 0x7f0c0107

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 55
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/feed/f;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/feed/f;-><init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/f;

    .line 56
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->b()V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onDestroy()V

    .line 65
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 173
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 160
    :sswitch_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->onBackPressed()V

    goto :goto_0

    .line 163
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :sswitch_2
    const-string v1, "feed_chapter_count"

    const/16 v2, 0x32

    invoke-static {p0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 169
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;->a(I)V

    goto :goto_0

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c04a6 -> :sswitch_1
        0x7f0c04a7 -> :sswitch_2
    .end sparse-switch
.end method
