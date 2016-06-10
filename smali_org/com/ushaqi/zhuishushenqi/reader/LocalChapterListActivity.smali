.class public Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/ushaqi/zhuishushenqi/adapter/C;

.field private e:Landroid/view/View;

.field private f:Landroid/app/ProgressDialog;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_ID"

    .line 53
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    .line 1113
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0500e3

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->b(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(Z)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f0500ff

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/k;

    invoke-direct {v2, p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/k;-><init>(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f050011

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/j;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/j;-><init>(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)V

    .line 1122
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 37
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/C;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->c:Lcom/ushaqi/zhuishushenqi/adapter/C;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 135
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/l;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/l;-><init>(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)V

    .line 157
    const/4 v1, 0x0

    const-string v2, "\u8f7d\u5165\u4e2d..."

    invoke-static {p0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->f:Landroid/app/ProgressDialog;

    .line 158
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->f:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 159
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/m;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/m;-><init>(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;Landroid/os/Handler;)V

    .line 173
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/m;->start()V

    .line 174
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 37
    .line 1180
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->D(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1184
    const-string v1, "MIX_TOC_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->g:Ljava/lang/String;

    const-string v2, "toc"

    invoke-static {v1, v0, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/model/Toc;

    .line 1188
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->g:Ljava/lang/String;

    .line 2086
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/ZhuiShuShenQi/Chapter"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2087
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/ushaqi/zhuishushenqi/c;->a:Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    invoke-static {v5}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/io/File;)I

    move-result v2

    .line 1190
    if-eqz v1, :cond_1

    .line 1191
    add-int/lit8 v2, v2, -0x1

    .line 1193
    :cond_1
    if-lez v2, :cond_0

    .line 1194
    new-instance v5, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;

    invoke-direct {v5}, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;-><init>()V

    .line 1195
    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->setTocId(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v5, v2}, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->setCount(I)V

    .line 1197
    if-eqz v1, :cond_2

    .line 1198
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Toc;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->setHostName(Ljava/lang/String;)V

    .line 1202
    :goto_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1200
    :cond_2
    const-string v0, "\u672a\u77e5\u6765\u6e90"

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->setHostName(Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_3
    return-object v3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->setContentView(I)V

    .line 60
    const v0, 0x7f050165

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->c(I)V

    .line 62
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BOOK_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->g:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->h:Ljava/lang/String;

    .line 65
    const v0, 0x7f0c0113

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->a:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0c0111

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b:Landroid/widget/ListView;

    .line 68
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030155

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->e:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 70
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/C;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/C;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->c:Lcom/ushaqi/zhuishushenqi/adapter/C;

    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->c:Lcom/ushaqi/zhuishushenqi/adapter/C;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/h;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/h;-><init>(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/i;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/i;-><init>(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 102
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u9884\u8bfb\u7ae0\u8282\uff0c\u8bf7\u68c0\u67e5SD\u5361"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b()V

    goto :goto_0
.end method
