.class public Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;
.super Lcom/ushaqi/zhuishushenqi/widget/HeaderPtrListView;
.source "SourceFile"


# instance fields
.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/HeaderPtrListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030122

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 24
    const v1, 0x7f0c0029

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->c:Landroid/widget/TextView;

    .line 25
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 27
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->invalidate()V

    .line 28
    return-void
.end method


# virtual methods
.method public setCountText(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    if-nez p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
