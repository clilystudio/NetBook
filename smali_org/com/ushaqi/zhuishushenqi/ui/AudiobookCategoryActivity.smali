.class public Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;

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

    .line 220
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;Lcom/ximalaya/ting/android/opensdk/model/tag/TagList;)V
    .locals 15

    .prologue
    .line 41
    .line 2141
    invoke-virtual/range {p1 .. p1}, Lcom/ximalaya/ting/android/opensdk/model/tag/TagList;->getTagList()Ljava/util/List;

    move-result-object v5

    .line 2142
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2145
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2146
    div-int/lit8 v6, v0, 0x3

    .line 2147
    const/high16 v0, 0x42600000

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v7

    .line 2153
    const/4 v4, 0x0

    .line 2154
    const v0, 0x7f0c00d7

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 2155
    const/4 v3, 0x0

    .line 2156
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v8, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 2159
    const v1, 0x7f010001

    invoke-static {p0, v1}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v9

    .line 2161
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 2162
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/model/tag/Tag;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/tag/Tag;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 2163
    const-string v10, "QQ\u9605\u8bfb"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "\u901f\u64ad\u4e13\u533a"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "\u63a8\u7406\u4e16\u754c"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2164
    :cond_0
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2165
    add-int/lit8 v2, v2, -0x1

    .line 2161
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2169
    :cond_2
    const/4 v1, 0x0

    move-object v2, v3

    move v3, v4

    move v4, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_7

    .line 2170
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/model/tag/Tag;

    .line 2173
    rem-int/lit8 v10, v4, 0x3

    if-nez v10, :cond_3

    .line 2174
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 2175
    invoke-virtual {v0, v2, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2176
    add-int/lit8 v3, v3, 0x1

    .line 2181
    :cond_3
    new-instance v10, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v10, v6, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 2182
    const/4 v11, 0x1

    if-ne v3, v11, :cond_5

    .line 2183
    rem-int/lit8 v11, v4, 0x3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 2184
    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 2197
    :goto_2
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2198
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/tag/Tag;->getTagName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2199
    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 2200
    const v12, 0x7f0701b5

    invoke-virtual {v11, p0, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2202
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2204
    new-instance v12, Lcom/ushaqi/zhuishushenqi/ui/v;

    invoke-direct {v12, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/v;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;Lcom/ximalaya/ting/android/opensdk/model/tag/Tag;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2212
    invoke-virtual {v2, v11, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2169
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 2186
    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 2189
    :cond_5
    rem-int/lit8 v11, v4, 0x3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2190
    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 2192
    :cond_6
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 41
    :cond_7
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->a(I)V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    const-string v1, "category_id"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "type"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/u;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/u;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;)V

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getTags(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 138
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;)V
    .locals 3

    .prologue
    .line 41
    .line 1102
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 1103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(Z)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u662f\u5426\u6253\u5f00\u559c\u9a6c\u62c9\u96c5FM\u4e0b\u8f7d\u9875"

    .line 2046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 1103
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/t;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/t;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;)V

    .line 1104
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/s;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/s;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;)V

    .line 1109
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 1118
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 41
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f0b00d7

    const/16 v7, 0xb

    const/4 v6, 0x5

    const/16 v5, 0x21

    .line 55
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->b(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->a()Lcom/ushaqi/zhuishushenqi/util/as;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->b()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->a:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    .line 61
    const v0, 0x7f0c00d6

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->e:Landroid/view/View;

    .line 62
    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->b:Landroid/view/View;

    .line 63
    const v0, 0x7f0c00da

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->c:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/q;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->b()V

    .line 1078
    const v0, 0x7f0c00db

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1079
    const v1, 0x7f010002

    invoke-static {p0, v1}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1081
    const v0, 0x7f0c00dc

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1082
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1084
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1086
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v6, v7, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1088
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v7, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1091
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/r;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/r;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
