.class public Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/user/M;

.field private b:Landroid/view/View;

.field private c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lcom/ushaqi/zhuishushenqi/widget/av;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->e:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->f:Ljava/util/List;

    .line 185
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/L;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/L;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/av;

    .line 195
    return-void
.end method

.method private varargs a(ILjava/lang/String;[Ljava/util/Date;)I
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 124
    const p1, 0x7fffffff

    .line 141
    :cond_0
    return p1

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ushaqi/zhuishushenqi/util/t;->a(Ljava/util/Date;[Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;-><init>()V

    .line 129
    const-string v1, "time_flag"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->setPayType(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->setTimeflag(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->f:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 132
    add-int/lit8 p1, p1, 0x1

    .line 134
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ushaqi/zhuishushenqi/util/t;->a(Ljava/util/Date;[Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "token_key"

    .line 58
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "title_key"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 40
    .line 1109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1114
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1115
    const-string v1, "\u4e00\u5468\u5185"

    new-array v2, v12, [Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x1ee62800

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    aput-object v3, v2, v10

    aput-object v0, v2, v11

    invoke-direct {p0, v10, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->a(ILjava/lang/String;[Ljava/util/Date;)I

    move-result v1

    .line 1116
    const-string v2, "\u4e00\u5468\u524d"

    new-array v3, v12, [Ljava/util/Date;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide v8, 0x95586c00L

    sub-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v3, v10

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    sub-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v3, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->a(ILjava/lang/String;[Ljava/util/Date;)I

    move-result v1

    .line 1117
    const-string v2, "\u4e00\u6708\u524d"

    new-array v3, v12, [Ljava/util/Date;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide v8, 0x399d25400L

    sub-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v3, v10

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide v8, 0x9a7ec800L

    sub-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v3, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->a(ILjava/lang/String;[Ljava/util/Date;)I

    move-result v1

    .line 1118
    const-string v2, "\u534a\u5e74\u524d"

    new-array v3, v12, [Ljava/util/Date;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide v8, 0x7528ad000L

    sub-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v3, v10

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide v8, 0x39ef8b000L

    sub-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v3, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->a(ILjava/lang/String;[Ljava/util/Date;)I

    move-result v1

    .line 1119
    const-string v2, "\u4e00\u5e74\u524d"

    new-array v3, v12, [Ljava/util/Date;

    new-instance v4, Ljava/util/Date;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v3, v10

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    sub-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v3, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->a(ILjava/lang/String;[Ljava/util/Date;)I

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)Lcom/ushaqi/zhuishushenqi/ui/user/M;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/user/M;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->i()V

    .line 85
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/O;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/O;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;B)V

    .line 86
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->g:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/O;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f03015a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->a(I)V

    .line 66
    const v0, 0x7f0c00f0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    const-string v1, "\u60a8\u8fd8\u6ca1\u6709\u5145\u503c\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02020d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 71
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40400000

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 72
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 74
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->b(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "token_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->g:Ljava/lang/String;

    .line 1090
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1091
    const v1, 0x7f03011d

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->b:Landroid/view/View;

    .line 1092
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    const v0, 0x7f0c045d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 1094
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 1095
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setDividerHeight(I)V

    .line 1096
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/K;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/K;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1104
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/M;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->e:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/M;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/user/M;

    .line 1105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/user/M;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->b()V

    .line 80
    return-void
.end method
