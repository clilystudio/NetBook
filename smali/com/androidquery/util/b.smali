.class public final Lcom/androidquery/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Ljava/lang/Runnable;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v0, p0, Lcom/androidquery/util/b;->c:I

    .line 422
    iput-boolean v0, p0, Lcom/androidquery/util/b;->e:Z

    .line 50
    return-void
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    iget v0, p0, Lcom/androidquery/util/b;->b:I

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lcom/androidquery/util/b;->b:I

    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/androidquery/util/b;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androidquery/util/b;->a:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/androidquery/util/b;->a:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/androidquery/util/a;->a(Ljava/io/File;JJ)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/androidquery/util/b;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androidquery/util/b;->a:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/androidquery/util/a;->a(Ljava/io/File;[B)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    .line 187
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 189
    if-nez p2, :cond_1

    add-int/lit8 v2, v1, 0x1

    if-ne v0, v2, :cond_1

    .line 190
    iget v0, p0, Lcom/androidquery/util/b;->d:I

    if-eq v1, v0, :cond_0

    .line 191
    iput v1, p0, Lcom/androidquery/util/b;->d:I

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/androidquery/util/b;->d:I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const v4, 0x40ff0001

    const/4 v3, 0x0

    .line 489
    if-eqz p0, :cond_0

    .line 491
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 493
    check-cast v0, Landroid/view/View;

    .line 497
    instance-of v2, p0, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_7

    .line 498
    check-cast p0, Landroid/widget/ProgressBar;

    .line 501
    :goto_0
    if-eqz p2, :cond_1

    .line 502
    invoke-virtual {v0, v4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 503
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    if-eqz p0, :cond_0

    .line 505
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 506
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 543
    :cond_0
    :goto_1
    return-void

    .line 510
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 511
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    :cond_2
    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 514
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 519
    :cond_4
    instance-of v0, p0, Landroid/app/Dialog;

    if-eqz v0, :cond_6

    .line 521
    check-cast p0, Landroid/app/Dialog;

    .line 523
    new-instance v0, Lcom/androidquery/a;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/a;-><init>(Landroid/content/Context;)V

    .line 525
    if-eqz p2, :cond_5

    .line 526
    invoke-virtual {v0, p0}, Lcom/androidquery/a;->a(Landroid/app/Dialog;)Lcom/androidquery/b;

    goto :goto_1

    .line 528
    :cond_5
    invoke-virtual {v0, p0}, Lcom/androidquery/a;->b(Landroid/app/Dialog;)Lcom/androidquery/b;

    goto :goto_1

    .line 531
    :cond_6
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 533
    check-cast p0, Landroid/app/Activity;

    .line 534
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 535
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 537
    if-eqz p2, :cond_0

    .line 538
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_1

    :cond_7
    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(I[Ljava/lang/Object;)Lcom/androidquery/util/b;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/androidquery/util/b;->b:I

    .line 74
    iput-object p2, p0, Lcom/androidquery/util/b;->a:[Ljava/lang/Object;

    .line 76
    return-object p0
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    .line 2119
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 2120
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 2122
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 2123
    const/4 v0, 0x1

    .line 2125
    :goto_0
    return v0

    .line 2124
    :cond_0
    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 2125
    const/4 v0, 0x0

    goto :goto_0

    .line 2127
    :cond_1
    const/4 v0, -0x1

    .line 1
    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 435
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 150
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 152
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 485
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/androidquery/util/b;->c:I

    invoke-direct {p0, p1, v0}, Lcom/androidquery/util/b;->a(Landroid/widget/AbsListView;I)V

    .line 173
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 16

    .prologue
    .line 203
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/androidquery/util/b;->c:I

    .line 205
    invoke-direct/range {p0 .. p2}, Lcom/androidquery/util/b;->a(Landroid/widget/AbsListView;I)V

    .line 207
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_5

    move-object/from16 v7, p1

    .line 208
    check-cast v7, Landroid/widget/ExpandableListView;

    .line 1218
    const v2, 0x40ff0004

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/widget/ExpandableListView;->setTag(ILjava/lang/Object;)V

    .line 1220
    if-nez p2, :cond_0

    .line 1222
    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v9

    .line 1223
    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v2

    .line 1225
    sub-int v10, v2, v9

    .line 1227
    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    .line 1229
    const/4 v3, 0x0

    move v8, v3

    :goto_0
    if-le v8, v10, :cond_1

    .line 214
    :cond_0
    return-void

    .line 1231
    :cond_1
    add-int v3, v8, v9

    invoke-virtual {v7, v3}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v12

    .line 1233
    invoke-static {v12, v13}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 1234
    invoke-static {v12, v13}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    .line 1236
    if-ltz v3, :cond_2

    .line 1238
    invoke-virtual {v7, v8}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1239
    const v5, 0x40ff0004

    invoke-virtual {v6, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 1241
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v5, v14, v12

    if-nez v5, :cond_2

    .line 1243
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 1245
    invoke-virtual {v7, v3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v4

    invoke-interface {v2, v3, v4, v6, v7}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1252
    :goto_1
    const v3, 0x40ff0004

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1229
    :cond_2
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_0

    .line 1249
    :cond_3
    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 1270
    :cond_5
    const v2, 0x40ff0004

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    .line 1272
    if-nez p2, :cond_0

    .line 1274
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    .line 1275
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    .line 1277
    sub-int v6, v2, v5

    .line 1279
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 1281
    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-gt v4, v6, :cond_0

    .line 1283
    add-int v3, v4, v5

    int-to-long v8, v3

    .line 1285
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1286
    const v3, 0x40ff0004

    invoke-virtual {v7, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 1288
    if-eqz v3, :cond_6

    .line 1289
    long-to-int v3, v8

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v7, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1290
    const v3, 0x40ff0004

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1281
    :cond_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 418
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/androidquery/util/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method
