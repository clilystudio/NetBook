.class public abstract Lcom/mob/tools/gui/o;
.super Lcom/mob/tools/gui/n;


# instance fields
.field private adapter:Lcom/mob/tools/gui/k;

.field private fling:Z

.field private listView:Lcom/mob/tools/gui/ScrollableListView;

.field private osListener$2f4f5416:Landroid/support/design/widget/K;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/n;-><init>(Lcom/mob/tools/gui/PullToRefreshView;)V

    invoke-virtual {p0}, Lcom/mob/tools/gui/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/o;->onNewListView(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableListView;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/o;->listView:Lcom/mob/tools/gui/ScrollableListView;

    iget-object v0, p0, Lcom/mob/tools/gui/o;->listView:Lcom/mob/tools/gui/ScrollableListView;

    new-instance v1, Lcom/mob/tools/gui/p;

    invoke-direct {v1, p0}, Lcom/mob/tools/gui/p;-><init>(Lcom/mob/tools/gui/o;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/mob/tools/gui/k;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/k;-><init>(Lcom/mob/tools/gui/n;)V

    iput-object v0, p0, Lcom/mob/tools/gui/o;->adapter:Lcom/mob/tools/gui/k;

    iget-object v0, p0, Lcom/mob/tools/gui/o;->listView:Lcom/mob/tools/gui/ScrollableListView;

    iget-object v1, p0, Lcom/mob/tools/gui/o;->adapter:Lcom/mob/tools/gui/k;

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$002(Lcom/mob/tools/gui/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mob/tools/gui/o;->fling:Z

    return p1
.end method

.method static synthetic access$100$fc16149(Lcom/mob/tools/gui/o;)Landroid/support/design/widget/K;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/o;->osListener$2f4f5416:Landroid/support/design/widget/K;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mob/tools/gui/o;)Lcom/mob/tools/gui/k;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/o;->adapter:Lcom/mob/tools/gui/k;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mob/tools/gui/o;)Lcom/mob/tools/gui/ScrollableListView;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/o;->listView:Lcom/mob/tools/gui/ScrollableListView;

    return-object v0
.end method


# virtual methods
.method public getBodyView$660be4()Lcom/koushikdutta/async/s;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/o;->listView:Lcom/mob/tools/gui/ScrollableListView;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/o;->listView:Lcom/mob/tools/gui/ScrollableListView;

    return-object v0
.end method

.method public isFling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mob/tools/gui/o;->fling:Z

    return v0
.end method

.method public isPullReady()Z
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/o;->listView:Lcom/mob/tools/gui/ScrollableListView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ScrollableListView;->b()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Lcom/mob/tools/gui/n;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/mob/tools/gui/o;->adapter:Lcom/mob/tools/gui/k;

    invoke-virtual {v0}, Lcom/mob/tools/gui/k;->notifyDataSetChanged()V

    return-void
.end method

.method protected onNewListView(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableListView;
    .locals 1

    new-instance v0, Lcom/mob/tools/gui/ScrollableListView;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/ScrollableListView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onScroll$1768784b(Lcom/koushikdutta/async/s;III)V
    .locals 0

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/o;->listView:Lcom/mob/tools/gui/ScrollableListView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/o;->listView:Lcom/mob/tools/gui/ScrollableListView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableListView;->setDividerHeight(I)V

    return-void
.end method
