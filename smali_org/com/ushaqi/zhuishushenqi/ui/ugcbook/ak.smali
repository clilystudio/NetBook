.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;
.super Landroid/support/v7/widget/ah;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Landroid/view/LayoutInflater;

.field final synthetic c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

.field private d:[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;Landroid/content/Context;[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;)V
    .locals 1

    .prologue
    .line 415
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/ah;-><init>()V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->a:Z

    .line 416
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->b:Landroid/view/LayoutInflater;

    .line 417
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->d:[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;

    .line 418
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->d:[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)I
    .locals 1

    .prologue
    .line 422
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->a:Z

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ay;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    packed-switch p2, :pswitch_data_0

    .line 439
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 433
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03016b

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 434
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;Landroid/view/View;)V

    goto :goto_0

    .line 436
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03016e

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 437
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;Landroid/view/View;)V

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/support/v7/widget/ay;I)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v2, 0x0

    .line 444
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->a:Z

    if-eqz v0, :cond_2

    .line 445
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    const v1, 0x7f0501c1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1479
    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->j:Ljava/lang/String;

    .line 1480
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1481
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    const v2, 0x7f010004

    invoke-static {v1, v2}, Landroid/support/design/widget/am;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1482
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    const v2, 0x7f01001e

    invoke-static {v1, v2}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 1484
    :cond_1
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    const v2, 0x1010038

    invoke-static {v1, v2}, Landroid/support/design/widget/am;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1485
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    const v2, 0x7f010006

    invoke-static {v1, v2}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 447
    :cond_2
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->d:[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->a:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    sub-int v0, p2, v0

    aget-object v0, v1, v0

    .line 1502
    if-eqz v0, :cond_0

    .line 1505
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1506
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;->getTags()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v5, v1, 0x4

    .line 1507
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;->getTags()[Ljava/lang/String;

    move-result-object v6

    .line 1508
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    move v4, v2

    .line 1509
    :goto_2
    if-ge v4, v5, :cond_0

    .line 1510
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03016f

    iget-object v3, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v3, v2

    .line 1511
    :goto_3
    array-length v1, v6

    shl-int/lit8 v7, v4, 0x2

    sub-int/2addr v1, v7

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 1512
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;

    .line 1513
    shl-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v3

    aget-object v7, v6, v7

    .line 1514
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->setVisibility(I)V

    .line 1515
    invoke-virtual {v1, v7}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->setText(Ljava/lang/String;)V

    .line 1517
    iget-object v8, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    iget-object v8, v8, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-static {v8}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->setSelected(Z)V

    .line 1518
    new-instance v8, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/am;

    invoke-direct {v8, p1, v7}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/am;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/ushaqi/zhuishushenqi/widget/UgcFilterTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1511
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_3
    move v0, v2

    .line 447
    goto :goto_1

    .line 1527
    :cond_4
    array-length v1, v6

    shl-int/lit8 v3, v4, 0x2

    sub-int/2addr v1, v3

    if-ge v1, v10, :cond_5

    .line 1528
    array-length v1, v6

    shl-int/lit8 v3, v4, 0x2

    sub-int/2addr v1, v3

    :goto_4
    if-ge v1, v10, :cond_5

    .line 1529
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1528
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1532
    :cond_5
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->j:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1509
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2
.end method
