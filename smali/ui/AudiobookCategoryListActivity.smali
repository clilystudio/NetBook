.class public Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/ushaqi/zhuishushenqi/adapter/b;

.field private c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

.field private e:Landroid/view/View;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Album;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

.field private h:I

.field private i:Lcom/ushaqi/zhuishushenqi/widget/av;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->f:Ljava/util/List;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->h:I

    .line 158
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/y;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/y;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "TAG_NAME"

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V
    .locals 2

    .prologue
    .line 31
    .line 1090
    if-eqz p1, :cond_0

    .line 1091
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->b:Lcom/ushaqi/zhuishushenqi/adapter/b;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->h:I

    return v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)I
    .locals 2

    .prologue
    .line 31
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->h:I

    return v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 106
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-string v0, "category_id"

    const-string v3, "3"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "tag_name"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "page"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->g:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setDefaultPagesize(I)V
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/x;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/x;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;Z)V

    invoke-static {v2, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAlbums(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 153
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final b()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->i()V

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->j()V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f03015a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->a(I)V

    .line 60
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAG_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->a:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->b(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->a()Lcom/ushaqi/zhuishushenqi/util/as;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->b()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->g:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    .line 1071
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1072
    const v0, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->e:Landroid/view/View;

    .line 1073
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    const v0, 0x7f0c045d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 1075
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 1076
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/w;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/w;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1085
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/b;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/b;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->b:Lcom/ushaqi/zhuishushenqi/adapter/b;

    .line 1086
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->b:Lcom/ushaqi/zhuishushenqi/adapter/b;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->b()V

    .line 68
    return-void
.end method
