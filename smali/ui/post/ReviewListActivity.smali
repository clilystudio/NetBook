.class public Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# static fields
.field private static final q:[Ljava/lang/String;

.field private static final r:[I


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/post/dp;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/post/do;

.field private c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/ushaqi/zhuishushenqi/adapter/D;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 76
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "all"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "xhqh"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wxxx"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dsyn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lsjs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "yxjj"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "khly"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cyjk"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hmzc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "xdyq"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "gdyq"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hxyq"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dmtr"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    .line 78
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->r:[I

    return-void

    :array_0
    .array-data 4
        0x7f0501b4
        0x7f0501bf
        0x7f0501bd
        0x7f0501b7
        0x7f0501bc
        0x7f0501c0
        0x7f0501bb
        0x7f0501b5
        0x7f0501b9
        0x7f0501be
        0x7f0501b8
        0x7f0501ba
        0x7f0501b6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->j:Ljava/util/List;

    .line 643
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dg;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->w:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 525
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 526
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 527
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 529
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/de;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/de;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 537
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;I)Landroid/widget/PopupWindow;
    .locals 19

    .prologue
    .line 46
    .line 2231
    if-nez p1, :cond_2

    .line 2246
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030079

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2247
    const v2, 0x7f0c01bc

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2248
    const v3, 0x7f0c01bd

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2250
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->v:Z

    if-eqz v4, :cond_1

    .line 2251
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b008c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2256
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v4

    .line 2259
    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/post/dl;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/dl;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2269
    new-instance v5, Lcom/ushaqi/zhuishushenqi/ui/post/dm;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/dm;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2279
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dn;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/dn;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v4

    .line 2236
    :goto_1
    return-object v2

    .line 2252
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->s:Ljava/lang/String;

    const-string v6, "all"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2253
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b008c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2233
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 2297
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03007a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 2298
    const v2, 0x7f0c01bc

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2299
    const v3, 0x7f0c01bd

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2300
    const v4, 0x7f0c01be

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2301
    const v5, 0x7f0c01da

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2302
    const v6, 0x7f0c01db

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2303
    const v7, 0x7f0c01dc

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2304
    const v8, 0x7f0c01dd

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2305
    const v9, 0x7f0c01de

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2306
    const v10, 0x7f0c01df

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2307
    const v11, 0x7f0c01e0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2308
    const v12, 0x7f0c01e1

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2309
    const v13, 0x7f0c01e2

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2310
    const v14, 0x7f0c01e3

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2312
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2313
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2340
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v15

    .line 2342
    new-instance v17, Lcom/ushaqi/zhuishushenqi/ui/post/cK;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cK;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2352
    new-instance v16, Lcom/ushaqi/zhuishushenqi/ui/post/cL;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cL;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2358
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cM;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cM;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2364
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cN;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cN;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2370
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cO;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cO;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2376
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cP;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cP;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2382
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cQ;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cQ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2388
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cR;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cR;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2394
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cS;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cS;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2400
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cT;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cT;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2406
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cV;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cV;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2412
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cW;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cW;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2418
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cX;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cX;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2424
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cY;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/ushaqi/zhuishushenqi/ui/post/cY;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v15

    .line 2234
    goto/16 :goto_1

    .line 2314
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2315
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2316
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2317
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2318
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0x3

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2319
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2320
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0x4

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2321
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2322
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0x5

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2323
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2324
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0x6

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 2325
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2326
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0x7

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 2327
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2328
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0x8

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 2329
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2330
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0x9

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 2331
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2332
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0xa

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 2333
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2334
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0xb

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 2335
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2336
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    sget-object v17, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    const/16 v18, 0xc

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2337
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x7f0b008c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 2235
    :cond_10
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_12

    .line 2447
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03007b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2448
    const v2, 0x7f0c01bc

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2449
    const v3, 0x7f0c01bd

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2450
    const v4, 0x7f0c01be

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2451
    const v5, 0x7f0c01da

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2453
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->u:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_11
    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 2468
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v6

    .line 2470
    new-instance v8, Lcom/ushaqi/zhuishushenqi/ui/post/cZ;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6}, Lcom/ushaqi/zhuishushenqi/ui/post/cZ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2480
    new-instance v7, Lcom/ushaqi/zhuishushenqi/ui/post/da;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6}, Lcom/ushaqi/zhuishushenqi/ui/post/da;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2489
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/db;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6}, Lcom/ushaqi/zhuishushenqi/ui/post/db;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2498
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dc;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6}, Lcom/ushaqi/zhuishushenqi/ui/post/dc;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2507
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dd;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6}, Lcom/ushaqi/zhuishushenqi/ui/post/dd;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v6

    .line 2236
    goto/16 :goto_1

    .line 2453
    :sswitch_0
    const-string v9, "updated"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v6, 0x0

    goto :goto_3

    :sswitch_1
    const-string v9, "created"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v6, 0x1

    goto :goto_3

    :sswitch_2
    const-string v9, "helpful"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v6, 0x2

    goto :goto_3

    :sswitch_3
    const-string v9, "comment-count"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v6, 0x3

    goto :goto_3

    .line 2455
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b008c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 2458
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b008c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 2461
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b008c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 2464
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b008c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 2238
    :cond_12
    const/4 v2, 0x0

    .line 46
    goto/16 :goto_1

    .line 2453
    :sswitch_data_0
    .sparse-switch
        -0xdf91f45 -> :sswitch_0
        0x3007ea9c -> :sswitch_2
        0x3d4e7ee8 -> :sswitch_1
        0x67dcd021 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/do;)Lcom/ushaqi/zhuishushenqi/ui/post/do;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/post/do;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/dp;)Lcom/ushaqi/zhuishushenqi/ui/post/dp;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dp;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V
    .locals 2

    .prologue
    .line 46
    .line 1660
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1661
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;I)V
    .locals 2

    .prologue
    .line 46
    .line 3437
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3438
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    .line 3439
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->l:Landroid/widget/TextView;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->r:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3440
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/do;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/post/do;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/dp;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dp;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->v:Z

    return v0
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/api/b;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->d:Lcom/ushaqi/zhuishushenqi/api/b;

    return-object v0
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/D;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->i:Lcom/ushaqi/zhuishushenqi/adapter/D;

    return-object v0
