.class public Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/user/S;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/RelativeLayout;

.field private e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;",
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
    .line 48
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->f:Ljava/util/List;

    .line 190
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/Q;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/Q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/av;

    .line 199
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "token_key"

    .line 64
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "title_key"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;)V
    .locals 7

    .prologue
    .line 48
    .line 1390
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1397
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getBookName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1399
    sget-object v1, Lcom/ushaqi/zhuishushenqi/ui/user/R;->a:[I

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getPayType()Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 1412
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getUseCurrency()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u8ffd\u4e66\u5e01"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1413
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getUseVoucher()I

    move-result v1

    if-lez v1, :cond_1

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getUseVoucher()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u8ffd\u4e66\u5238, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1418
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getCreated()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/util/t;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getPayTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1420
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u8ba2\u5355\u53f7 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1421
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1392
    const-string v2, "simple text"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 1393
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 48
    return-void

    .line 1401
    :pswitch_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getTitles()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 1402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1401
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1407
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getChapterTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 1416
    :cond_1
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/ui/user/S;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->i()V

    .line 92
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/Z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;B)V

    .line 93
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->g:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f03015a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a(I)V

    .line 71
    const v0, 0x7f0c0110

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->c:Landroid/widget/RelativeLayout;

    .line 73
    const v0, 0x7f0c00f0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    const-string v1, "\u60a8\u8fd8\u6ca1\u6709\u6d88\u8d39\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02020d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 78
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40400000

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 79
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 81
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->b(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "token_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->g:Ljava/lang/String;

    .line 1097
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1098
    const v0, 0x7f03011d

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->b:Landroid/view/View;

    .line 1099
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->b:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    const v0, 0x7f0c045d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 1101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 1102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setDividerHeight(I)V

    .line 1103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/P;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/P;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1115
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/S;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/S;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    .line 1116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->b()V

    .line 87
    return-void
.end method
