.class public Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/widget/av;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1037
    invoke-virtual {p0, p0}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2037
    invoke-virtual {p0, p0}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3037
    invoke-virtual {p0, p0}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->a:Lcom/ushaqi/zhuishushenqi/widget/av;

    if-eqz v0, :cond_0

    .line 50
    if-lez p4, :cond_1

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->b:Z

    .line 52
    :cond_0
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->a:Lcom/ushaqi/zhuishushenqi/widget/av;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->b:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->a:Lcom/ushaqi/zhuishushenqi/widget/av;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/widget/av;->a()V

    .line 45
    :cond_0
    return-void
.end method

.method public setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->a:Lcom/ushaqi/zhuishushenqi/widget/av;

    .line 56
    return-void
.end method