.end method

.method static synthetic u(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->w:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic v(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V
    .locals 2

    .prologue
    .line 46
    .line 3665
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3666
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->h:Landroid/widget/TextView;

    const-string v1, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u4e66\u8bc4\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method static synthetic w(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/api/b;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->d:Lcom/ushaqi/zhuishushenqi/api/b;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->setContentView(I)V

    .line 91
    const-string v0, "\u4e66\u8bc4\u533a"

    const v1, 0x7f02016a

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cJ;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cJ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V

    const-string v3, "\u5199\u4e66\u8bc4"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a(Ljava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/aa;Ljava/lang/String;)V

    .line 98
    if-eqz p1, :cond_1

    .line 99
    const-string v0, "savedReviewDur"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->s:Ljava/lang/String;

    .line 100
    const-string v0, "savedReviewType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    .line 101
    const-string v0, "savedReviewSort"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->u:Ljava/lang/String;

    .line 1147
    :goto_0
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->g:Landroid/view/View;

    .line 1148
    const v0, 0x7f0c00ec

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->h:Landroid/widget/TextView;

    .line 1149
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 1150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1152
    const v0, 0x7f0c00f1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1153
    const v0, 0x7f0c00f4

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1154
    const v0, 0x7f0c00f7

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1155
    const v0, 0x7f0c00f2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->k:Landroid/widget/TextView;

    .line 1156
    const v0, 0x7f0c00f5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->l:Landroid/widget/TextView;

    .line 1157
    const v0, 0x7f0c00f8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->m:Landroid/widget/TextView;

    .line 1158
    const v0, 0x7f0c00f3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->n:Landroid/widget/ImageView;

    .line 1159
    const v0, 0x7f0c00f6

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->o:Landroid/widget/ImageView;

    .line 1160
    const v0, 0x7f0c00f9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->p:Landroid/widget/ImageView;

    .line 1161
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cU;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cU;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/df;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/df;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1178
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dh;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dh;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1189
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->e:Landroid/widget/ListView;

    .line 1190
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->f:Landroid/view/View;

    .line 1191
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1196
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/di;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/di;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 1213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/dk;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dk;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/D;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/D;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->i:Lcom/ushaqi/zhuishushenqi/adapter/D;

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->i:Lcom/ushaqi/zhuishushenqi/adapter/D;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/dp;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dp;

    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dp;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->s:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->u:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->u(Landroid/content/Context;)V

    .line 120
    const-string v0, "BookReviewListActivity_Opened"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    return-void

    .line 103
    :cond_1
    const-string v0, "all"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->s:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q:[Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    .line 105
    const-string v0, "updated"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->u:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 141
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "savedReviewDur"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "savedReviewType"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "savedReviewSort"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method
