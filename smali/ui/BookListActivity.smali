.class public abstract Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field protected a:Lcom/ushaqi/zhuishushenqi/adapter/g;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "book_list_id"

    .line 33
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "book_list_title"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    .prologue
    .line 69
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/g;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;

    .line 71
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected abstract b()V
.end method

.method protected final e(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 78
    packed-switch p1, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 90
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book_list_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->b(Ljava/lang/String;)V

    .line 43
    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->b:Landroid/view/View;

    .line 44
    const v0, 0x7f0c00d8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->e:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c00da

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->c:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/aJ;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/aJ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/g;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    .line 54
    const v0, 0x7f0c010f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 57
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/aK;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/aK;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->b()V

    .line 66
    return-void
.end method
