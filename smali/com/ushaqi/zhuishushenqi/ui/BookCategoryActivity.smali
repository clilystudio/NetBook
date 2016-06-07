.class public Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 184
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 215
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(II[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;Z)V
    .locals 14

    .prologue
    .line 80
    const/4 v3, 0x0

    .line 82
    const/4 v2, 0x0

    .line 84
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    const/4 v4, -0x2

    invoke-direct {v6, v1, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 86
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v4, -0x2

    invoke-direct {v7, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    const v1, 0x7f010001

    invoke-static {p0, v1}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v8

    .line 89
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v4, v1, :cond_4

    .line 90
    aget-object v1, p3, v4

    .line 91
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;->getName()Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;->getBookCount()I

    move-result v10

    .line 93
    if-eqz p4, :cond_0

    .line 94
    const v1, 0x7f0c00e6

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    move-object v5, v1

    .line 99
    :goto_1
    rem-int/lit8 v1, v4, 0x3

    if-nez v1, :cond_5

    .line 100
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v5, v1, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    add-int/lit8 v2, v3, 0x1

    .line 106
    :goto_2
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    move/from16 v0, p2

    invoke-direct {v3, p1, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 107
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 108
    rem-int/lit8 v5, v4, 0x3

    const/4 v11, 0x1

    if-ne v5, v11, :cond_1

    .line 109
    const/4 v5, -0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {v3, v5, v11, v12, v13}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 120
    :goto_3
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    const/16 v11, 0x11

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 126
    new-instance v11, Lcom/ushaqi/zhuishushenqi/ui/aj;

    move/from16 v0, p4

    invoke-direct {v11, p0, v0, v9}, Lcom/ushaqi/zhuishushenqi/ui/aj;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;ZLjava/lang/String;)V

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/4 v9, 0x1

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    const v9, 0x7f0701b5

    invoke-virtual {v11, p0, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 140
    invoke-virtual {v5, v11, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \u672c"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 144
    const v10, 0x7f0701b6

    invoke-virtual {v9, p0, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 145
    invoke-virtual {v5, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual {v1, v5, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move-object v2, v1

    goto/16 :goto_0

    .line 96
    :cond_0
    const v1, 0x7f0c00e7

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    move-object v5, v1

    goto/16 :goto_1

    .line 111
    :cond_1
    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v5, v11, v12, v13}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 114
    :cond_2
    rem-int/lit8 v5, v4, 0x3

    const/4 v11, 0x1

    if-ne v5, v11, :cond_3

    .line 115
    const/4 v5, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {v3, v5, v11, v12, v13}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 117
    :cond_3
    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v5, v11, v12, v13}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 149
    :cond_4
    return-void

    :cond_5
    move-object v1, v2

    move v2, v3

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;)V
    .locals 2

    .prologue
    .line 30
    .line 1211
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->f:Ljava/lang/String;

    const-string v1, "category_level.txt"

    invoke-static {p1, v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;)V
    .locals 5

    .prologue
    .line 30
    .line 1063
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;->getMale()[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;

    move-result-object v0

    .line 1064
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;->getFemale()[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;

    move-result-object v1

    .line 1065
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1069
    div-int/lit8 v2, v2, 0x3

    .line 1070
    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {p0, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    .line 1071
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->a(II[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;Z)V

    .line 1072
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->a(II[Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;Z)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->a(I)V

    .line 153
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/al;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/al;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;B)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/al;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ak;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/ak;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;B)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ak;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f0500df

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->b(I)V

    .line 46
    const v0, 0x7f0c00d6

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->c:Landroid/view/View;

    .line 47
    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->a:Landroid/view/View;

    .line 48
    const v0, 0x7f0c00da

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->b:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ai;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ai;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->b()V

    .line 57
    return-void
.end method
