.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/ushaqi/zhuishushenqi/reader/bG;

.field private g:Landroid/view/View;

.field private h:Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/ushaqi/zhuishushenqi/model/TocSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 237
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_ID"

    .line 62
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "SOURCE"

    invoke-virtual {v0, v1, p3}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;)Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->h:Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Lcom/ushaqi/zhuishushenqi/model/TocSummary;)Lcom/ushaqi/zhuishushenqi/model/TocSummary;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->k:Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    .line 1129
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1130
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Lcom/ushaqi/zhuishushenqi/reader/bG;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bG;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    .line 1216
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->k:Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1219
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->i:Landroid/view/View;

    const v2, 0x7f0c03f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1221
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->i:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/bD;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/bD;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Lcom/ushaqi/zhuishushenqi/model/TocSummary;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->k:Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->h:Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->i()V

    .line 137
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bE;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/bE;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bE;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030119

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(I)V

    .line 69
    const v0, 0x7f050172

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->c(I)V

    .line 70
    const v0, 0x7f020179

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->d(I)V

    .line 72
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BOOK_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->b:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->c:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bG;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bG;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bG;

    .line 77
    const v0, 0x7f0c010f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->e:Landroid/widget/ListView;

    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->e:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 79
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030144

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    const v1, 0x7f0c03f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->g:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->e:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 82
    const v0, 0x7f0c03f5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    const v1, 0x7f0c03f6

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    const-string v2, "mix"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_0
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/bB;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/bB;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0c03f0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->i:Landroid/view/View;

    .line 101
    const v0, 0x7f0c03f4

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->j:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bG;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/bC;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/bC;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->b()V

    .line 125
    return-void
.end method
