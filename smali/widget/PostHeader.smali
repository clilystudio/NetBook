.class public Lcom/ushaqi/zhuishushenqi/widget/PostHeader;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->setOrientation(I)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030138

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 83
    const v0, 0x7f0c03d2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/ao;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/ao;-><init>(Lcom/ushaqi/zhuishushenqi/widget/PostHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    .line 51
    :goto_0
    return-void

    .line 39
    :cond_0
    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 40
    if-lt p1, v0, :cond_1

    move p1, v0

    :cond_1
    move v0, v1

    .line 43
    :goto_1
    if-ge v0, p1, :cond_2

    .line 44
    aget v3, v2, v0

    .line 45
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v0, p1, -0x1

    aget v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    const v2, 0x7f0c00ea

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    const v0, 0x7f0c01ef

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    const v0, 0x7f0c01f0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 39
    :array_0
    .array-data 4
        0x7f0c004c
        0x7f0c004d
        0x7f0c004e
        0x7f0c004f
        0x7f0c0050
        0x7f0c0051
        0x7f0c0052
    .end array-data
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f0c03d2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 102
    const v0, 0x7f0c03d3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/aq;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/aq;-><init>(Lcom/ushaqi/zhuishushenqi/widget/PostHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method
