.class public Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/aW;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/aV;

.field private c:Ljava/lang/String;

.field private e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

.field private f:Landroid/view/View;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/ushaqi/zhuishushenqi/widget/av;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->g:Ljava/util/List;

    .line 175
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/aU;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/aU;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/av;

    .line 187
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "TAG_LIST_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;Lcom/ushaqi/zhuishushenqi/ui/aW;)Lcom/ushaqi/zhuishushenqi/ui/aW;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/aW;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;Lcom/ushaqi/zhuishushenqi/model/BookSummary;)V
    .locals 1

    .prologue
    .line 33
    .line 1088
    if-eqz p1, :cond_0

    .line 1089
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/ui/aV;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/aV;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/ui/aW;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/aW;

    return-object v0
.end method


# virtual methods
.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->i()V

    .line 65
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/aX;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aX;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;B)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aX;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f03015a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->a(I)V

    .line 55
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAG_LIST_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->c:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->b(Ljava/lang/String;)V

    .line 1069
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1070
    const v0, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->f:Landroid/view/View;

    .line 1071
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    const v0, 0x7f0c045d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 1073
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 1074
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/aT;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/aT;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1083
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/aV;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aV;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/aV;

    .line 1084
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/aV;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->b()V

    .line 60
    return-void
.end method
